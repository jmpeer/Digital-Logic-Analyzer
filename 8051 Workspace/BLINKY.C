//Blinky.c wmh 2015-02-18 : generates 'Cylon' scan on port P1. Set delaycount (below) =3 for Xilinx simulation, =10,000 to run on FPGA
//	- program outputs on port P1 and use registers R5 (=j) and R6:R7 (=i) (see BLINKY.LST)
//  - conversion of .hex to .memh format for initializing ROM definition in LUT_ROM3Kx8v01.v is performed by hex2readmemh.exe
//    (see entry in Project > Options for Target > User) 
//	- todo -- update some registers in an .asm
// > Project > Options changes:
// 		Target : Oregano Systems 8051 core
//		checked 'Use Onchip ROM (0x0-0xFFF)'   

/* BLINKY.C - LED Flasher for the Keil MCBx51 Evaluation Board with 80C51 device*/
                  
#include <REG51F.H>

// When you have enabled the option Stop Program Execution with Serial
// Interrupt, the Monitor-51 uses the serial interrupt of the UART.
// It is therefore required to reserve the memory locations for the interrupt
// vector.  You can do this by adding one of the following code lines:

// char code reserve [3] _at_ 0x23;   // when using on-chip UART for communication
// char code reserve [3] _at_  0x3;   // when using off-chip UART for communication

#define DELAYCOUNT	100				//for hardware this was 10000; for simulation make it 3

	char pre_post_trigger='0'; // pre='0';post='1'
	char hi_mask[8]={0};
	char low_mask[8]={0};
	char pos_edg_mask[8]={0};
	char neg_edg_mask[8]={0};
	char dont_care_mask[8]={0};
	int idle;

	
void wait (void)  {                   /* wait function */
  ;                                   /* only to delay for LED flashes */
}


void serial_init(){
      TMOD |=0x20; //Timer1 in Mode2.
      TH1=-3;    // 9600 Baud rate at 11.0592MHz
      SCON=0x50; // Asynchronous mode 8-bit data and 1-stop bit
      TR1=1;     //Turn ON the timer.
}
void serial_send(unsigned char dat){
        while(!TI);
        TI = 0;
        SBUF = dat;
}
unsigned char serial_read(){
  unsigned char dat;      
	while(!RI);
        RI = 0;
				dat = SBUF;
			serial_send(dat);
        return dat;
}
void print_string(char* s){
	int i=0;
	while(s[i]!=0){
		serial_send(s[i]);
		i++;
	}
}


void print_int(int num){
	int number[3];//num[0] is low, num[2] is high 
	int i;
	int start =2;
for (i=0;i<3; i++){
		number[i]=num%16;
		num=num/16;
	}
	
	if (number[2]==0)
			start = 1;
	
	for (i=start;i>=0; i--){
		if (number[i]<10)
			serial_send('0'+number[i]);
		else
			serial_send('A'+number[i]-10);
	}
}


void read_mask(char * mask_name, char* mask_pointer){
	int i,j;
	char val;
	int byte_value=0;
	print_string("Enter 64 bit for ");
	print_string (mask_name);
	print_string(" Mask 'Z': byte of zero, 'X': byte of one, '0' bit of zero, '1'bit of zero \r\n");

	for (i=63;i>=0;){
		val = serial_read();
		switch (val){
			case 'z': ; case 'Z': 
				for (j=0;j<8 && i>=0;j++){
					mask_pointer[i/8]&= ~(1<<i%8);
					i--;
				}
				break;
			case 'x': ; case 'X':
				for (j=0;j<8 && i>=0;j++){
					mask_pointer[i/8]|= 1<<i%8;
					i--;
				}
				break;
			case '1':
					mask_pointer[i/8]|= 1<<i%8;
					i--;
				break;
			case '0':	
				mask_pointer[i/8] &= ~(1<<i%8);
				i--;
				break;
			case 27 : goto end;
				default : break;
		}
		
	}
		end: print_string("finished reading mask \n\r");
}

void write_mask(char* mask_pointer, int mask_idx){
	int byte;
	char * mm= (char *) 126;
	P0= mask_idx;
	for (byte=0; byte<8; byte++){
		P1=byte;
		P2= mask_pointer[byte];
		*mm = 0; //data is not imprtant 
	}
		print_string("finished writing mask \n\r");
}
void unidle_dla(){
	char * unidle;
	//if (idle){
		unidle = (char* )122;
		*unidle = 1;// value dosnt matter any value writing to 124 sends stop
		//idle=0;
	//}
}
void idle_dla (){
	//if(!idle){
		char * idle= (char* )123;
		*idle = 1;// value dosnt matter any value writing to 124 sends stop
		//idle=1;
	//}
}
void restart_dla(){
			// send restart sigal
			char * restart= (char* )124;
			*restart = 1;// value dosnt matter any value writing to 124 sends stop
}

void set_post_pre_trig(char c){
	char* trig= (char*) 127;
	if (c == '0'){// zero is pre
	P0= 0;
	}else{ // else is post
	P0= 1;
	}
	*trig = 1;  // value dose not matter;
}
void config_trig(){
	idle_dla();
	print_string("\n\rconfigure DLA Trigger: \n\r");
	print_string("For pre-triger enter 0 and for post enter 1\n\r");
	pre_post_trigger=serial_read();
	set_post_pre_trig(pre_post_trigger);
	
}

void config_mask(){
	idle_dla();
	print_string("\n\rconfigure DLA Masks: \n\r");

	read_mask( "HI", hi_mask);
	read_mask( "Low", low_mask);
	read_mask( "Pos Edge", pos_edg_mask);
	read_mask( "Neg Edge", neg_edg_mask);
	read_mask( "Dont Care", dont_care_mask);

	write_mask(hi_mask,4);
	write_mask(low_mask,3);
	write_mask(pos_edg_mask,1);
	write_mask(neg_edg_mask,2);
	write_mask(dont_care_mask,0);
}

void main (void)  {
	int i,j,k, count=0;
	unsigned char c2;
	//serial_init();
	serial_init();
			TI=1;

	idle_dla ();
	
	while (1){
		
		if (P3){
			count=0;
			print_string("Data Captured \n\r");
			print_string ("addresed stoped at :");
			print_int(P1);
			print_int(P0);
			print_string(" \r\n");
			//print caputeted data
			
			for (i=0; i<4 ;i++){
				P1=i;
				for (j=0; j<255 ;j++){
					P0=j;
					print_string("address: 0x");
					print_int(i);
					print_int(j);
					print_string(": ");
					for (k=7;k>=0;k--){
						P2=k;
						print_int(P2);
					}
					print_string(" \n\r");
				}
			}
/*			P1=3;
			P0=255;
			print_string("last value stored 0x");
			for (k=7;k>=0;k--){
				P2=k;
				print_int(P2);
			}
						print_string(" \r\n");
		*/
			idle_dla();

		}
		if(RI){
			c2 = serial_read();
		}else{
			c2=0;
		}
		switch (c2){
			case 'm':case'M' : config_mask(); break;
			case 't':case 'T': config_trig(); break;

			case 's':case 'S':
				unidle_dla();
				restart_dla();
				break;
		}
		
	}	
}

