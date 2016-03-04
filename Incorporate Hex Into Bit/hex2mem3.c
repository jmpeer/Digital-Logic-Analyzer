//hex2mem2.c wmh 05/30/04 convert intel .hex ASCII format to xilinx .mem format for use by xilinx data2mem FPGA bit editing utility
/////////////////////////////////////////////////////////////////////
// based on 
//                    HEX-BIN  v1.0
//					  by
//					  Neil Hancock
//					  Deakin University Computer Services
//					  Geelong
//					  Vic 3220
//					  Australia
//////////////////////////////////////////////////////////////////////
//  hex2mem2.c : gets input file name from command line (assumes .hex extension), outputs .mem file with same prefix
//	hex2mem1.c : queries user for names of input and output files
// todo: put the address-to-numeric conversion from the original program back in so we can bounds check the address
// 		 against that which is allowed in the xilinx RAMB4
//


#include <stdio.h>
#include <string.h>

int aton(unsigned char);
int main(int argc, char *argv[])
{
FILE *infile,*otfile;
 unsigned char fnami[14],fnamo[14],ch,ch1,ch2,a1,a2,a3,a4;	//limits us to short filenames
 int count=0,u,t;											//count keeps track of number of bytes written, 
															//u is value of the current line's address field
															//t is byte count of current line
 int i;														//loop counter

//puts("what filename to convert?");
//scanf("%s",fnami);
 strcpy(fnami,argv[1]);	 //get the filename prefix
 strcat(fnami,".hex");	 // and hope the extension is '.hex'

//puts("Convert to what filename?");
//scanf("%s",fnamo);
 strcpy(fnamo,argv[1]);	 //get the filename prefix
 strcat(fnamo,".mem");	 // and hope the extension is '.hex'


 if((infile=fopen(fnami,"rb"))==NULL)
	{
	printf("fopen input file failed.\n");
	exit(0);
	}

 otfile=fopen(fnamo,"wb");
 
 //write identifier comment into .mem file
 fprintf(otfile,"// .mem file generated by hex2mem v2 wmh 05/31/04 \n");
 while(1)
    {
	//strip away everything up to and including the ':'
	while(fgetc(infile)!=':');			 							 

	//get t= byte count field from an input line
    if((t=16*aton(fgetc(infile))+aton(fgetc(infile)))==0) //quit program when byte count is 0
	{
            fclose(infile);
            fclose(otfile);
            exit(0);
	}

	//construct address field for new line of mem file
	fputc(0x40,otfile);		  	  	  	   	  	  	  //write '@' delim to mem file
	for(i=0; i<4; i++) fputc( fgetc(infile), otfile); //copy addressfield from hex file to mem file
	fputc(0x20, otfile);	  				 		  //write <space> to otfile
		
	//throw away the '00' delimiter field
	fgetc(infile);																						 
	fgetc(infile);																						

	//copy each data byte from the current line to the output (and skip the checksum)
	while(t>0)			
	{
            fputc(fgetc(infile),otfile);   //copy 1st character of byte
			fputc(fgetc(infile),otfile);   //     2nd
	    	t--;
	    	count++;
	}
	
	//send newline character
	fputc(0x0A, otfile);	
 }//go up for next line of input

}


 int aton(ch) //convert hex character to numeric
 unsigned char ch;
 {
 int n;
 if(ch<0x3A)n=ch-0x30;
 else n=ch-0x37;
 return n;
 }