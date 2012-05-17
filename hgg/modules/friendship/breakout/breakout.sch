<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.1">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="hgg">
<packages>
<package name="FRIENDSHIP_EDGE_CONNECTOR">
<wire x1="0" y1="9" x2="0" y2="-12" width="0.127" layer="20"/>
<wire x1="0" y1="-12" x2="14" y2="-12" width="0.127" layer="20"/>
<wire x1="14" y1="-12" x2="14" y2="-11.985" width="0.127" layer="21"/>
<wire x1="14" y1="-11.985" x2="33" y2="-11.985" width="0.127" layer="20"/>
<wire x1="33" y1="-12" x2="33" y2="-11.985" width="0.127" layer="21"/>
<wire x1="33" y1="-12" x2="41" y2="-12" width="0.127" layer="20"/>
<wire x1="41" y1="-12" x2="41" y2="-6" width="0.127" layer="20"/>
<wire x1="41" y1="-6" x2="45" y2="-6" width="0.127" layer="20" curve="-180"/>
<wire x1="45" y1="-6" x2="45" y2="-16" width="0.127" layer="20"/>
<wire x1="45" y1="-16" x2="56" y2="-16" width="0.127" layer="20"/>
<wire x1="56" y1="-16" x2="56" y2="-8" width="0.127" layer="20"/>
<wire x1="56" y1="-8" x2="58" y2="-8" width="0.127" layer="20" curve="-180"/>
<wire x1="58" y1="-8" x2="58" y2="-16" width="0.127" layer="20"/>
<wire x1="58" y1="-16" x2="79" y2="-16" width="0.127" layer="20"/>
<wire x1="79" y1="-16" x2="79.1" y2="-16" width="0.127" layer="21"/>
<wire x1="79" y1="-6" x2="83" y2="-6" width="0.127" layer="20" curve="-180"/>
<wire x1="79" y1="-6" x2="79" y2="-16" width="0.127" layer="20"/>
<wire x1="83" y1="-12.2" x2="83" y2="-6" width="0.127" layer="20"/>
<wire x1="83" y1="-12.2" x2="91" y2="-12.2" width="0.127" layer="20"/>
<wire x1="45.5" y1="-13.8" x2="45.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="46.5" y1="-13.9" x2="46.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="47.5" y1="-13.8" x2="47.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="48.5" y1="-13.9" x2="48.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="49.5" y1="-13.9" x2="49.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="50.5" y1="-14" x2="50.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="51.5" y1="-14" x2="51.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="52.5" y1="-14" x2="52.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="53.5" y1="-13.8" x2="53.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="54.5" y1="-13.9" x2="54.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="55.5" y1="-13.9" x2="55.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="58.5" y1="-13.8" x2="58.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="59.5" y1="-14.2" x2="59.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="60.5" y1="-14" x2="60.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="61.5" y1="-13.9" x2="61.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="62.5" y1="-14" x2="62.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="63.5" y1="-14.1" x2="63.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="64.5" y1="-14" x2="64.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="65.5" y1="-14.1" x2="65.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="66.5" y1="-14" x2="66.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="67.5" y1="-14.1" x2="67.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="68.5" y1="-13.9" x2="68.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="69.5" y1="-13.9" x2="69.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="70.5" y1="-13.8" x2="70.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="71.5" y1="-14" x2="71.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="72.5" y1="-13.7" x2="72.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="73.5" y1="-13.8" x2="73.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="74.5" y1="-13.8" x2="74.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="75.5" y1="-13.8" x2="75.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="76.5" y1="-13.9" x2="76.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="77.5" y1="-13.9" x2="77.5" y2="-10.9" width="0.6096" layer="16"/>
<wire x1="78.6" y1="-13.9" x2="78.6" y2="-10.9" width="0.6096" layer="16"/>
<smd name="A01(PRSNT1)" x="45.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A02(IRQ)" x="46.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A03(/CS,IRQ)" x="47.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A04(RSVD1)" x="48.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A05(RSVD2)" x="49.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A06(+3V3)" x="50.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A07(GND)" x="51.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A08(+5V)" x="52.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A09(GND)" x="53.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A10(+12V)" x="54.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A11(GND)" x="55.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A12(TDI)" x="58.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A13(TDO)" x="59.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A14(TMS)" x="60.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A15(TCK)" x="61.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A16(TRST)" x="62.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A17(BUS0-)" x="63.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A18(BUS0+)" x="64.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A19(GND)" x="65.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A20(BUS1+)" x="66.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A21(BUS1-)" x="67.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A22(GND)" x="68.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A23(SLOWTIMEMOSI)" x="69.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A24(SLOWCLKCLK)" x="70.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A25(SLOWCLK/CS)" x="71.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A26(PPS)" x="72.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A27(GND)" x="73.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A32(PRSNT2)" x="78.6" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A31(FASTCLK3V3)" x="77.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A28(FASTCLK-)" x="74.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A29(FASTCLK+)" x="75.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<smd name="A30(GND)" x="76.5" y="-14.5" dx="1.27" dy="0.6604" layer="1" rot="R90"/>
<wire x1="58.5" y1="-10.9" x2="58.5" y2="-13.9" width="0.6096" layer="1"/>
<wire x1="59.5" y1="-13.9" x2="59.5" y2="-10.9" width="0.6096" layer="1"/>
<wire x1="60.5" y1="-14" x2="60.5" y2="-10.9" width="0.6096" layer="1"/>
<wire x1="61.5" y1="-14.2" x2="61.5" y2="-10.9" width="0.6096" layer="1"/>
<wire x1="62.5" y1="-14" x2="62.5" y2="-10.9" width="0.6096" layer="1"/>
<wire x1="63.5" y1="-14.1" x2="63.5" y2="-10.9" width="0.6096" layer="1"/>
<wire x1="64.5" y1="-14.1" x2="64.5" y2="-10.9" width="0.6096" layer="1"/>
<wire x1="65.5" y1="-10.9" x2="65.5" y2="-13.9" width="0.6096" layer="1"/>
<wire x1="66.5" y1="-10.9" x2="66.5" y2="-13.8" width="0.6096" layer="1"/>
<wire x1="67.5" y1="-10.9" x2="67.5" y2="-13.8" width="0.6096" layer="1"/>
<wire x1="68.5" y1="-10.9" x2="68.5" y2="-13.9" width="0.6096" layer="1"/>
<wire x1="69.5" y1="-10.9" x2="69.5" y2="-13.9" width="0.6096" layer="1"/>
<wire x1="70.5" y1="-10.9" x2="70.5" y2="-14" width="0.6096" layer="1"/>
<wire x1="71.5" y1="-10.9" x2="71.5" y2="-13.8" width="0.6096" layer="1"/>
<wire x1="72.5" y1="-10.9" x2="72.5" y2="-14" width="0.6096" layer="1"/>
<wire x1="73.5" y1="-10.9" x2="73.5" y2="-14" width="0.6096" layer="1"/>
<wire x1="74.5" y1="-10.9" x2="74.5" y2="-13.9" width="0.6096" layer="1"/>
<wire x1="75.5" y1="-10.9" x2="75.5" y2="-13.9" width="0.6096" layer="1"/>
<wire x1="76.5" y1="-10.9" x2="76.5" y2="-13.8" width="0.6096" layer="1"/>
<wire x1="77.5" y1="-10.9" x2="77.5" y2="-13.8" width="0.6096" layer="1"/>
<wire x1="78.6" y1="-10.9" x2="78.6" y2="-13.9" width="0.6096" layer="1"/>
<wire x1="55.5" y1="-10.9" x2="55.5" y2="-13.9" width="0.6096" layer="1"/>
<wire x1="54.5" y1="-10.9" x2="54.5" y2="-13.9" width="0.6096" layer="1"/>
<wire x1="53.5" y1="-10.9" x2="53.5" y2="-13.9" width="0.6096" layer="1"/>
<wire x1="52.5" y1="-10.9" x2="52.5" y2="-13.9" width="0.6096" layer="1"/>
<wire x1="51.5" y1="-10.9" x2="51.5" y2="-13.9" width="0.6096" layer="1"/>
<wire x1="50.5" y1="-10.9" x2="50.5" y2="-13.8" width="0.6096" layer="1"/>
<wire x1="49.5" y1="-10.9" x2="49.5" y2="-13.9" width="0.6096" layer="1"/>
<wire x1="48.5" y1="-10.9" x2="48.5" y2="-13.9" width="0.6096" layer="1"/>
<wire x1="47.5" y1="-10.9" x2="47.5" y2="-13.9" width="0.6096" layer="1"/>
<wire x1="46.5" y1="-10.9" x2="46.5" y2="-13.9" width="0.6096" layer="1"/>
<wire x1="45.5" y1="-10.9" x2="45.5" y2="-13.9" width="0.6096" layer="1"/>
<smd name="B01" x="45.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B02" x="46.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B03" x="47.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B04" x="48.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B05" x="49.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B06(+3V3)" x="50.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B07(GND)" x="51.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B08(+5V)" x="52.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B09(GND)" x="53.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B10(+12V)" x="54.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B11(GND)" x="55.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B12" x="58.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B13" x="59.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B14" x="60.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B15" x="61.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B16" x="62.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B17" x="63.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B18" x="64.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B19" x="65.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B20" x="66.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B21" x="67.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B22" x="68.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B23" x="69.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B24" x="70.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B25" x="71.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B26" x="72.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B27" x="73.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B32" x="78.6" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B31" x="77.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B28" x="74.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B29" x="75.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
<smd name="B30" x="76.5" y="-14.5" dx="1.27" dy="0.6604" layer="16" rot="R270"/>
</package>
<package name="FRIENDSHIP_SLOT">
<pad name="A02(IRQ)" x="1" y="4.5" drill="0.5" diameter="1.27"/>
<pad name="A04(RSVD1)" x="3" y="4.5" drill="0.5" diameter="1.27"/>
<pad name="A06(+3V3)" x="5" y="4.5" drill="0.5" diameter="1.27"/>
<pad name="A08(+5V)" x="7" y="4.5" drill="0.5" diameter="1.27"/>
<pad name="A10(+12V)" x="9" y="4.5" drill="0.5" diameter="1.27"/>
<pad name="A01(PRSNT1)" x="0" y="2.5" drill="0.5" diameter="1.27"/>
<pad name="A03(/CS,IRQ)" x="2" y="2.5" drill="0.5" diameter="1.27"/>
<pad name="A05(RSVD2)" x="4" y="2.5" drill="0.5" diameter="1.27"/>
<pad name="A07(GND)" x="6" y="2.5" drill="0.5" diameter="1.27"/>
<pad name="A09(GND)" x="8" y="2.5" drill="0.5" diameter="1.27"/>
<pad name="A11(GND)" x="10" y="2.5" drill="0.5" diameter="1.27"/>
<pad name="B01" x="0" y="0" drill="0.5" diameter="1.27" shape="square"/>
<pad name="B03" x="2" y="0" drill="0.5" diameter="1.27"/>
<pad name="B05" x="4" y="0" drill="0.5" diameter="1.27"/>
<pad name="B07(GND)" x="6" y="0" drill="0.5" diameter="1.27"/>
<pad name="B09(GND)" x="8" y="0" drill="0.5" diameter="1.27"/>
<pad name="B11(GND)" x="10" y="0" drill="0.5" diameter="1.27"/>
<pad name="B02" x="1" y="-2" drill="0.5" diameter="1.27"/>
<pad name="B04" x="3" y="-2" drill="0.5" diameter="1.27"/>
<pad name="B06(+3V3)" x="5" y="-2" drill="0.5" diameter="1.27"/>
<pad name="B08(+5V)" x="7" y="-2" drill="0.5" diameter="1.27"/>
<pad name="B10(+12V)" x="9" y="-2" drill="0.5" diameter="1.27"/>
<pad name="A12(TDI)" x="13" y="4.5" drill="0.5" diameter="1.27"/>
<pad name="A13(TDO)" x="14" y="2.5" drill="0.5" diameter="1.27"/>
<pad name="B13" x="14" y="0" drill="0.5" diameter="1.27"/>
<pad name="B12" x="13" y="-2" drill="0.5" diameter="1.27"/>
<pad name="A14(TMS)" x="15" y="4.5" drill="0.5" diameter="1.27"/>
<pad name="A15(TCK)" x="16" y="2.5" drill="0.5" diameter="1.27"/>
<pad name="A16(TRST)" x="17" y="4.5" drill="0.5" diameter="1.27"/>
<pad name="A17(BUS0-)" x="18" y="2.5" drill="0.5" diameter="1.27"/>
<pad name="A18(BUS0+)" x="19" y="4.5" drill="0.5" diameter="1.27"/>
<pad name="A19(GND)" x="20" y="2.5" drill="0.5" diameter="1.27"/>
<pad name="A20(BUS1+)" x="21" y="4.5" drill="0.5" diameter="1.27"/>
<pad name="A21(BUS1-)" x="22" y="2.5" drill="0.5" diameter="1.27"/>
<pad name="A22(GND)" x="23" y="4.5" drill="0.5" diameter="1.27"/>
<pad name="A23(SLOWCLKMOSI)" x="24" y="2.5" drill="0.5" diameter="1.27"/>
<pad name="A24(SLOWCLKCLK)" x="25" y="4.5" drill="0.5" diameter="1.27"/>
<pad name="A25(SLOWCLK/CS)" x="26" y="2.5" drill="0.5" diameter="1.27"/>
<pad name="A26(PPS)" x="27" y="4.5" drill="0.5" diameter="1.27"/>
<pad name="A27(GND)" x="28" y="2.5" drill="0.5" diameter="1.27"/>
<pad name="A28(FASTCLK+)" x="29" y="4.5" drill="0.5" diameter="1.27"/>
<pad name="A29(FASTCLK-)" x="30" y="2.5" drill="0.5" diameter="1.27"/>
<pad name="A30(GND)" x="31" y="4.5" drill="0.5" diameter="1.27"/>
<pad name="A31(FASTCLK3V3)" x="32" y="2.5" drill="0.5" diameter="1.27"/>
<pad name="A32(PRSNT2)" x="33" y="4.5" drill="0.5" diameter="1.27"/>
<pad name="B14" x="15" y="-2" drill="0.5" diameter="1.27"/>
<pad name="B15" x="16" y="0" drill="0.5" diameter="1.27"/>
<pad name="B16" x="17" y="-2" drill="0.5" diameter="1.27"/>
<pad name="B17" x="18" y="0" drill="0.5" diameter="1.27"/>
<pad name="B19" x="20" y="0" drill="0.5" diameter="1.27"/>
<pad name="B21" x="22" y="0" drill="0.5" diameter="1.27"/>
<pad name="B23" x="24" y="0" drill="0.5" diameter="1.27"/>
<pad name="B25" x="26" y="0" drill="0.5" diameter="1.27"/>
<pad name="B27" x="28" y="0" drill="0.5" diameter="1.27"/>
<pad name="B29" x="30" y="0" drill="0.5" diameter="1.27"/>
<pad name="B31" x="32" y="0" drill="0.5" diameter="1.27"/>
<pad name="B18" x="19" y="-2" drill="0.5" diameter="1.27"/>
<pad name="B20" x="21" y="-2" drill="0.5" diameter="1.27"/>
<pad name="B22" x="23" y="-2" drill="0.5" diameter="1.27"/>
<pad name="B24" x="25" y="-2" drill="0.5" diameter="1.27"/>
<pad name="B26" x="27" y="-2" drill="0.5" diameter="1.27"/>
<pad name="B28" x="29" y="-2" drill="0.5" diameter="1.27"/>
<pad name="B30" x="31" y="-2" drill="0.5" diameter="1.27"/>
<pad name="B32" x="33" y="-2" drill="0.5" diameter="1.27"/>
<hole x="12" y="1.25" drill="2"/>
<hole x="34" y="1.25" drill="2"/>
</package>
</packages>
<symbols>
<symbol name="FRIENDSHIP_CONNECTOR">
<pin name="PRSNT1" x="-10.16" y="15.24" length="middle"/>
<pin name="IRQ" x="-10.16" y="12.7" length="middle"/>
<pin name="/CS,IRQ" x="-10.16" y="10.16" length="middle"/>
<pin name="RSVD1" x="-10.16" y="0" length="middle"/>
<pin name="RSVD2" x="-10.16" y="-2.54" length="middle"/>
<pin name="+3V3_A" x="-10.16" y="-10.16" length="middle"/>
<pin name="GND1_A" x="-10.16" y="-12.7" length="middle"/>
<pin name="+5V_A" x="-10.16" y="-15.24" length="middle"/>
<pin name="GND2_A" x="-10.16" y="-17.78" length="middle"/>
<pin name="+12V_A" x="-10.16" y="-20.32" length="middle"/>
<pin name="GND3_A" x="-10.16" y="-22.86" length="middle"/>
<wire x1="-5.08" y1="17.78" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="22.86" y2="5.08" width="0.254" layer="94"/>
<wire x1="22.86" y1="5.08" x2="22.86" y2="17.78" width="0.254" layer="94"/>
<wire x1="22.86" y1="17.78" x2="-5.08" y2="17.78" width="0.254" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="22.86" y2="-5.08" width="0.254" layer="94"/>
<wire x1="22.86" y1="-5.08" x2="22.86" y2="2.54" width="0.254" layer="94"/>
<wire x1="22.86" y1="2.54" x2="-5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-7.62" x2="-5.08" y2="-25.4" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-25.4" x2="27.94" y2="-25.4" width="0.254" layer="94"/>
<wire x1="45.72" y1="-7.62" x2="-5.08" y2="-7.62" width="0.254" layer="94"/>
<text x="10.16" y="10.16" size="1.27" layer="94">BUSMASTER</text>
<text x="10.16" y="-2.54" size="1.27" layer="94">RSVD</text>
<text x="10.16" y="-12.7" size="1.27" layer="94">POWER</text>
<pin name="TDI" x="-10.16" y="-30.48" length="middle"/>
<pin name="TDO" x="-10.16" y="-33.02" length="middle"/>
<pin name="TMS" x="-10.16" y="-35.56" length="middle"/>
<pin name="TCK" x="-10.16" y="-38.1" length="middle"/>
<pin name="TRST" x="-10.16" y="-40.64" length="middle"/>
<pin name="BUS0-" x="-10.16" y="-48.26" length="middle"/>
<pin name="BUS0+" x="-10.16" y="-50.8" length="middle"/>
<pin name="GND4" x="-10.16" y="-53.34" length="middle"/>
<pin name="BUS1+" x="-10.16" y="-55.88" length="middle"/>
<pin name="BUS1-" x="-10.16" y="-58.42" length="middle"/>
<pin name="GND5" x="-10.16" y="-66.04" length="middle"/>
<pin name="SLOWCLKMOSI" x="-10.16" y="-68.58" length="middle"/>
<pin name="SLOWCLKCLK" x="-10.16" y="-71.12" length="middle"/>
<pin name="SLOWCLK/CS" x="-10.16" y="-73.66" length="middle"/>
<pin name="PPS" x="-10.16" y="-76.2" length="middle"/>
<pin name="FASTCLK+" x="-10.16" y="-81.28" length="middle"/>
<pin name="PRSNT2" x="-10.16" y="7.62" length="middle"/>
<wire x1="-5.08" y1="-27.94" x2="-5.08" y2="-43.18" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-43.18" x2="22.86" y2="-43.18" width="0.254" layer="94"/>
<wire x1="22.86" y1="-43.18" x2="22.86" y2="-27.94" width="0.254" layer="94"/>
<wire x1="22.86" y1="-27.94" x2="-5.08" y2="-27.94" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-45.72" x2="-5.08" y2="-60.96" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-60.96" x2="22.86" y2="-60.96" width="0.254" layer="94"/>
<wire x1="22.86" y1="-60.96" x2="22.86" y2="-45.72" width="0.254" layer="94"/>
<wire x1="22.86" y1="-45.72" x2="-5.08" y2="-45.72" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-63.5" x2="-5.08" y2="-91.44" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-91.44" x2="22.86" y2="-91.44" width="0.254" layer="94"/>
<wire x1="22.86" y1="-91.44" x2="22.86" y2="-63.5" width="0.254" layer="94"/>
<wire x1="22.86" y1="-63.5" x2="-5.08" y2="-63.5" width="0.254" layer="94"/>
<text x="10.16" y="-50.8" size="1.27" layer="94">RS485</text>
<text x="10.16" y="-33.02" size="1.27" layer="94">JTAG</text>
<text x="10.16" y="-76.2" size="1.27" layer="94">TIMING</text>
<pin name="FASTCLK-" x="-10.16" y="-83.82" length="middle"/>
<pin name="GND7" x="-10.16" y="-86.36" length="middle"/>
<pin name="FASTCLK3V3" x="-10.16" y="-88.9" length="middle"/>
<pin name="GND6" x="-10.16" y="-78.74" length="middle"/>
<pin name="B01" x="50.8" y="15.24" length="middle" rot="R180"/>
<pin name="B02" x="50.8" y="12.7" length="middle" rot="R180"/>
<pin name="B03" x="50.8" y="10.16" length="middle" rot="R180"/>
<pin name="B04" x="50.8" y="7.62" length="middle" rot="R180"/>
<pin name="B05" x="50.8" y="5.08" length="middle" rot="R180"/>
<pin name="+3V3_B" x="50.8" y="-10.16" length="middle" rot="R180"/>
<pin name="GND1_B" x="50.8" y="-12.7" length="middle" rot="R180"/>
<pin name="+5V_B" x="50.8" y="-15.24" length="middle" rot="R180"/>
<pin name="+12V_B" x="50.8" y="-20.32" length="middle" rot="R180"/>
<pin name="GND2_B" x="50.8" y="-17.78" length="middle" rot="R180"/>
<pin name="GND3_B" x="50.8" y="-22.86" length="middle" rot="R180"/>
<pin name="B12" x="50.8" y="-29.21" length="middle" rot="R180"/>
<pin name="B13" x="50.8" y="-31.75" length="middle" rot="R180"/>
<pin name="B14" x="50.8" y="-34.29" length="middle" rot="R180"/>
<pin name="B15" x="50.8" y="-36.83" length="middle" rot="R180"/>
<pin name="B16" x="50.8" y="-39.37" length="middle" rot="R180"/>
<pin name="B17" x="50.8" y="-41.91" length="middle" rot="R180"/>
<pin name="B18" x="50.8" y="-44.45" length="middle" rot="R180"/>
<pin name="B19" x="50.8" y="-46.99" length="middle" rot="R180"/>
<pin name="B20" x="50.8" y="-49.53" length="middle" rot="R180"/>
<pin name="B21" x="50.8" y="-52.07" length="middle" rot="R180"/>
<pin name="B22" x="50.8" y="-54.61" length="middle" rot="R180"/>
<pin name="B23" x="50.8" y="-57.15" length="middle" rot="R180"/>
<pin name="B24" x="50.8" y="-59.69" length="middle" rot="R180"/>
<pin name="B25" x="50.8" y="-62.23" length="middle" rot="R180"/>
<pin name="B26" x="50.8" y="-64.77" length="middle" rot="R180"/>
<pin name="B27" x="50.8" y="-67.31" length="middle" rot="R180"/>
<pin name="B28" x="50.8" y="-69.85" length="middle" rot="R180"/>
<pin name="B29" x="50.8" y="-72.39" length="middle" rot="R180"/>
<pin name="B30" x="50.8" y="-74.93" length="middle" rot="R180"/>
<pin name="B31" x="50.8" y="-77.47" length="middle" rot="R180"/>
<pin name="B32" x="50.8" y="-80.01" length="middle" rot="R180"/>
<wire x1="27.94" y1="17.78" x2="27.94" y2="3.81" width="0.254" layer="94"/>
<wire x1="27.94" y1="-82.55" x2="45.72" y2="-82.55" width="0.254" layer="94"/>
<wire x1="45.72" y1="3.81" x2="45.72" y2="17.78" width="0.254" layer="94"/>
<wire x1="45.72" y1="17.78" x2="27.94" y2="17.78" width="0.254" layer="94"/>
<text x="30.48" y="10.16" size="1.27" layer="94">RESERVED</text>
<wire x1="45.72" y1="3.81" x2="27.94" y2="3.81" width="0.254" layer="94"/>
<wire x1="45.72" y1="-7.62" x2="45.72" y2="-25.4" width="0.254" layer="94"/>
<wire x1="45.72" y1="-25.4" x2="27.94" y2="-25.4" width="0.254" layer="94"/>
<wire x1="45.72" y1="-27.94" x2="45.72" y2="-82.55" width="0.254" layer="94"/>
<wire x1="45.72" y1="-27.94" x2="27.94" y2="-27.94" width="0.254" layer="94"/>
<wire x1="27.94" y1="-27.94" x2="27.94" y2="-82.55" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="FRIENDSHIP">
<gates>
<gate name="G$1" symbol="FRIENDSHIP_CONNECTOR" x="-12.7" y="30.48"/>
</gates>
<devices>
<device name="CONNECTOR" package="FRIENDSHIP_EDGE_CONNECTOR">
<connects>
<connect gate="G$1" pin="+12V_A" pad="A10(+12V)"/>
<connect gate="G$1" pin="+12V_B" pad="B10(+12V)"/>
<connect gate="G$1" pin="+3V3_A" pad="A06(+3V3)"/>
<connect gate="G$1" pin="+3V3_B" pad="B06(+3V3)"/>
<connect gate="G$1" pin="+5V_A" pad="A08(+5V)"/>
<connect gate="G$1" pin="+5V_B" pad="B08(+5V)"/>
<connect gate="G$1" pin="/CS,IRQ" pad="A03(/CS,IRQ)"/>
<connect gate="G$1" pin="B01" pad="B01"/>
<connect gate="G$1" pin="B02" pad="B02"/>
<connect gate="G$1" pin="B03" pad="B03"/>
<connect gate="G$1" pin="B04" pad="B04"/>
<connect gate="G$1" pin="B05" pad="B05"/>
<connect gate="G$1" pin="B12" pad="B12"/>
<connect gate="G$1" pin="B13" pad="B13"/>
<connect gate="G$1" pin="B14" pad="B14"/>
<connect gate="G$1" pin="B15" pad="B15"/>
<connect gate="G$1" pin="B16" pad="B16"/>
<connect gate="G$1" pin="B17" pad="B17"/>
<connect gate="G$1" pin="B18" pad="B18"/>
<connect gate="G$1" pin="B19" pad="B19"/>
<connect gate="G$1" pin="B20" pad="B20"/>
<connect gate="G$1" pin="B21" pad="B21"/>
<connect gate="G$1" pin="B22" pad="B22"/>
<connect gate="G$1" pin="B23" pad="B23"/>
<connect gate="G$1" pin="B24" pad="B24"/>
<connect gate="G$1" pin="B25" pad="B25"/>
<connect gate="G$1" pin="B26" pad="B26"/>
<connect gate="G$1" pin="B27" pad="B27"/>
<connect gate="G$1" pin="B28" pad="B28"/>
<connect gate="G$1" pin="B29" pad="B29"/>
<connect gate="G$1" pin="B30" pad="B30"/>
<connect gate="G$1" pin="B31" pad="B31"/>
<connect gate="G$1" pin="B32" pad="B32"/>
<connect gate="G$1" pin="BUS0+" pad="A18(BUS0+)"/>
<connect gate="G$1" pin="BUS0-" pad="A17(BUS0-)"/>
<connect gate="G$1" pin="BUS1+" pad="A20(BUS1+)"/>
<connect gate="G$1" pin="BUS1-" pad="A21(BUS1-)"/>
<connect gate="G$1" pin="FASTCLK+" pad="A29(FASTCLK+)"/>
<connect gate="G$1" pin="FASTCLK-" pad="A28(FASTCLK-)"/>
<connect gate="G$1" pin="FASTCLK3V3" pad="A31(FASTCLK3V3)"/>
<connect gate="G$1" pin="GND1_A" pad="A07(GND)"/>
<connect gate="G$1" pin="GND1_B" pad="B07(GND)"/>
<connect gate="G$1" pin="GND2_A" pad="A09(GND)"/>
<connect gate="G$1" pin="GND2_B" pad="B09(GND)"/>
<connect gate="G$1" pin="GND3_A" pad="A11(GND)"/>
<connect gate="G$1" pin="GND3_B" pad="B11(GND)"/>
<connect gate="G$1" pin="GND4" pad="A19(GND)"/>
<connect gate="G$1" pin="GND5" pad="A22(GND)"/>
<connect gate="G$1" pin="GND6" pad="A27(GND)"/>
<connect gate="G$1" pin="GND7" pad="A30(GND)"/>
<connect gate="G$1" pin="IRQ" pad="A02(IRQ)"/>
<connect gate="G$1" pin="PPS" pad="A26(PPS)"/>
<connect gate="G$1" pin="PRSNT1" pad="A01(PRSNT1)"/>
<connect gate="G$1" pin="PRSNT2" pad="A32(PRSNT2)"/>
<connect gate="G$1" pin="RSVD1" pad="A04(RSVD1)"/>
<connect gate="G$1" pin="RSVD2" pad="A05(RSVD2)"/>
<connect gate="G$1" pin="SLOWCLK/CS" pad="A25(SLOWCLK/CS)"/>
<connect gate="G$1" pin="SLOWCLKCLK" pad="A24(SLOWCLKCLK)"/>
<connect gate="G$1" pin="SLOWCLKMOSI" pad="A23(SLOWTIMEMOSI)"/>
<connect gate="G$1" pin="TCK" pad="A15(TCK)"/>
<connect gate="G$1" pin="TDI" pad="A12(TDI)"/>
<connect gate="G$1" pin="TDO" pad="A13(TDO)"/>
<connect gate="G$1" pin="TMS" pad="A14(TMS)"/>
<connect gate="G$1" pin="TRST" pad="A16(TRST)"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SLOT" package="FRIENDSHIP_SLOT">
<connects>
<connect gate="G$1" pin="+12V_A" pad="A10(+12V)"/>
<connect gate="G$1" pin="+12V_B" pad="B10(+12V)"/>
<connect gate="G$1" pin="+3V3_A" pad="A06(+3V3)"/>
<connect gate="G$1" pin="+3V3_B" pad="B06(+3V3)"/>
<connect gate="G$1" pin="+5V_A" pad="A08(+5V)"/>
<connect gate="G$1" pin="+5V_B" pad="B08(+5V)"/>
<connect gate="G$1" pin="/CS,IRQ" pad="A03(/CS,IRQ)"/>
<connect gate="G$1" pin="B01" pad="B01"/>
<connect gate="G$1" pin="B02" pad="B02"/>
<connect gate="G$1" pin="B03" pad="B03"/>
<connect gate="G$1" pin="B04" pad="B04"/>
<connect gate="G$1" pin="B05" pad="B05"/>
<connect gate="G$1" pin="B12" pad="B12"/>
<connect gate="G$1" pin="B13" pad="B13"/>
<connect gate="G$1" pin="B14" pad="B14"/>
<connect gate="G$1" pin="B15" pad="B15"/>
<connect gate="G$1" pin="B16" pad="B16"/>
<connect gate="G$1" pin="B17" pad="B17"/>
<connect gate="G$1" pin="B18" pad="B18"/>
<connect gate="G$1" pin="B19" pad="B19"/>
<connect gate="G$1" pin="B20" pad="B20"/>
<connect gate="G$1" pin="B21" pad="B21"/>
<connect gate="G$1" pin="B22" pad="B22"/>
<connect gate="G$1" pin="B23" pad="B23"/>
<connect gate="G$1" pin="B24" pad="B24"/>
<connect gate="G$1" pin="B25" pad="B25"/>
<connect gate="G$1" pin="B26" pad="B26"/>
<connect gate="G$1" pin="B27" pad="B27"/>
<connect gate="G$1" pin="B28" pad="B28"/>
<connect gate="G$1" pin="B29" pad="B29"/>
<connect gate="G$1" pin="B30" pad="B30"/>
<connect gate="G$1" pin="B31" pad="B31"/>
<connect gate="G$1" pin="B32" pad="B32"/>
<connect gate="G$1" pin="BUS0+" pad="A18(BUS0+)"/>
<connect gate="G$1" pin="BUS0-" pad="A17(BUS0-)"/>
<connect gate="G$1" pin="BUS1+" pad="A20(BUS1+)"/>
<connect gate="G$1" pin="BUS1-" pad="A21(BUS1-)"/>
<connect gate="G$1" pin="FASTCLK+" pad="A28(FASTCLK+)"/>
<connect gate="G$1" pin="FASTCLK-" pad="A29(FASTCLK-)"/>
<connect gate="G$1" pin="FASTCLK3V3" pad="A31(FASTCLK3V3)"/>
<connect gate="G$1" pin="GND1_A" pad="A19(GND)"/>
<connect gate="G$1" pin="GND1_B" pad="B07(GND)"/>
<connect gate="G$1" pin="GND2_A" pad="A22(GND)"/>
<connect gate="G$1" pin="GND2_B" pad="B09(GND)"/>
<connect gate="G$1" pin="GND3_A" pad="A27(GND)"/>
<connect gate="G$1" pin="GND3_B" pad="B11(GND)"/>
<connect gate="G$1" pin="GND4" pad="A30(GND)"/>
<connect gate="G$1" pin="GND5" pad="A11(GND)"/>
<connect gate="G$1" pin="GND6" pad="A09(GND)"/>
<connect gate="G$1" pin="GND7" pad="A07(GND)"/>
<connect gate="G$1" pin="IRQ" pad="A02(IRQ)"/>
<connect gate="G$1" pin="PPS" pad="A26(PPS)"/>
<connect gate="G$1" pin="PRSNT1" pad="A01(PRSNT1)"/>
<connect gate="G$1" pin="PRSNT2" pad="A32(PRSNT2)"/>
<connect gate="G$1" pin="RSVD1" pad="A04(RSVD1)"/>
<connect gate="G$1" pin="RSVD2" pad="A05(RSVD2)"/>
<connect gate="G$1" pin="SLOWCLK/CS" pad="A25(SLOWCLK/CS)"/>
<connect gate="G$1" pin="SLOWCLKCLK" pad="A24(SLOWCLKCLK)"/>
<connect gate="G$1" pin="SLOWCLKMOSI" pad="A23(SLOWCLKMOSI)"/>
<connect gate="G$1" pin="TCK" pad="A15(TCK)"/>
<connect gate="G$1" pin="TDI" pad="A12(TDI)"/>
<connect gate="G$1" pin="TDO" pad="A13(TDO)"/>
<connect gate="G$1" pin="TMS" pad="A14(TMS)"/>
<connect gate="G$1" pin="TRST" pad="A16(TRST)"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="maxim">
<description>&lt;b&gt;Maxim Components&lt;/b&gt;&lt;p&gt;

&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SO08">
<description>&lt;b&gt;Small Outline Package&lt;/b&gt; SOIC 150 mil</description>
<wire x1="2.159" y1="1.9558" x2="-2.159" y2="1.9558" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.9558" x2="2.54" y2="-1.5748" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.54" y1="1.5748" x2="-2.159" y2="1.9558" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="1.9558" x2="2.54" y2="1.5748" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-1.5748" x2="-2.159" y2="-1.9558" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.159" y1="-1.9558" x2="2.159" y2="-1.9558" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.5748" x2="2.54" y2="1.5748" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.5748" x2="-2.54" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.508" x2="-2.54" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.508" x2="-2.54" y2="-1.5748" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.508" x2="-2.54" y2="-0.508" width="0.1524" layer="21" curve="-180"/>
<wire x1="-2.54" y1="-1.6002" x2="2.54" y2="-1.6002" width="0.0508" layer="21"/>
<smd name="1" x="-1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="-1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="-0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<text x="3.937" y="-2.032" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<text x="-2.921" y="-1.905" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="1.651" y1="1.9558" x2="2.159" y2="3.0988" layer="51"/>
<rectangle x1="-2.159" y1="-3.0988" x2="-1.651" y2="-1.9558" layer="51"/>
<rectangle x1="-0.889" y1="-3.0988" x2="-0.381" y2="-1.9558" layer="51"/>
<rectangle x1="0.381" y1="-3.0734" x2="0.889" y2="-1.9304" layer="51"/>
<rectangle x1="1.651" y1="-3.0988" x2="2.159" y2="-1.9558" layer="51"/>
<rectangle x1="0.381" y1="1.9558" x2="0.889" y2="3.0988" layer="51"/>
<rectangle x1="-0.889" y1="1.9558" x2="-0.381" y2="3.0988" layer="51"/>
<rectangle x1="-2.159" y1="1.9558" x2="-1.651" y2="3.0988" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MAX481">
<wire x1="-10.16" y1="12.7" x2="10.16" y2="12.7" width="0.254" layer="94"/>
<wire x1="10.16" y1="12.7" x2="10.16" y2="2.54" width="0.254" layer="94"/>
<wire x1="10.16" y1="2.54" x2="10.16" y2="-2.54" width="0.254" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="10.16" y2="-12.7" width="0.254" layer="94"/>
<wire x1="10.16" y1="-12.7" x2="-10.16" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-12.7" x2="-10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-7.62" x2="-10.16" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-2.54" x2="-10.16" y2="2.54" width="0.254" layer="94"/>
<wire x1="-10.16" y1="2.54" x2="-10.16" y2="7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="7.62" x2="-10.16" y2="12.7" width="0.254" layer="94"/>
<wire x1="1.27" y1="11.43" x2="1.27" y2="9.525" width="0.127" layer="94"/>
<wire x1="1.27" y1="9.525" x2="1.27" y2="3.81" width="0.127" layer="94"/>
<wire x1="1.27" y1="3.81" x2="-4.445" y2="7.62" width="0.127" layer="94"/>
<wire x1="-4.445" y1="7.62" x2="1.27" y2="11.43" width="0.127" layer="94"/>
<wire x1="-4.445" y1="-11.43" x2="-4.445" y2="-7.62" width="0.127" layer="94"/>
<wire x1="-4.445" y1="-7.62" x2="-4.445" y2="-3.81" width="0.127" layer="94"/>
<wire x1="-4.445" y1="-3.81" x2="2.54" y2="-7.62" width="0.127" layer="94"/>
<wire x1="2.54" y1="-7.62" x2="-4.445" y2="-11.43" width="0.127" layer="94"/>
<wire x1="-3.302" y1="2.54" x2="-1.27" y2="2.54" width="0.127" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="4.064" width="0.127" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-1.905" y2="-2.54" width="0.127" layer="94"/>
<wire x1="-1.905" y1="-2.54" x2="-1.905" y2="-5.207" width="0.127" layer="94"/>
<wire x1="2.54" y1="-7.62" x2="6.985" y2="-7.62" width="0.127" layer="94"/>
<wire x1="6.985" y1="-7.62" x2="6.985" y2="-2.54" width="0.127" layer="94"/>
<wire x1="6.985" y1="-2.54" x2="6.985" y2="9.525" width="0.127" layer="94"/>
<wire x1="1.27" y1="9.525" x2="6.985" y2="9.525" width="0.127" layer="94"/>
<wire x1="1.016" y1="-5.715" x2="3.81" y2="-5.715" width="0.127" layer="94"/>
<wire x1="3.81" y1="-5.715" x2="3.81" y2="2.54" width="0.127" layer="94"/>
<wire x1="3.81" y1="2.54" x2="3.81" y2="5.715" width="0.127" layer="94"/>
<wire x1="3.81" y1="5.715" x2="2.54" y2="5.715" width="0.127" layer="94"/>
<wire x1="10.16" y1="2.54" x2="3.81" y2="2.54" width="0.127" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="6.985" y2="-2.54" width="0.127" layer="94"/>
<wire x1="-10.16" y1="7.62" x2="-8.382" y2="7.62" width="0.127" layer="94"/>
<wire x1="-4.953" y1="7.62" x2="-4.445" y2="7.62" width="0.127" layer="94"/>
<wire x1="-10.16" y1="2.54" x2="-8.382" y2="2.54" width="0.127" layer="94"/>
<wire x1="-10.16" y1="-7.62" x2="-8.509" y2="-7.62" width="0.127" layer="94"/>
<wire x1="-5.334" y1="-7.62" x2="-4.445" y2="-7.62" width="0.127" layer="94"/>
<wire x1="-10.16" y1="-2.54" x2="-8.509" y2="-2.54" width="0.127" layer="94"/>
<circle x="-1.27" y="4.699" radius="0.635" width="0.127" layer="94"/>
<circle x="1.905" y="5.715" radius="0.635" width="0.127" layer="94"/>
<circle x="0.381" y="-5.715" radius="0.635" width="0.127" layer="94"/>
<circle x="3.81" y="2.54" radius="0.254" width="0.4064" layer="94"/>
<circle x="6.985" y="-2.54" radius="0.254" width="0.4064" layer="94"/>
<text x="7.62" y="-5.08" size="1.778" layer="95">A</text>
<text x="7.62" y="3.81" size="1.778" layer="95">B</text>
<text x="-10.16" y="13.97" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-15.24" size="1.778" layer="96">&gt;VALUE</text>
<pin name="RO" x="-12.7" y="7.62" length="short" direction="out"/>
<pin name="RE/" x="-12.7" y="2.54" length="short" direction="in"/>
<pin name="DE" x="-12.7" y="-2.54" length="short" direction="in"/>
<pin name="DI" x="-12.7" y="-7.62" length="short" direction="in"/>
<pin name="A" x="12.7" y="-2.54" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="B" x="12.7" y="2.54" visible="pad" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="VCC-GND">
<text x="1.524" y="-5.08" size="1.016" layer="95" rot="R90">GND</text>
<text x="1.524" y="2.54" size="1.016" layer="95" rot="R90">VCC</text>
<text x="-0.762" y="-0.762" size="1.778" layer="95">&gt;NAME</text>
<pin name="VCC" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
<pin name="GND" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MAX481CSA" prefix="IC">
<description>&lt;b&gt;RS485 TRANSEIVER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MAX481" x="0" y="0"/>
<gate name="P" symbol="VCC-GND" x="20.32" y="0" addlevel="request"/>
</gates>
<devices>
<device name="" package="SO08">
<connects>
<connect gate="G$1" pin="A" pad="6"/>
<connect gate="G$1" pin="B" pad="7"/>
<connect gate="G$1" pin="DE" pad="3"/>
<connect gate="G$1" pin="DI" pad="4"/>
<connect gate="G$1" pin="RE/" pad="2"/>
<connect gate="G$1" pin="RO" pad="1"/>
<connect gate="P" pin="GND" pad="5"/>
<connect gate="P" pin="VCC" pad="8"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="MAXIM" constant="no"/>
<attribute name="MPN" value="MAX481CSA" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="90C3817" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X07">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="3.81" y1="0.635" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0.635" x2="6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-0.635" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="0.635" x2="-8.89" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-8.89" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-0.635" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-1.27" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="8.89" y2="0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="0.635" x2="8.89" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="-0.635" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="7.62" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-8.9662" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-8.89" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="-5.334" y1="-0.254" x2="-4.826" y2="0.254" layer="51"/>
<rectangle x1="-7.874" y1="-0.254" x2="-7.366" y2="0.254" layer="51"/>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
</package>
<package name="1X07/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-8.89" y1="-1.905" x2="-6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-1.905" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-8.89" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="0.635" x2="-8.89" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="6.985" x2="-7.62" y2="1.27" width="0.762" layer="21"/>
<wire x1="-6.35" y1="-1.905" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="6.985" x2="-5.08" y2="1.27" width="0.762" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="6.985" x2="-2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="6.985" x2="0" y2="1.27" width="0.762" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="6.985" x2="2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0.635" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="6.985" x2="5.08" y2="1.27" width="0.762" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="8.89" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="8.89" y1="-1.905" x2="8.89" y2="0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="0.635" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="6.985" x2="7.62" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-7.62" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-5.08" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="0" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="7.62" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-9.525" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="10.795" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-8.001" y1="0.635" x2="-7.239" y2="1.143" layer="21"/>
<rectangle x1="-5.461" y1="0.635" x2="-4.699" y2="1.143" layer="21"/>
<rectangle x1="-2.921" y1="0.635" x2="-2.159" y2="1.143" layer="21"/>
<rectangle x1="-0.381" y1="0.635" x2="0.381" y2="1.143" layer="21"/>
<rectangle x1="2.159" y1="0.635" x2="2.921" y2="1.143" layer="21"/>
<rectangle x1="4.699" y1="0.635" x2="5.461" y2="1.143" layer="21"/>
<rectangle x1="7.239" y1="0.635" x2="8.001" y2="1.143" layer="21"/>
<rectangle x1="-8.001" y1="-2.921" x2="-7.239" y2="-1.905" layer="21"/>
<rectangle x1="-5.461" y1="-2.921" x2="-4.699" y2="-1.905" layer="21"/>
<rectangle x1="-2.921" y1="-2.921" x2="-2.159" y2="-1.905" layer="21"/>
<rectangle x1="-0.381" y1="-2.921" x2="0.381" y2="-1.905" layer="21"/>
<rectangle x1="2.159" y1="-2.921" x2="2.921" y2="-1.905" layer="21"/>
<rectangle x1="4.699" y1="-2.921" x2="5.461" y2="-1.905" layer="21"/>
<rectangle x1="7.239" y1="-2.921" x2="8.001" y2="-1.905" layer="21"/>
</package>
<package name="1X16">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="15.24" y1="0.635" x2="15.875" y2="1.27" width="0.1524" layer="21"/>
<wire x1="15.875" y1="1.27" x2="17.145" y2="1.27" width="0.1524" layer="21"/>
<wire x1="17.145" y1="1.27" x2="17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="17.78" y1="0.635" x2="17.78" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-0.635" x2="17.145" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="17.145" y1="-1.27" x2="15.875" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="15.875" y1="-1.27" x2="15.24" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="10.795" y1="1.27" x2="12.065" y2="1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="1.27" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-0.635" x2="12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="13.335" y2="1.27" width="0.1524" layer="21"/>
<wire x1="13.335" y1="1.27" x2="14.605" y2="1.27" width="0.1524" layer="21"/>
<wire x1="14.605" y1="1.27" x2="15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="15.24" y1="0.635" x2="15.24" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-0.635" x2="14.605" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="14.605" y1="-1.27" x2="13.335" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="13.335" y1="-1.27" x2="12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="10.795" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="-1.27" x2="10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-1.27" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="1.27" x2="-10.795" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="1.27" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-0.635" x2="-10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="1.27" x2="-8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-1.27" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-1.27" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0.635" x2="-14.605" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="1.27" x2="-13.335" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="1.27" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="0.635" x2="-12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-0.635" x2="-13.335" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-1.27" x2="-14.605" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="-1.27" x2="-15.24" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="1.27" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-0.635" x2="-12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-1.27" x2="-12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="1.27" x2="-18.415" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="1.27" x2="-17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="0.635" x2="-17.78" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-0.635" x2="-18.415" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="0.635" x2="-17.145" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="1.27" x2="-15.875" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="1.27" x2="-15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0.635" x2="-15.24" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-0.635" x2="-15.875" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="-1.27" x2="-17.145" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="-1.27" x2="-17.78" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="0.635" x2="-20.32" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="1.27" x2="-20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-0.635" x2="-19.685" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="-1.27" x2="-19.685" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="17.78" y1="0.635" x2="18.415" y2="1.27" width="0.1524" layer="21"/>
<wire x1="18.415" y1="1.27" x2="19.685" y2="1.27" width="0.1524" layer="21"/>
<wire x1="19.685" y1="1.27" x2="20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="20.32" y1="0.635" x2="20.32" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-0.635" x2="19.685" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="19.685" y1="-1.27" x2="18.415" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="18.415" y1="-1.27" x2="17.78" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-19.05" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-16.51" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-13.97" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="11" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="12" x="8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="13" x="11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="14" x="13.97" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="15" x="16.51" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="16" x="19.05" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-20.3962" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-20.32" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="16.256" y1="-0.254" x2="16.764" y2="0.254" layer="51"/>
<rectangle x1="13.716" y1="-0.254" x2="14.224" y2="0.254" layer="51"/>
<rectangle x1="11.176" y1="-0.254" x2="11.684" y2="0.254" layer="51"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="-11.684" y1="-0.254" x2="-11.176" y2="0.254" layer="51"/>
<rectangle x1="-14.224" y1="-0.254" x2="-13.716" y2="0.254" layer="51"/>
<rectangle x1="-16.764" y1="-0.254" x2="-16.256" y2="0.254" layer="51"/>
<rectangle x1="-19.304" y1="-0.254" x2="-18.796" y2="0.254" layer="51"/>
<rectangle x1="18.796" y1="-0.254" x2="19.304" y2="0.254" layer="51"/>
</package>
<package name="1X16/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-20.32" y1="-1.905" x2="-17.78" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-1.905" x2="-17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="0.635" x2="-20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="0.635" x2="-20.32" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="6.985" x2="-19.05" y2="1.27" width="0.762" layer="21"/>
<wire x1="-17.78" y1="-1.905" x2="-15.24" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-1.905" x2="-15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0.635" x2="-17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="6.985" x2="-16.51" y2="1.27" width="0.762" layer="21"/>
<wire x1="-15.24" y1="-1.905" x2="-12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-1.905" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="0.635" x2="-15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-13.97" y1="6.985" x2="-13.97" y2="1.27" width="0.762" layer="21"/>
<wire x1="-12.7" y1="-1.905" x2="-10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="6.985" x2="-11.43" y2="1.27" width="0.762" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="6.985" x2="-8.89" y2="1.27" width="0.762" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="6.985" x2="-6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="-3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="6.985" x2="6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="6.985" x2="8.89" y2="1.27" width="0.762" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-1.905" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="11.43" y1="6.985" x2="11.43" y2="1.27" width="0.762" layer="21"/>
<wire x1="12.7" y1="-1.905" x2="15.24" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-1.905" x2="15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="15.24" y1="0.635" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="13.97" y1="6.985" x2="13.97" y2="1.27" width="0.762" layer="21"/>
<wire x1="15.24" y1="-1.905" x2="17.78" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-1.905" x2="17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="17.78" y1="0.635" x2="15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="16.51" y1="6.985" x2="16.51" y2="1.27" width="0.762" layer="21"/>
<wire x1="17.78" y1="-1.905" x2="20.32" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-1.905" x2="20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="20.32" y1="0.635" x2="17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="19.05" y1="6.985" x2="19.05" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-19.05" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-16.51" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-13.97" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-11.43" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-8.89" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="-6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="-3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="11" x="6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="12" x="8.89" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="13" x="11.43" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="14" x="13.97" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="15" x="16.51" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="16" x="19.05" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-20.955" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="22.225" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-19.431" y1="0.635" x2="-18.669" y2="1.143" layer="21"/>
<rectangle x1="-16.891" y1="0.635" x2="-16.129" y2="1.143" layer="21"/>
<rectangle x1="-14.351" y1="0.635" x2="-13.589" y2="1.143" layer="21"/>
<rectangle x1="-11.811" y1="0.635" x2="-11.049" y2="1.143" layer="21"/>
<rectangle x1="-9.271" y1="0.635" x2="-8.509" y2="1.143" layer="21"/>
<rectangle x1="-6.731" y1="0.635" x2="-5.969" y2="1.143" layer="21"/>
<rectangle x1="-4.191" y1="0.635" x2="-3.429" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="3.429" y1="0.635" x2="4.191" y2="1.143" layer="21"/>
<rectangle x1="5.969" y1="0.635" x2="6.731" y2="1.143" layer="21"/>
<rectangle x1="8.509" y1="0.635" x2="9.271" y2="1.143" layer="21"/>
<rectangle x1="11.049" y1="0.635" x2="11.811" y2="1.143" layer="21"/>
<rectangle x1="13.589" y1="0.635" x2="14.351" y2="1.143" layer="21"/>
<rectangle x1="16.129" y1="0.635" x2="16.891" y2="1.143" layer="21"/>
<rectangle x1="18.669" y1="0.635" x2="19.431" y2="1.143" layer="21"/>
<rectangle x1="-19.431" y1="-2.921" x2="-18.669" y2="-1.905" layer="21"/>
<rectangle x1="-16.891" y1="-2.921" x2="-16.129" y2="-1.905" layer="21"/>
<rectangle x1="-14.351" y1="-2.921" x2="-13.589" y2="-1.905" layer="21"/>
<rectangle x1="-11.811" y1="-2.921" x2="-11.049" y2="-1.905" layer="21"/>
<rectangle x1="-9.271" y1="-2.921" x2="-8.509" y2="-1.905" layer="21"/>
<rectangle x1="-6.731" y1="-2.921" x2="-5.969" y2="-1.905" layer="21"/>
<rectangle x1="-4.191" y1="-2.921" x2="-3.429" y2="-1.905" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
<rectangle x1="3.429" y1="-2.921" x2="4.191" y2="-1.905" layer="21"/>
<rectangle x1="5.969" y1="-2.921" x2="6.731" y2="-1.905" layer="21"/>
<rectangle x1="8.509" y1="-2.921" x2="9.271" y2="-1.905" layer="21"/>
<rectangle x1="11.049" y1="-2.921" x2="11.811" y2="-1.905" layer="21"/>
<rectangle x1="13.589" y1="-2.921" x2="14.351" y2="-1.905" layer="21"/>
<rectangle x1="16.129" y1="-2.921" x2="16.891" y2="-1.905" layer="21"/>
<rectangle x1="18.669" y1="-2.921" x2="19.431" y2="-1.905" layer="21"/>
</package>
<package name="1X10">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="7.62" y1="0.635" x2="8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-1.27" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="1.27" x2="-10.795" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="1.27" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-0.635" x2="-10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="1.27" x2="-8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-1.27" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-1.27" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="0.635" x2="-12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="1.27" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-0.635" x2="-12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-1.27" x2="-12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="10.795" y1="1.27" x2="12.065" y2="1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="1.27" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-0.635" x2="12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="10.795" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="-1.27" x2="10.795" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-12.7762" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-12.7" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="-11.684" y1="-0.254" x2="-11.176" y2="0.254" layer="51"/>
<rectangle x1="11.176" y1="-0.254" x2="11.684" y2="0.254" layer="51"/>
</package>
<package name="1X10/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-12.7" y1="-1.905" x2="-10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="0.635" x2="-12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="6.985" x2="-11.43" y2="1.27" width="0.762" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="6.985" x2="-8.89" y2="1.27" width="0.762" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="6.985" x2="-6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="-3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="6.985" x2="6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="6.985" x2="8.89" y2="1.27" width="0.762" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-1.905" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="11.43" y1="6.985" x2="11.43" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-11.43" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-8.89" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="11.43" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-13.335" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="14.605" y="-4.445" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-11.811" y1="0.635" x2="-11.049" y2="1.143" layer="21"/>
<rectangle x1="-9.271" y1="0.635" x2="-8.509" y2="1.143" layer="21"/>
<rectangle x1="-6.731" y1="0.635" x2="-5.969" y2="1.143" layer="21"/>
<rectangle x1="-4.191" y1="0.635" x2="-3.429" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="3.429" y1="0.635" x2="4.191" y2="1.143" layer="21"/>
<rectangle x1="5.969" y1="0.635" x2="6.731" y2="1.143" layer="21"/>
<rectangle x1="8.509" y1="0.635" x2="9.271" y2="1.143" layer="21"/>
<rectangle x1="11.049" y1="0.635" x2="11.811" y2="1.143" layer="21"/>
<rectangle x1="-11.811" y1="-2.921" x2="-11.049" y2="-1.905" layer="21"/>
<rectangle x1="-9.271" y1="-2.921" x2="-8.509" y2="-1.905" layer="21"/>
<rectangle x1="-6.731" y1="-2.921" x2="-5.969" y2="-1.905" layer="21"/>
<rectangle x1="-4.191" y1="-2.921" x2="-3.429" y2="-1.905" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
<rectangle x1="3.429" y1="-2.921" x2="4.191" y2="-1.905" layer="21"/>
<rectangle x1="5.969" y1="-2.921" x2="6.731" y2="-1.905" layer="21"/>
<rectangle x1="8.509" y1="-2.921" x2="9.271" y2="-1.905" layer="21"/>
<rectangle x1="11.049" y1="-2.921" x2="11.811" y2="-1.905" layer="21"/>
</package>
<package name="2X05">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-6.35" y1="-1.905" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-1.905" x2="-6.35" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="1.905" x2="-5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.54" x2="-4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.905" x2="-3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.905" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-2.54" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.54" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-2.54" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.905" x2="4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="2.54" x2="5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.54" x2="6.35" y2="1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="1.905" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="5.715" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-5.08" y="1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="-2.54" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="-2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="0" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="0" y="1.27" drill="1.016" shape="octagon"/>
<pad name="7" x="2.54" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="8" x="2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="9" x="5.08" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="10" x="5.08" y="1.27" drill="1.016" shape="octagon"/>
<text x="-6.35" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.35" y="-4.445" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-5.334" y1="-1.524" x2="-4.826" y2="-1.016" layer="51"/>
<rectangle x1="-5.334" y1="1.016" x2="-4.826" y2="1.524" layer="51"/>
<rectangle x1="-2.794" y1="1.016" x2="-2.286" y2="1.524" layer="51"/>
<rectangle x1="-2.794" y1="-1.524" x2="-2.286" y2="-1.016" layer="51"/>
<rectangle x1="-0.254" y1="1.016" x2="0.254" y2="1.524" layer="51"/>
<rectangle x1="-0.254" y1="-1.524" x2="0.254" y2="-1.016" layer="51"/>
<rectangle x1="2.286" y1="1.016" x2="2.794" y2="1.524" layer="51"/>
<rectangle x1="2.286" y1="-1.524" x2="2.794" y2="-1.016" layer="51"/>
<rectangle x1="4.826" y1="1.016" x2="5.334" y2="1.524" layer="51"/>
<rectangle x1="4.826" y1="-1.524" x2="5.334" y2="-1.016" layer="51"/>
</package>
<package name="2X05/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-6.35" y1="-1.905" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="6.985" x2="-5.08" y2="1.27" width="0.762" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="6.985" x2="-2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="6.985" x2="0" y2="1.27" width="0.762" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="6.985" x2="2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0.635" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="6.985" x2="5.08" y2="1.27" width="0.762" layer="21"/>
<pad name="2" x="-5.08" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="4" x="-2.54" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="6" x="0" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="8" x="2.54" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="10" x="5.08" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="1" x="-5.08" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="3" x="-2.54" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="5" x="0" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="7" x="2.54" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="9" x="5.08" y="-6.35" drill="1.016" shape="octagon"/>
<text x="-6.985" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="8.255" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-5.461" y1="0.635" x2="-4.699" y2="1.143" layer="21"/>
<rectangle x1="-2.921" y1="0.635" x2="-2.159" y2="1.143" layer="21"/>
<rectangle x1="-0.381" y1="0.635" x2="0.381" y2="1.143" layer="21"/>
<rectangle x1="2.159" y1="0.635" x2="2.921" y2="1.143" layer="21"/>
<rectangle x1="4.699" y1="0.635" x2="5.461" y2="1.143" layer="21"/>
<rectangle x1="-5.461" y1="-2.921" x2="-4.699" y2="-1.905" layer="21"/>
<rectangle x1="-2.921" y1="-2.921" x2="-2.159" y2="-1.905" layer="21"/>
<rectangle x1="-5.461" y1="-5.461" x2="-4.699" y2="-4.699" layer="21"/>
<rectangle x1="-5.461" y1="-4.699" x2="-4.699" y2="-2.921" layer="51"/>
<rectangle x1="-2.921" y1="-4.699" x2="-2.159" y2="-2.921" layer="51"/>
<rectangle x1="-2.921" y1="-5.461" x2="-2.159" y2="-4.699" layer="21"/>
<rectangle x1="-0.381" y1="-2.921" x2="0.381" y2="-1.905" layer="21"/>
<rectangle x1="2.159" y1="-2.921" x2="2.921" y2="-1.905" layer="21"/>
<rectangle x1="-0.381" y1="-5.461" x2="0.381" y2="-4.699" layer="21"/>
<rectangle x1="-0.381" y1="-4.699" x2="0.381" y2="-2.921" layer="51"/>
<rectangle x1="2.159" y1="-4.699" x2="2.921" y2="-2.921" layer="51"/>
<rectangle x1="2.159" y1="-5.461" x2="2.921" y2="-4.699" layer="21"/>
<rectangle x1="4.699" y1="-2.921" x2="5.461" y2="-1.905" layer="21"/>
<rectangle x1="4.699" y1="-5.461" x2="5.461" y2="-4.699" layer="21"/>
<rectangle x1="4.699" y1="-4.699" x2="5.461" y2="-2.921" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="PINHD7">
<wire x1="-6.35" y1="-10.16" x2="1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-10.16" x2="1.27" y2="10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="10.16" x2="-6.35" y2="10.16" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="10.16" x2="-6.35" y2="-10.16" width="0.4064" layer="94"/>
<text x="-6.35" y="10.795" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="7" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
<symbol name="PINHD16">
<wire x1="-6.35" y1="-22.86" x2="1.27" y2="-22.86" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-22.86" x2="1.27" y2="20.32" width="0.4064" layer="94"/>
<wire x1="1.27" y1="20.32" x2="-6.35" y2="20.32" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="20.32" x2="-6.35" y2="-22.86" width="0.4064" layer="94"/>
<text x="-6.35" y="20.955" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-25.4" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="17.78" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="15.24" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="7" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="8" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="9" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="10" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="11" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="12" x="-2.54" y="-10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="13" x="-2.54" y="-12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="14" x="-2.54" y="-15.24" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="15" x="-2.54" y="-17.78" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="16" x="-2.54" y="-20.32" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
<symbol name="PINHD10">
<wire x1="-6.35" y1="-15.24" x2="1.27" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-15.24" x2="1.27" y2="12.7" width="0.4064" layer="94"/>
<wire x1="1.27" y1="12.7" x2="-6.35" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="12.7" x2="-6.35" y2="-15.24" width="0.4064" layer="94"/>
<text x="-6.35" y="13.335" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-17.78" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="7" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="8" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="9" x="-2.54" y="-10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="10" x="-2.54" y="-12.7" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
<symbol name="PINH2X5">
<wire x1="-6.35" y1="-7.62" x2="8.89" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="8.89" y1="-7.62" x2="8.89" y2="7.62" width="0.4064" layer="94"/>
<wire x1="8.89" y1="7.62" x2="-6.35" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="7.62" x2="-6.35" y2="-7.62" width="0.4064" layer="94"/>
<text x="-6.35" y="8.255" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="5.08" y="5.08" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="3" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="5.08" y="2.54" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="5" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="5.08" y="0" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="7" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="8" x="5.08" y="-2.54" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="9" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="10" x="5.08" y="-5.08" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X7" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD7" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X07">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X07/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PINHD-1X16" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD16" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X16">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="13" pad="13"/>
<connect gate="A" pin="14" pad="14"/>
<connect gate="A" pin="15" pad="15"/>
<connect gate="A" pin="16" pad="16"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X16/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="13" pad="13"/>
<connect gate="A" pin="14" pad="14"/>
<connect gate="A" pin="15" pad="15"/>
<connect gate="A" pin="16" pad="16"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PINHD-1X10" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD10" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X10">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X10/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PINHD-2X5" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINH2X5" x="0" y="0"/>
</gates>
<devices>
<device name="" package="2X05">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="2X05/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="hgg" deviceset="FRIENDSHIP" device="CONNECTOR"/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="IC1" library="maxim" deviceset="MAX481CSA" device=""/>
<part name="IC2" library="maxim" deviceset="MAX481CSA" device=""/>
<part name="JP1" library="pinhead" deviceset="PINHD-1X7" device=""/>
<part name="JP2" library="pinhead" deviceset="PINHD-1X16" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="JP3" library="pinhead" deviceset="PINHD-1X10" device=""/>
<part name="JP4" library="pinhead" deviceset="PINHD-2X5" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="60.96" y="78.74"/>
<instance part="GND1" gate="1" x="48.26" y="-22.86"/>
<instance part="IC1" gate="G$1" x="5.08" y="38.1"/>
<instance part="IC2" gate="G$1" x="5.08" y="68.58"/>
<instance part="JP1" gate="A" x="33.02" y="63.5" rot="R180"/>
<instance part="JP2" gate="A" x="-50.8" y="40.64" rot="R180"/>
<instance part="IC2" gate="P" x="-81.28" y="88.9"/>
<instance part="IC1" gate="P" x="-76.2" y="88.9"/>
<instance part="GND2" gate="1" x="-81.28" y="73.66"/>
<instance part="GND3" gate="1" x="-76.2" y="73.66"/>
<instance part="JP3" gate="A" x="40.64" y="-50.8" rot="R180"/>
<instance part="JP4" gate="A" x="73.66" y="-43.18"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PRSNT1"/>
<wire x1="50.8" y1="93.98" x2="35.56" y2="93.98" width="0.1524" layer="91"/>
<wire x1="35.56" y1="93.98" x2="35.56" y2="86.36" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="PRSNT2"/>
<wire x1="35.56" y1="86.36" x2="50.8" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="GND1" gate="1" pin="GND"/>
<pinref part="U$1" gate="G$1" pin="GND7"/>
<wire x1="50.8" y1="-7.62" x2="48.26" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="48.26" y1="-7.62" x2="48.26" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GND5"/>
<wire x1="50.8" y1="12.7" x2="48.26" y2="12.7" width="0.1524" layer="91"/>
<wire x1="48.26" y1="12.7" x2="48.26" y2="0" width="0.1524" layer="91"/>
<junction x="48.26" y="-7.62"/>
<wire x1="48.26" y1="0" x2="48.26" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="-48.26" y1="38.1" x2="-17.78" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="38.1" x2="-17.78" y2="12.7" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="12.7" x2="48.26" y2="12.7" width="0.1524" layer="91"/>
<junction x="48.26" y="12.7"/>
<pinref part="U$1" gate="G$1" pin="GND6"/>
<wire x1="50.8" y1="0" x2="48.26" y2="0" width="0.1524" layer="91"/>
<wire x1="48.26" y1="0" x2="-30.48" y2="0" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="0" x2="-30.48" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="25.4" x2="-48.26" y2="25.4" width="0.1524" layer="91"/>
<junction x="48.26" y="0"/>
<pinref part="U$1" gate="G$1" pin="GND1_A"/>
<wire x1="48.26" y1="66.04" x2="50.8" y2="66.04" width="0.1524" layer="91"/>
<wire x1="48.26" y1="66.04" x2="48.26" y2="60.96" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="2"/>
<pinref part="JP2" gate="A" pin="7"/>
<pinref part="U$1" gate="G$1" pin="GND2_A"/>
<wire x1="48.26" y1="60.96" x2="48.26" y2="55.88" width="0.1524" layer="91"/>
<wire x1="48.26" y1="55.88" x2="48.26" y2="12.7" width="0.1524" layer="91"/>
<wire x1="50.8" y1="60.96" x2="48.26" y2="60.96" width="0.1524" layer="91"/>
<junction x="48.26" y="60.96"/>
<pinref part="U$1" gate="G$1" pin="GND3_A"/>
<wire x1="50.8" y1="55.88" x2="48.26" y2="55.88" width="0.1524" layer="91"/>
<junction x="48.26" y="55.88"/>
<wire x1="48.26" y1="66.04" x2="48.26" y2="68.58" width="0.1524" layer="91"/>
<junction x="48.26" y="66.04"/>
<pinref part="JP1" gate="A" pin="2"/>
<wire x1="35.56" y1="58.42" x2="38.1" y2="58.42" width="0.1524" layer="91"/>
<wire x1="38.1" y1="58.42" x2="38.1" y2="63.5" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="4"/>
<wire x1="38.1" y1="63.5" x2="35.56" y2="63.5" width="0.1524" layer="91"/>
<wire x1="38.1" y1="63.5" x2="38.1" y2="68.58" width="0.1524" layer="91"/>
<junction x="38.1" y="63.5"/>
<pinref part="JP1" gate="A" pin="6"/>
<wire x1="38.1" y1="68.58" x2="35.56" y2="68.58" width="0.1524" layer="91"/>
<wire x1="38.1" y1="68.58" x2="48.26" y2="68.58" width="0.1524" layer="91"/>
<junction x="38.1" y="68.58"/>
</segment>
<segment>
<pinref part="IC2" gate="P" pin="GND"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="-81.28" y1="76.2" x2="-81.28" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC1" gate="P" pin="GND"/>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="-76.2" y1="76.2" x2="-76.2" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="BUS0-"/>
<wire x1="50.8" y1="30.48" x2="30.48" y2="30.48" width="0.1524" layer="91"/>
<wire x1="30.48" y1="30.48" x2="30.48" y2="66.04" width="0.1524" layer="91"/>
<wire x1="30.48" y1="66.04" x2="17.78" y2="66.04" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="27.94" y1="71.12" x2="27.94" y2="27.94" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="BUS0+"/>
<wire x1="27.94" y1="27.94" x2="50.8" y2="27.94" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="B"/>
<wire x1="27.94" y1="71.12" x2="17.78" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="RE/"/>
<wire x1="-7.62" y1="71.12" x2="-10.16" y2="71.12" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="71.12" x2="-10.16" y2="66.04" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="DE"/>
<wire x1="-10.16" y1="66.04" x2="-7.62" y2="66.04" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="66.04" x2="-27.94" y2="66.04" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="66.04" x2="-27.94" y2="53.34" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="53.34" x2="-48.26" y2="53.34" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="13"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="IRQ"/>
<wire x1="50.8" y1="91.44" x2="-35.56" y2="91.44" width="0.1524" layer="91"/>
<wire x1="-35.56" y1="91.44" x2="-35.56" y2="60.96" width="0.1524" layer="91"/>
<wire x1="-35.56" y1="60.96" x2="-48.26" y2="60.96" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="16"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="/CS,IRQ"/>
<wire x1="50.8" y1="88.9" x2="-33.02" y2="88.9" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="88.9" x2="-33.02" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="58.42" x2="-48.26" y2="58.42" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="15"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="BUS1+"/>
<wire x1="50.8" y1="22.86" x2="22.86" y2="22.86" width="0.1524" layer="91"/>
<wire x1="22.86" y1="22.86" x2="22.86" y2="35.56" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="A"/>
<wire x1="17.78" y1="35.56" x2="22.86" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<wire x1="20.32" y1="40.64" x2="20.32" y2="20.32" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="BUS1-"/>
<wire x1="20.32" y1="20.32" x2="50.8" y2="20.32" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="B"/>
<wire x1="17.78" y1="40.64" x2="20.32" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GND4"/>
<wire x1="50.8" y1="25.4" x2="25.4" y2="25.4" width="0.1524" layer="91"/>
<wire x1="25.4" y1="25.4" x2="25.4" y2="53.34" width="0.1524" layer="91"/>
<wire x1="25.4" y1="53.34" x2="-22.86" y2="53.34" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="53.34" x2="-22.86" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="48.26" x2="-48.26" y2="48.26" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="11"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RE/"/>
<wire x1="-7.62" y1="40.64" x2="-10.16" y2="40.64" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="40.64" x2="-10.16" y2="35.56" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="DE"/>
<wire x1="-10.16" y1="35.56" x2="-7.62" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="40.64" x2="-10.16" y2="43.18" width="0.1524" layer="91"/>
<junction x="-10.16" y="40.64"/>
<wire x1="-10.16" y1="43.18" x2="-48.26" y2="43.18" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="9"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="TDO"/>
<wire x1="50.8" y1="45.72" x2="35.56" y2="45.72" width="0.1524" layer="91"/>
<wire x1="35.56" y1="45.72" x2="35.56" y2="48.26" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="TDI"/>
<wire x1="35.56" y1="48.26" x2="50.8" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<wire x1="-30.48" y1="60.96" x2="-30.48" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="55.88" x2="-48.26" y2="55.88" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="14"/>
<pinref part="IC2" gate="G$1" pin="DI"/>
<wire x1="-7.62" y1="60.96" x2="-30.48" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<wire x1="-25.4" y1="50.8" x2="-48.26" y2="50.8" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="12"/>
<wire x1="-25.4" y1="50.8" x2="-25.4" y2="76.2" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="RO"/>
<wire x1="-25.4" y1="76.2" x2="-7.62" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="SLOWCLKMOSI"/>
<wire x1="50.8" y1="10.16" x2="-20.32" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="10.16" x2="-20.32" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="35.56" x2="-48.26" y2="35.56" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="6"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="SLOWCLKCLK"/>
<wire x1="50.8" y1="7.62" x2="-22.86" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="7.62" x2="-22.86" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="33.02" x2="-48.26" y2="33.02" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="5"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="SLOWCLK/CS"/>
<wire x1="50.8" y1="5.08" x2="-25.4" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="5.08" x2="-25.4" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="30.48" x2="-48.26" y2="30.48" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="4"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PPS"/>
<wire x1="50.8" y1="2.54" x2="-27.94" y2="2.54" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="2.54" x2="-27.94" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="27.94" x2="-48.26" y2="27.94" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="3"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="FASTCLK3V3"/>
<wire x1="50.8" y1="-10.16" x2="-33.02" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="-10.16" x2="-33.02" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="22.86" x2="-48.26" y2="22.86" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="1"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="IC1" gate="P" pin="VCC"/>
<wire x1="-76.2" y1="96.52" x2="-76.2" y2="106.68" width="0.1524" layer="91"/>
<label x="-76.2" y="101.6" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="IC2" gate="P" pin="VCC"/>
<wire x1="-81.28" y1="96.52" x2="-81.28" y2="106.68" width="0.1524" layer="91"/>
<label x="-81.28" y="101.6" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="+5V_A"/>
<wire x1="50.8" y1="63.5" x2="40.64" y2="63.5" width="0.1524" layer="91"/>
<wire x1="40.64" y1="63.5" x2="40.64" y2="60.96" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="3"/>
<wire x1="40.64" y1="60.96" x2="35.56" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RO"/>
<wire x1="-7.62" y1="45.72" x2="-12.7" y2="45.72" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="45.72" x2="-12.7" y2="40.64" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="8"/>
<wire x1="-12.7" y1="40.64" x2="-48.26" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="DI"/>
<wire x1="-7.62" y1="30.48" x2="-15.24" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="30.48" x2="-15.24" y2="45.72" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="10"/>
<wire x1="-15.24" y1="45.72" x2="-48.26" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="+12V_A"/>
<wire x1="50.8" y1="58.42" x2="43.18" y2="58.42" width="0.1524" layer="91"/>
<wire x1="43.18" y1="58.42" x2="43.18" y2="66.04" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="5"/>
<wire x1="35.56" y1="66.04" x2="43.18" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="JP4" gate="A" pin="2"/>
<wire x1="78.74" y1="-38.1" x2="83.82" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-38.1" x2="83.82" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="JP3" gate="A" pin="10"/>
<wire x1="83.82" y1="-30.48" x2="43.18" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="43.18" y1="-30.48" x2="43.18" y2="-38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="JP3" gate="A" pin="9"/>
<wire x1="43.18" y1="-40.64" x2="45.72" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-40.64" x2="45.72" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="1"/>
<wire x1="45.72" y1="-33.02" x2="71.12" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-33.02" x2="71.12" y2="-38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<wire x1="81.28" y1="-35.56" x2="48.26" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="48.26" y1="-35.56" x2="48.26" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="JP3" gate="A" pin="8"/>
<wire x1="48.26" y1="-43.18" x2="43.18" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="4"/>
<wire x1="78.74" y1="-40.64" x2="81.28" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-40.64" x2="81.28" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="JP3" gate="A" pin="7"/>
<wire x1="43.18" y1="-45.72" x2="50.8" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="50.8" y1="-45.72" x2="50.8" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="3"/>
<wire x1="71.12" y1="-40.64" x2="50.8" y2="-40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="JP3" gate="A" pin="6"/>
<wire x1="43.18" y1="-48.26" x2="53.34" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="53.34" y1="-48.26" x2="53.34" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="53.34" y1="-27.94" x2="86.36" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-27.94" x2="86.36" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="6"/>
<wire x1="86.36" y1="-43.18" x2="78.74" y2="-43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="JP3" gate="A" pin="5"/>
<wire x1="43.18" y1="-50.8" x2="55.88" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="55.88" y1="-50.8" x2="55.88" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="5"/>
<wire x1="55.88" y1="-43.18" x2="71.12" y2="-43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="JP4" gate="A" pin="7"/>
<wire x1="71.12" y1="-45.72" x2="58.42" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="58.42" y1="-45.72" x2="58.42" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="JP3" gate="A" pin="3"/>
<wire x1="58.42" y1="-55.88" x2="43.18" y2="-55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="JP3" gate="A" pin="4"/>
<wire x1="43.18" y1="-53.34" x2="86.36" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-53.34" x2="86.36" y2="-45.72" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="8"/>
<wire x1="86.36" y1="-45.72" x2="78.74" y2="-45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="JP4" gate="A" pin="10"/>
<wire x1="78.74" y1="-48.26" x2="83.82" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-48.26" x2="83.82" y2="-58.42" width="0.1524" layer="91"/>
<pinref part="JP3" gate="A" pin="2"/>
<wire x1="83.82" y1="-58.42" x2="43.18" y2="-58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="JP3" gate="A" pin="1"/>
<wire x1="43.18" y1="-60.96" x2="60.96" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="60.96" y1="-60.96" x2="60.96" y2="-48.26" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="9"/>
<wire x1="60.96" y1="-48.26" x2="71.12" y2="-48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="3V3" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="+3V3_A"/>
<wire x1="50.8" y1="68.58" x2="50.8" y2="71.12" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="7"/>
<wire x1="50.8" y1="71.12" x2="35.56" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
