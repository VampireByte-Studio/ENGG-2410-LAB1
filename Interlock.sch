<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="G" />
        <signal name="HR" />
        <signal name="HL" />
        <signal name="Run" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="Fault" />
        <port polarity="Input" name="G" />
        <port polarity="Input" name="HR" />
        <port polarity="Input" name="HL" />
        <port polarity="Output" name="Run" />
        <port polarity="Output" name="Fault" />
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="and3" name="XLXI_1">
            <blockpin signalname="G" name="I0" />
            <blockpin signalname="HR" name="I1" />
            <blockpin signalname="HL" name="I2" />
            <blockpin signalname="Run" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="I0" />
            <blockpin signalname="HR" name="I1" />
            <blockpin signalname="HL" name="I2" />
            <blockpin signalname="Fault" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="G" name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1568" y="1296" name="XLXI_2" orien="R0" />
        <instance x="1120" y="1216" name="XLXI_3" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1456" y1="1184" y2="1184" x1="1344" />
            <wire x2="1456" y1="1184" y2="1232" x1="1456" />
            <wire x2="1568" y1="1232" y2="1232" x1="1456" />
        </branch>
        <branch name="G">
            <wire x2="1056" y1="1184" y2="1184" x1="864" />
            <wire x2="1120" y1="1184" y2="1184" x1="1056" />
            <wire x2="1568" y1="704" y2="704" x1="1056" />
            <wire x2="1056" y1="704" y2="1184" x1="1056" />
        </branch>
        <iomarker fontsize="28" x="864" y="1184" name="G" orien="R180" />
        <branch name="HR">
            <wire x2="1264" y1="1040" y2="1040" x1="832" />
            <wire x2="1472" y1="1040" y2="1040" x1="1264" />
            <wire x2="1472" y1="1040" y2="1168" x1="1472" />
            <wire x2="1568" y1="1168" y2="1168" x1="1472" />
            <wire x2="1568" y1="640" y2="640" x1="1264" />
            <wire x2="1264" y1="640" y2="1040" x1="1264" />
        </branch>
        <branch name="HL">
            <wire x2="1184" y1="912" y2="912" x1="832" />
            <wire x2="1568" y1="912" y2="912" x1="1184" />
            <wire x2="1568" y1="912" y2="1104" x1="1568" />
            <wire x2="1568" y1="576" y2="576" x1="1184" />
            <wire x2="1184" y1="576" y2="912" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="832" y="912" name="HL" orien="R180" />
        <iomarker fontsize="28" x="832" y="1040" name="HR" orien="R180" />
        <instance x="1568" y="768" name="XLXI_1" orien="R0" />
        <branch name="Run">
            <wire x2="2128" y1="640" y2="640" x1="1824" />
        </branch>
        <branch name="Fault">
            <wire x2="2112" y1="1168" y2="1168" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="2112" y="1168" name="Fault" orien="R0" />
        <iomarker fontsize="28" x="2128" y="640" name="Run" orien="R0" />
    </sheet>
</drawing>