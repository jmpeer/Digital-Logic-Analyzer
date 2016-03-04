<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="resetin" />
        <signal name="clk10mHz" />
        <signal name="ram_datain(7:0)" />
        <signal name="ram_addr(6:0)" />
        <signal name="ram_dataout(7:0)" />
        <signal name="ROMdata(7:0)" />
        <signal name="ROMaddr(15:0)" />
        <signal name="ROMaddr(11:0)" />
        <signal name="clkin" />
        <signal name="XLXN_17" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20(7:0)" />
        <signal name="Idle_out" />
        <signal name="XLXN_24" />
        <signal name="XLXN_26" />
        <signal name="XLXN_29(63:0)" />
        <signal name="XLXN_30(63:0)" />
        <signal name="XLXN_31(63:0)" />
        <signal name="XLXN_32(63:0)" />
        <signal name="XLXN_33(63:0)" />
        <signal name="XLXN_37(63:0)" />
        <signal name="XLXN_39" />
        <signal name="XLXN_45(7:0)" />
        <signal name="XLXN_46(7:0)" />
        <signal name="XLXN_47(7:0)" />
        <signal name="XLXN_48(7:0)" />
        <signal name="XLXN_49(7:0)" />
        <signal name="XLXN_53(63:0)" />
        <signal name="P3_out(7:0)" />
        <signal name="TXDout(0:0)" />
        <signal name="RXDin(0:0)" />
        <signal name="XLXN_71" />
        <signal name="XLXN_73(7:0)" />
        <signal name="XLXN_76" />
        <signal name="XLXN_77" />
        <signal name="XLXN_83" />
        <signal name="XLXN_84(7:0)" />
        <signal name="XLXN_85(7:0)" />
        <signal name="XLXN_86" />
        <port polarity="Input" name="resetin" />
        <port polarity="Input" name="clkin" />
        <port polarity="Output" name="Idle_out" />
        <port polarity="Output" name="P3_out(7:0)" />
        <port polarity="Output" name="TXDout(0:0)" />
        <port polarity="Input" name="RXDin(0:0)" />
        <blockdef name="mc8051_core">
            <timestamp>2012-11-20T3:26:55</timestamp>
            <rect width="352" x="64" y="-960" height="960" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <rect width="64" x="0" y="-812" height="24" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <rect width="64" x="0" y="-748" height="24" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <rect width="64" x="0" y="-684" height="24" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="480" y1="-928" y2="-928" x1="416" />
            <line x2="480" y1="-864" y2="-864" x1="416" />
            <line x2="480" y1="-800" y2="-800" x1="416" />
            <rect width="64" x="416" y="-748" height="24" />
            <line x2="480" y1="-736" y2="-736" x1="416" />
            <rect width="64" x="416" y="-684" height="24" />
            <line x2="480" y1="-672" y2="-672" x1="416" />
            <rect width="64" x="416" y="-620" height="24" />
            <line x2="480" y1="-608" y2="-608" x1="416" />
            <rect width="64" x="416" y="-556" height="24" />
            <line x2="480" y1="-544" y2="-544" x1="416" />
            <rect width="64" x="416" y="-492" height="24" />
            <line x2="480" y1="-480" y2="-480" x1="416" />
            <rect width="64" x="416" y="-428" height="24" />
            <line x2="480" y1="-416" y2="-416" x1="416" />
            <rect width="64" x="416" y="-364" height="24" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
            <rect width="64" x="416" y="-300" height="24" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <rect width="64" x="416" y="-236" height="24" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <rect width="64" x="416" y="-172" height="24" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <rect width="64" x="416" y="-108" height="24" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="LUT_RAM_from_template">
            <timestamp>2012-11-24T16:49:54</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="BRAM4kx8">
            <timestamp>2012-11-28T16:14:36</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="wiz_clkgen">
            <timestamp>2014-10-19T15:28:44</timestamp>
            <rect width="336" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="MMIOC">
            <timestamp>2015-5-6T16:31:5</timestamp>
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-208" y2="-208" x1="64" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-320" height="448" />
        </blockdef>
        <blockdef name="ConfigRegister">
            <timestamp>2015-4-23T18:0:0</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="StateMachine">
            <timestamp>2015-5-6T16:34:25</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-320" height="384" />
        </blockdef>
        <blockdef name="Trigger">
            <timestamp>2015-4-23T17:58:18</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
        </blockdef>
        <blockdef name="Mask">
            <timestamp>2015-4-30T18:38:11</timestamp>
            <rect width="320" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-300" height="24" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <rect width="64" x="384" y="-236" height="24" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <rect width="64" x="384" y="-108" height="24" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="PrevRegsiter">
            <timestamp>2015-4-23T18:0:49</timestamp>
            <rect width="304" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
        </blockdef>
        <blockdef name="AutoIncrementRegister">
            <timestamp>2015-5-7T14:10:56</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-256" height="320" />
        </blockdef>
        <blockdef name="CaptureAddress">
            <timestamp>2015-4-23T18:26:15</timestamp>
            <rect width="288" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-300" height="24" />
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <blockdef name="Capture">
            <timestamp>2015-5-7T19:11:27</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
        </blockdef>
        <blockdef name="SampleInput">
            <timestamp>2015-5-7T19:1:46</timestamp>
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="256" x="64" y="-128" height="256" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="mc8051_core" name="XLXI_1">
            <blockpin signalname="clk10mHz" name="clk" />
            <blockpin signalname="resetin" name="reset" />
            <blockpin signalname="ROMdata(7:0)" name="rom_data_i(7:0)" />
            <blockpin signalname="ram_dataout(7:0)" name="ram_data_i(7:0)" />
            <blockpin name="int0_i(0:0)" />
            <blockpin name="int1_i(0:0)" />
            <blockpin name="all_t0_i(0:0)" />
            <blockpin name="all_t1_i(0:0)" />
            <blockpin signalname="RXDin(0:0)" name="all_rxd_i(0:0)" />
            <blockpin signalname="XLXN_84(7:0)" name="p0_i(7:0)" />
            <blockpin signalname="XLXN_85(7:0)" name="p1_i(7:0)" />
            <blockpin signalname="XLXN_46(7:0)" name="p2_i(7:0)" />
            <blockpin signalname="P3_out(7:0)" name="p3_i(7:0)" />
            <blockpin name="datax_i(7:0)" />
            <blockpin signalname="XLXN_9" name="ram_wr_o" />
            <blockpin signalname="XLXN_10" name="ram_en_o" />
            <blockpin name="wrx_o" />
            <blockpin signalname="XLXN_20(7:0)" name="p0_o(7:0)" />
            <blockpin signalname="XLXN_73(7:0)" name="p1_o(7:0)" />
            <blockpin signalname="XLXN_49(7:0)" name="p2_o(7:0)" />
            <blockpin name="p3_o(7:0)" />
            <blockpin name="all_rxd_o(0:0)" />
            <blockpin signalname="TXDout(0:0)" name="all_txd_o(0:0)" />
            <blockpin name="all_rxdwr_o(0:0)" />
            <blockpin signalname="ROMaddr(15:0)" name="rom_adr_o(15:0)" />
            <blockpin signalname="ram_datain(7:0)" name="ram_data_o(7:0)" />
            <blockpin signalname="ram_addr(6:0)" name="ram_adr_o(6:0)" />
            <blockpin name="datax_o(7:0)" />
            <blockpin name="adrx_o(15:0)" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="XLXN_10" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="LUT_RAM_from_template" name="XLXI_8">
            <blockpin signalname="XLXN_17" name="WE" />
            <blockpin signalname="clk10mHz" name="CLK" />
            <blockpin signalname="ram_datain(7:0)" name="DIN(7:0)" />
            <blockpin signalname="ram_addr(6:0)" name="ADDR(6:0)" />
            <blockpin signalname="ram_dataout(7:0)" name="DOUT(7:0)" />
        </block>
        <block symbolname="BRAM4kx8" name="XLXI_11">
            <blockpin signalname="clk10mHz" name="clkin" />
            <blockpin signalname="ROMaddr(11:0)" name="Addr(11:0)" />
            <blockpin signalname="ROMdata(7:0)" name="Dout(7:0)" />
        </block>
        <block symbolname="wiz_clkgen" name="XLXI_12">
            <blockpin signalname="clkin" name="CLKIN_IN" />
            <blockpin signalname="resetin" name="RST_IN" />
            <blockpin signalname="clk10mHz" name="CLKDV_OUT" />
            <blockpin name="CLKIN_IBUFG_OUT" />
            <blockpin name="CLK0_OUT" />
            <blockpin name="LOCKED_OUT" />
        </block>
        <block symbolname="MMIOC" name="XLXI_13">
            <blockpin signalname="clk10mHz" name="in_clk" />
            <blockpin signalname="XLXN_17" name="in_we" />
            <blockpin signalname="ram_addr(6:0)" name="in_addr(6:0)" />
            <blockpin signalname="XLXN_19" name="out_we_cr" />
            <blockpin signalname="XLXN_26" name="out_we_mm" />
            <blockpin name="out_we_ca" />
            <blockpin signalname="XLXN_77" name="out_reset" />
            <blockpin signalname="Idle_out" name="out_idle" />
            <blockpin signalname="XLXN_71" name="out_unidle" />
        </block>
        <block symbolname="ConfigRegister" name="XLXI_14">
            <blockpin signalname="clk10mHz" name="in_clk" />
            <blockpin signalname="XLXN_19" name="in_we" />
            <blockpin signalname="XLXN_20(7:0)" name="in_P0(7:0)" />
            <blockpin signalname="XLXN_24" name="out_bit_0" />
        </block>
        <block symbolname="StateMachine" name="XLXI_15">
            <blockpin signalname="clk10mHz" name="in_clk" />
            <blockpin signalname="Idle_out" name="in_idle" />
            <blockpin signalname="XLXN_77" name="in_reset" />
            <blockpin signalname="XLXN_39" name="in_trig" />
            <blockpin signalname="XLXN_24" name="in_prePost" />
            <blockpin signalname="XLXN_76" name="out_ce" />
            <blockpin signalname="P3_out(7:0)" name="out_P3(7:0)" />
            <blockpin signalname="XLXN_71" name="in_unidle" />
        </block>
        <block symbolname="Mask" name="XLXI_17">
            <blockpin signalname="clk10mHz" name="in_clk" />
            <blockpin signalname="XLXN_26" name="in_we" />
            <blockpin signalname="XLXN_20(7:0)" name="in_P0(7:0)" />
            <blockpin signalname="XLXN_73(7:0)" name="in_P1(7:0)" />
            <blockpin signalname="XLXN_49(7:0)" name="in_P2(7:0)" />
            <blockpin signalname="XLXN_29(63:0)" name="out_mask_0(63:0)" />
            <blockpin signalname="XLXN_30(63:0)" name="out_mask_1(63:0)" />
            <blockpin signalname="XLXN_31(63:0)" name="out_mask_2(63:0)" />
            <blockpin signalname="XLXN_32(63:0)" name="out_mask_3(63:0)" />
            <blockpin signalname="XLXN_33(63:0)" name="out_mask_4(63:0)" />
        </block>
        <block symbolname="Trigger" name="XLXI_18">
            <blockpin signalname="clk10mHz" name="in_clk" />
            <blockpin signalname="XLXN_29(63:0)" name="in_mask_0(63:0)" />
            <blockpin signalname="XLXN_30(63:0)" name="in_mask_1(63:0)" />
            <blockpin signalname="XLXN_31(63:0)" name="in_mask_2(63:0)" />
            <blockpin signalname="XLXN_32(63:0)" name="in_mask_3(63:0)" />
            <blockpin signalname="XLXN_33(63:0)" name="in_mask_4(63:0)" />
            <blockpin signalname="XLXN_37(63:0)" name="in_prev(63:0)" />
            <blockpin signalname="XLXN_53(63:0)" name="in_data(63:0)" />
            <blockpin signalname="XLXN_39" name="out_trig" />
        </block>
        <block symbolname="PrevRegsiter" name="XLXI_19">
            <blockpin signalname="clk10mHz" name="in_clk" />
            <blockpin signalname="XLXN_53(63:0)" name="in_data(63:0)" />
            <blockpin signalname="XLXN_37(63:0)" name="out_data(63:0)" />
        </block>
        <block symbolname="CaptureAddress" name="XLXI_21">
            <blockpin signalname="XLXN_76" name="in_ce" />
            <blockpin signalname="XLXN_20(7:0)" name="in_P0_we(7:0)" />
            <blockpin signalname="XLXN_73(7:0)" name="in_P1_we(7:0)" />
            <blockpin signalname="XLXN_84(7:0)" name="in_P0_ce(7:0)" />
            <blockpin signalname="XLXN_85(7:0)" name="in_P1_ce(7:0)" />
            <blockpin signalname="XLXN_47(7:0)" name="out_P0(7:0)" />
            <blockpin signalname="XLXN_48(7:0)" name="out_P1(7:0)" />
        </block>
        <block symbolname="Capture" name="XLXI_22">
            <blockpin signalname="clk10mHz" name="in_clk" />
            <blockpin signalname="XLXN_76" name="in_ce" />
            <blockpin signalname="XLXN_47(7:0)" name="in_P0(7:0)" />
            <blockpin signalname="XLXN_48(7:0)" name="in_P1(7:0)" />
            <blockpin signalname="XLXN_49(7:0)" name="in_P2(7:0)" />
            <blockpin signalname="XLXN_53(63:0)" name="in_data(63:0)" />
            <blockpin signalname="XLXN_46(7:0)" name="out_P0(7:0)" />
        </block>
        <block symbolname="SampleInput" name="XLXI_23">
            <blockpin signalname="clk10mHz" name="in_clk" />
            <blockpin signalname="XLXN_53(63:0)" name="data(63:0)" />
        </block>
        <block symbolname="AutoIncrementRegister" name="XLXI_20">
            <blockpin signalname="clk10mHz" name="in_clk" />
            <blockpin signalname="XLXN_76" name="in_ce" />
            <blockpin name="in_P0(7:0)" />
            <blockpin name="in_P1(7:0)" />
            <blockpin signalname="XLXN_84(7:0)" name="out_P0(7:0)" />
            <blockpin signalname="XLXN_85(7:0)" name="out_P1(7:0)" />
            <blockpin signalname="XLXN_83" name="in_reset" />
        </block>
        <block symbolname="or2" name="XLXI_24">
            <blockpin signalname="XLXN_77" name="I0" />
            <blockpin signalname="Idle_out" name="I1" />
            <blockpin signalname="XLXN_83" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="1184" y="1696" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1728" y="896" name="XLXI_5" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="1728" y1="768" y2="768" x1="1664" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1728" y1="832" y2="832" x1="1664" />
        </branch>
        <instance x="2704" y="1024" name="XLXI_8" orien="R0">
        </instance>
        <branch name="ram_datain(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="1472" type="branch" />
            <wire x2="1888" y1="1472" y2="1472" x1="1664" />
            <wire x2="2608" y1="1472" y2="1472" x1="1888" />
            <wire x2="2704" y1="928" y2="928" x1="2608" />
            <wire x2="2608" y1="928" y2="1472" x1="2608" />
        </branch>
        <branch name="ram_dataout(7:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3152" y="704" type="branch" />
            <wire x2="3152" y1="560" y2="560" x1="944" />
            <wire x2="3152" y1="560" y2="704" x1="3152" />
            <wire x2="3152" y1="704" y2="800" x1="3152" />
            <wire x2="944" y1="560" y2="960" x1="944" />
            <wire x2="1184" y1="960" y2="960" x1="944" />
            <wire x2="3152" y1="800" y2="800" x1="3088" />
        </branch>
        <branch name="resetin">
            <wire x2="336" y1="688" y2="688" x1="240" />
            <wire x2="1072" y1="688" y2="688" x1="336" />
            <wire x2="1072" y1="688" y2="832" x1="1072" />
            <wire x2="1184" y1="832" y2="832" x1="1072" />
            <wire x2="448" y1="464" y2="464" x1="336" />
            <wire x2="336" y1="464" y2="688" x1="336" />
        </branch>
        <iomarker fontsize="28" x="240" y="688" name="resetin" orien="R180" />
        <branch name="ROMaddr(15:0)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="1376" type="branch" />
            <wire x2="1744" y1="1408" y2="1408" x1="1664" />
            <wire x2="1744" y1="1376" y2="1408" x1="1744" />
        </branch>
        <bustap x2="1840" y1="1408" y2="1408" x1="1744" />
        <branch name="ROMaddr(11:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="1408" type="branch" />
            <wire x2="1872" y1="1408" y2="1408" x1="1840" />
            <wire x2="2080" y1="1408" y2="1408" x1="1872" />
        </branch>
        <instance x="2080" y="1440" name="XLXI_11" orien="R0">
        </instance>
        <instance x="448" y="496" name="XLXI_12" orien="R0">
        </instance>
        <branch name="clkin">
            <wire x2="448" y1="272" y2="272" x1="336" />
        </branch>
        <iomarker fontsize="28" x="336" y="272" name="clkin" orien="R180" />
        <branch name="ROMdata(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="1344" type="branch" />
            <wire x2="1184" y1="896" y2="896" x1="416" />
            <wire x2="416" y1="896" y2="1776" x1="416" />
            <wire x2="2528" y1="1776" y2="1776" x1="416" />
            <wire x2="2496" y1="1344" y2="1344" x1="2464" />
            <wire x2="2528" y1="1344" y2="1344" x1="2496" />
            <wire x2="2528" y1="1344" y2="1776" x1="2528" />
        </branch>
        <instance x="2848" y="1584" name="XLXI_14" orien="R0">
        </instance>
        <branch name="XLXN_19">
            <wire x2="2832" y1="1328" y2="1488" x1="2832" />
            <wire x2="2848" y1="1488" y2="1488" x1="2832" />
            <wire x2="3264" y1="1328" y2="1328" x1="2832" />
            <wire x2="3264" y1="1328" y2="1776" x1="3264" />
            <wire x2="3264" y1="1776" y2="1776" x1="3152" />
        </branch>
        <instance x="3536" y="1360" name="XLXI_15" orien="R0">
        </instance>
        <branch name="Idle_out">
            <wire x2="3248" y1="2096" y2="2096" x1="3152" />
            <wire x2="3360" y1="2096" y2="2096" x1="3248" />
            <wire x2="3248" y1="2096" y2="2288" x1="3248" />
            <wire x2="3792" y1="768" y2="768" x1="3360" />
            <wire x2="3360" y1="768" y2="1136" x1="3360" />
            <wire x2="3360" y1="1136" y2="2096" x1="3360" />
            <wire x2="3536" y1="1136" y2="1136" x1="3360" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="3376" y1="1424" y2="1424" x1="3232" />
            <wire x2="3376" y1="1328" y2="1424" x1="3376" />
            <wire x2="3536" y1="1328" y2="1328" x1="3376" />
        </branch>
        <instance x="3520" y="2000" name="XLXI_17" orien="R0">
        </instance>
        <instance x="4160" y="2064" name="XLXI_18" orien="R0">
        </instance>
        <branch name="XLXN_29(63:0)">
            <wire x2="4064" y1="1712" y2="1712" x1="3968" />
            <wire x2="4064" y1="1648" y2="1712" x1="4064" />
            <wire x2="4160" y1="1648" y2="1648" x1="4064" />
        </branch>
        <branch name="XLXN_30(63:0)">
            <wire x2="4080" y1="1776" y2="1776" x1="3968" />
            <wire x2="4080" y1="1712" y2="1776" x1="4080" />
            <wire x2="4160" y1="1712" y2="1712" x1="4080" />
        </branch>
        <branch name="XLXN_31(63:0)">
            <wire x2="4096" y1="1840" y2="1840" x1="3968" />
            <wire x2="4096" y1="1776" y2="1840" x1="4096" />
            <wire x2="4160" y1="1776" y2="1776" x1="4096" />
        </branch>
        <branch name="XLXN_32(63:0)">
            <wire x2="4112" y1="1904" y2="1904" x1="3968" />
            <wire x2="4112" y1="1840" y2="1904" x1="4112" />
            <wire x2="4160" y1="1840" y2="1840" x1="4112" />
        </branch>
        <branch name="XLXN_33(63:0)">
            <wire x2="4128" y1="1968" y2="1968" x1="3968" />
            <wire x2="4128" y1="1904" y2="1968" x1="4128" />
            <wire x2="4160" y1="1904" y2="1904" x1="4128" />
        </branch>
        <instance x="3408" y="2320" name="XLXI_19" orien="R0">
        </instance>
        <branch name="XLXN_37(63:0)">
            <wire x2="4144" y1="2224" y2="2224" x1="3840" />
            <wire x2="4144" y1="1968" y2="2224" x1="4144" />
            <wire x2="4160" y1="1968" y2="1968" x1="4144" />
        </branch>
        <branch name="XLXN_39">
            <wire x2="3536" y1="1264" y2="1264" x1="3472" />
            <wire x2="3472" y1="1264" y2="1472" x1="3472" />
            <wire x2="4608" y1="1472" y2="1472" x1="3472" />
            <wire x2="4608" y1="1472" y2="1584" x1="4608" />
            <wire x2="4608" y1="1584" y2="1584" x1="4544" />
        </branch>
        <branch name="P3_out(7:0)">
            <wire x2="1184" y1="1536" y2="1536" x1="1104" />
            <wire x2="1104" y1="1536" y2="2368" x1="1104" />
            <wire x2="4048" y1="2368" y2="2368" x1="1104" />
            <wire x2="4048" y1="1328" y2="1328" x1="3920" />
            <wire x2="4144" y1="1328" y2="1328" x1="4048" />
            <wire x2="4048" y1="1328" y2="2368" x1="4048" />
        </branch>
        <instance x="4864" y="2512" name="XLXI_22" orien="R0">
        </instance>
        <branch name="XLXN_46(7:0)">
            <wire x2="1152" y1="1472" y2="2576" x1="1152" />
            <wire x2="5328" y1="2576" y2="2576" x1="1152" />
            <wire x2="1184" y1="1472" y2="1472" x1="1152" />
            <wire x2="5328" y1="2160" y2="2160" x1="5248" />
            <wire x2="5328" y1="2160" y2="2576" x1="5328" />
        </branch>
        <branch name="XLXN_47(7:0)">
            <wire x2="4848" y1="2048" y2="2288" x1="4848" />
            <wire x2="4864" y1="2288" y2="2288" x1="4848" />
            <wire x2="5536" y1="2048" y2="2048" x1="4848" />
            <wire x2="5536" y1="1648" y2="1648" x1="5456" />
            <wire x2="5536" y1="1648" y2="2048" x1="5536" />
        </branch>
        <branch name="XLXN_48(7:0)">
            <wire x2="4864" y1="2352" y2="2352" x1="4848" />
            <wire x2="4848" y1="2352" y2="2528" x1="4848" />
            <wire x2="5520" y1="2528" y2="2528" x1="4848" />
            <wire x2="5520" y1="1904" y2="1904" x1="5456" />
            <wire x2="5520" y1="1904" y2="2528" x1="5520" />
        </branch>
        <branch name="XLXN_49(7:0)">
            <wire x2="3296" y1="1088" y2="1088" x1="1664" />
            <wire x2="3296" y1="1088" y2="1968" x1="3296" />
            <wire x2="3520" y1="1968" y2="1968" x1="3296" />
            <wire x2="3296" y1="1968" y2="2416" x1="3296" />
            <wire x2="4864" y1="2416" y2="2416" x1="3296" />
        </branch>
        <instance x="5040" y="1936" name="XLXI_21" orien="R0">
        </instance>
        <branch name="XLXN_53(63:0)">
            <wire x2="3408" y1="2288" y2="2288" x1="3328" />
            <wire x2="3328" y1="2288" y2="2464" x1="3328" />
            <wire x2="3952" y1="2464" y2="2464" x1="3328" />
            <wire x2="3952" y1="2464" y2="2480" x1="3952" />
            <wire x2="4864" y1="2480" y2="2480" x1="3952" />
            <wire x2="3952" y1="2480" y2="2752" x1="3952" />
            <wire x2="4672" y1="2752" y2="2752" x1="3952" />
            <wire x2="4672" y1="2752" y2="2928" x1="4672" />
            <wire x2="4160" y1="2032" y2="2032" x1="3952" />
            <wire x2="3952" y1="2032" y2="2464" x1="3952" />
            <wire x2="4672" y1="2928" y2="2928" x1="4592" />
        </branch>
        <branch name="TXDout(0:0)">
            <wire x2="1696" y1="1280" y2="1280" x1="1664" />
        </branch>
        <iomarker fontsize="28" x="1696" y="1280" name="TXDout(0:0)" orien="R0" />
        <branch name="RXDin(0:0)">
            <wire x2="1184" y1="1280" y2="1280" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1152" y="1280" name="RXDin(0:0)" orien="R180" />
        <iomarker fontsize="28" x="4144" y="1328" name="P3_out(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3248" y="2288" name="Idle_out" orien="R90" />
        <branch name="ram_addr(6:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1536" type="branch" />
            <wire x2="1808" y1="1536" y2="1536" x1="1664" />
            <wire x2="2656" y1="1536" y2="1536" x1="1808" />
            <wire x2="2656" y1="1536" y2="1936" x1="2656" />
            <wire x2="2768" y1="1936" y2="1936" x1="2656" />
            <wire x2="2704" y1="992" y2="992" x1="2656" />
            <wire x2="2656" y1="992" y2="1536" x1="2656" />
        </branch>
        <branch name="clk10mHz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="624" type="branch" />
            <wire x2="1104" y1="272" y2="272" x1="912" />
            <wire x2="1104" y1="272" y2="624" x1="1104" />
            <wire x2="1104" y1="624" y2="768" x1="1104" />
            <wire x2="1184" y1="768" y2="768" x1="1104" />
            <wire x2="1280" y1="624" y2="624" x1="1104" />
            <wire x2="2000" y1="624" y2="624" x1="1280" />
            <wire x2="2000" y1="624" y2="864" x1="2000" />
            <wire x2="2704" y1="864" y2="864" x1="2000" />
            <wire x2="2000" y1="864" y2="1344" x1="2000" />
            <wire x2="2080" y1="1344" y2="1344" x1="2000" />
            <wire x2="2000" y1="1344" y2="1504" x1="2000" />
            <wire x2="2608" y1="1504" y2="1504" x1="2000" />
            <wire x2="2720" y1="1504" y2="1504" x1="2608" />
            <wire x2="2608" y1="1504" y2="1776" x1="2608" />
            <wire x2="2768" y1="1776" y2="1776" x1="2608" />
            <wire x2="2720" y1="1072" y2="1424" x1="2720" />
            <wire x2="2720" y1="1424" y2="1504" x1="2720" />
            <wire x2="2848" y1="1424" y2="1424" x1="2720" />
            <wire x2="3328" y1="1072" y2="1072" x1="2720" />
            <wire x2="3536" y1="1072" y2="1072" x1="3328" />
            <wire x2="3328" y1="1072" y2="1712" x1="3328" />
            <wire x2="3424" y1="1712" y2="1712" x1="3328" />
            <wire x2="3520" y1="1712" y2="1712" x1="3424" />
            <wire x2="3424" y1="1712" y2="2128" x1="3424" />
            <wire x2="4160" y1="992" y2="992" x1="3328" />
            <wire x2="3328" y1="992" y2="1072" x1="3328" />
            <wire x2="3344" y1="2128" y2="2224" x1="3344" />
            <wire x2="3408" y1="2224" y2="2224" x1="3344" />
            <wire x2="3344" y1="2224" y2="2928" x1="3344" />
            <wire x2="4208" y1="2928" y2="2928" x1="3344" />
            <wire x2="3424" y1="2128" y2="2128" x1="3344" />
            <wire x2="3424" y1="1584" y2="1712" x1="3424" />
            <wire x2="4128" y1="1584" y2="1584" x1="3424" />
            <wire x2="4160" y1="1584" y2="1584" x1="4128" />
            <wire x2="4128" y1="1488" y2="1584" x1="4128" />
            <wire x2="4688" y1="1488" y2="1488" x1="4128" />
            <wire x2="4688" y1="1488" y2="2160" x1="4688" />
            <wire x2="4864" y1="2160" y2="2160" x1="4688" />
        </branch>
        <instance x="2768" y="2064" name="XLXI_13" orien="R0">
        </instance>
        <branch name="XLXN_17">
            <wire x2="2032" y1="800" y2="800" x1="1984" />
            <wire x2="2704" y1="800" y2="800" x1="2032" />
            <wire x2="2032" y1="800" y2="1856" x1="2032" />
            <wire x2="2768" y1="1856" y2="1856" x1="2032" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="3328" y1="1840" y2="1840" x1="3152" />
            <wire x2="3328" y1="1776" y2="1840" x1="3328" />
            <wire x2="3520" y1="1776" y2="1776" x1="3328" />
        </branch>
        <branch name="XLXN_71">
            <wire x2="3200" y1="2160" y2="2160" x1="3152" />
            <wire x2="3200" y1="2160" y2="2176" x1="3200" />
            <wire x2="3456" y1="2176" y2="2176" x1="3200" />
            <wire x2="3456" y1="1392" y2="2176" x1="3456" />
            <wire x2="3536" y1="1392" y2="1392" x1="3456" />
        </branch>
        <branch name="XLXN_73(7:0)">
            <wire x2="1712" y1="1024" y2="1024" x1="1664" />
            <wire x2="1712" y1="688" y2="1024" x1="1712" />
            <wire x2="3312" y1="688" y2="688" x1="1712" />
            <wire x2="3312" y1="688" y2="1904" x1="3312" />
            <wire x2="3520" y1="1904" y2="1904" x1="3312" />
            <wire x2="4656" y1="688" y2="688" x1="3312" />
            <wire x2="4656" y1="688" y2="1776" x1="4656" />
            <wire x2="5040" y1="1776" y2="1776" x1="4656" />
        </branch>
        <instance x="4160" y="1216" name="XLXI_20" orien="R0">
        </instance>
        <branch name="XLXN_20(7:0)">
            <wire x2="1728" y1="960" y2="960" x1="1664" />
            <wire x2="1728" y1="960" y2="1552" x1="1728" />
            <wire x2="2720" y1="1552" y2="1552" x1="1728" />
            <wire x2="2848" y1="1552" y2="1552" x1="2720" />
            <wire x2="2720" y1="1552" y2="1648" x1="2720" />
            <wire x2="3376" y1="1648" y2="1648" x1="2720" />
            <wire x2="3376" y1="1648" y2="1840" x1="3376" />
            <wire x2="3520" y1="1840" y2="1840" x1="3376" />
            <wire x2="3984" y1="1648" y2="1648" x1="3376" />
            <wire x2="3984" y1="1392" y2="1648" x1="3984" />
            <wire x2="4672" y1="1392" y2="1392" x1="3984" />
            <wire x2="4672" y1="1392" y2="1712" x1="4672" />
            <wire x2="5040" y1="1712" y2="1712" x1="4672" />
        </branch>
        <branch name="XLXN_76">
            <wire x2="3984" y1="1072" y2="1072" x1="3920" />
            <wire x2="4032" y1="1072" y2="1072" x1="3984" />
            <wire x2="3984" y1="1072" y2="1264" x1="3984" />
            <wire x2="4912" y1="1264" y2="1264" x1="3984" />
            <wire x2="4912" y1="1264" y2="1648" x1="4912" />
            <wire x2="5040" y1="1648" y2="1648" x1="4912" />
            <wire x2="4912" y1="1648" y2="1968" x1="4912" />
            <wire x2="4032" y1="1056" y2="1072" x1="4032" />
            <wire x2="4160" y1="1056" y2="1056" x1="4032" />
            <wire x2="4912" y1="1968" y2="1968" x1="4720" />
            <wire x2="4720" y1="1968" y2="2224" x1="4720" />
            <wire x2="4864" y1="2224" y2="2224" x1="4720" />
        </branch>
        <instance x="3792" y="896" name="XLXI_24" orien="R0" />
        <branch name="XLXN_77">
            <wire x2="3232" y1="2032" y2="2032" x1="3152" />
            <wire x2="3232" y1="1616" y2="2032" x1="3232" />
            <wire x2="3520" y1="1616" y2="1616" x1="3232" />
            <wire x2="3792" y1="832" y2="832" x1="3520" />
            <wire x2="3520" y1="832" y2="1200" x1="3520" />
            <wire x2="3536" y1="1200" y2="1200" x1="3520" />
            <wire x2="3520" y1="1200" y2="1616" x1="3520" />
        </branch>
        <branch name="XLXN_83">
            <wire x2="4096" y1="800" y2="800" x1="4048" />
            <wire x2="4096" y1="800" y2="1248" x1="4096" />
            <wire x2="4160" y1="1248" y2="1248" x1="4096" />
        </branch>
        <instance x="4208" y="2832" name="XLXI_23" orien="R0">
        </instance>
        <branch name="XLXN_85(7:0)">
            <wire x2="1184" y1="1408" y2="1408" x1="1168" />
            <wire x2="1168" y1="1408" y2="2304" x1="1168" />
            <wire x2="3216" y1="2304" y2="2304" x1="1168" />
            <wire x2="3216" y1="2160" y2="2304" x1="3216" />
            <wire x2="4592" y1="2160" y2="2160" x1="3216" />
            <wire x2="4592" y1="1184" y2="1184" x1="4544" />
            <wire x2="4592" y1="1184" y2="2160" x1="4592" />
            <wire x2="4816" y1="1184" y2="1184" x1="4592" />
            <wire x2="4816" y1="1184" y2="1904" x1="4816" />
            <wire x2="5040" y1="1904" y2="1904" x1="4816" />
        </branch>
        <branch name="XLXN_84(7:0)">
            <wire x2="1184" y1="1344" y2="1344" x1="1120" />
            <wire x2="1120" y1="1344" y2="2144" x1="1120" />
            <wire x2="4624" y1="2144" y2="2144" x1="1120" />
            <wire x2="4624" y1="992" y2="992" x1="4544" />
            <wire x2="4624" y1="992" y2="2144" x1="4624" />
            <wire x2="4832" y1="992" y2="992" x1="4624" />
            <wire x2="4832" y1="992" y2="1840" x1="4832" />
            <wire x2="5040" y1="1840" y2="1840" x1="4832" />
        </branch>
    </sheet>
</drawing>