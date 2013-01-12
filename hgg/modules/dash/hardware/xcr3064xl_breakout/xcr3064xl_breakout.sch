<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.1">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
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
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="xilinx-xc9">
<description>&lt;b&gt;XILINXIn-System Programmable CPLD Family&lt;/b&gt;&lt;p&gt;
http://www.xilinx.com&lt;br&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;p&gt;</description>
<packages>
<package name="SQFP-S-10X10-44">
<description>&lt;b&gt;QFP44&lt;/b&gt;&lt;p&gt;
shrink quad flat pack, square</description>
<wire x1="-7.4" y1="7.4" x2="7.4" y2="7.4" width="0.1998" layer="39"/>
<wire x1="7.4" y1="7.4" x2="7.4" y2="-7.4" width="0.1998" layer="39"/>
<wire x1="-7.4" y1="-7.4" x2="-7.4" y2="7.4" width="0.1998" layer="39"/>
<wire x1="7.4" y1="-7.4" x2="-7.4" y2="-7.4" width="0.1998" layer="39"/>
<wire x1="-4.91" y1="-4.91" x2="4.91" y2="-4.91" width="0.2032" layer="51"/>
<wire x1="4.91" y1="-4.91" x2="4.91" y2="4.91" width="0.2032" layer="51"/>
<wire x1="4.91" y1="4.91" x2="-4.91" y2="4.91" width="0.2032" layer="51"/>
<wire x1="-4.91" y1="4.91" x2="-4.91" y2="-4.91" width="0.2032" layer="51"/>
<wire x1="-4.72" y1="4.71" x2="4.71" y2="4.71" width="0.2032" layer="21"/>
<wire x1="4.71" y1="4.71" x2="4.71" y2="-4.71" width="0.2032" layer="21"/>
<wire x1="4.71" y1="-4.71" x2="-4.72" y2="-4.71" width="0.2032" layer="21"/>
<wire x1="-4.72" y1="-4.71" x2="-4.72" y2="4.71" width="0.2032" layer="21"/>
<circle x="-3.7501" y="-3.7501" radius="0.5002" width="0.254" layer="21"/>
<smd name="1" x="-4" y="-6" dx="0.5" dy="1.8" layer="1"/>
<smd name="2" x="-3.2" y="-6" dx="0.5" dy="1.8" layer="1"/>
<smd name="3" x="-2.4" y="-6" dx="0.5" dy="1.8" layer="1"/>
<smd name="4" x="-1.6" y="-6" dx="0.5" dy="1.8" layer="1"/>
<smd name="5" x="-0.8" y="-6" dx="0.5" dy="1.8" layer="1"/>
<smd name="6" x="0" y="-6" dx="0.5" dy="1.8" layer="1"/>
<smd name="7" x="0.8" y="-6" dx="0.5" dy="1.8" layer="1"/>
<smd name="8" x="1.6" y="-6" dx="0.5" dy="1.8" layer="1"/>
<smd name="9" x="2.4" y="-6" dx="0.5" dy="1.8" layer="1"/>
<smd name="10" x="3.2" y="-6" dx="0.5" dy="1.8" layer="1"/>
<smd name="11" x="4" y="-6" dx="0.5" dy="1.8" layer="1"/>
<smd name="12" x="6" y="-4" dx="1.8" dy="0.5" layer="1"/>
<smd name="13" x="6" y="-3.2" dx="1.8" dy="0.5" layer="1"/>
<smd name="14" x="6" y="-2.4" dx="1.8" dy="0.5" layer="1"/>
<smd name="15" x="6" y="-1.6" dx="1.8" dy="0.5" layer="1"/>
<smd name="16" x="6" y="-0.8" dx="1.8" dy="0.5" layer="1"/>
<smd name="17" x="6" y="0" dx="1.8" dy="0.5" layer="1"/>
<smd name="18" x="6" y="0.8" dx="1.8" dy="0.5" layer="1"/>
<smd name="19" x="6" y="1.6" dx="1.8" dy="0.5" layer="1"/>
<smd name="20" x="6" y="2.4" dx="1.8" dy="0.5" layer="1"/>
<smd name="21" x="6" y="3.2" dx="1.8" dy="0.5" layer="1"/>
<smd name="22" x="6" y="4" dx="1.8" dy="0.5" layer="1"/>
<smd name="23" x="4" y="6" dx="0.5" dy="1.8" layer="1"/>
<smd name="24" x="3.2" y="6" dx="0.5" dy="1.8" layer="1"/>
<smd name="25" x="2.4" y="6" dx="0.5" dy="1.8" layer="1"/>
<smd name="26" x="1.6" y="6" dx="0.5" dy="1.8" layer="1"/>
<smd name="27" x="0.8" y="6" dx="0.5" dy="1.8" layer="1"/>
<smd name="28" x="0" y="6" dx="0.5" dy="1.8" layer="1"/>
<smd name="29" x="-0.8" y="6" dx="0.5" dy="1.8" layer="1"/>
<smd name="30" x="-1.6" y="6" dx="0.5" dy="1.8" layer="1"/>
<smd name="31" x="-2.4" y="6" dx="0.5" dy="1.8" layer="1"/>
<smd name="32" x="-3.2" y="6" dx="0.5" dy="1.8" layer="1"/>
<smd name="33" x="-4" y="6" dx="0.5" dy="1.8" layer="1"/>
<smd name="34" x="-6" y="4" dx="1.8" dy="0.5" layer="1"/>
<smd name="35" x="-6" y="3.2" dx="1.8" dy="0.5" layer="1"/>
<smd name="36" x="-6" y="2.4" dx="1.8" dy="0.5" layer="1"/>
<smd name="37" x="-6" y="1.6" dx="1.8" dy="0.5" layer="1"/>
<smd name="38" x="-6" y="0.8" dx="1.8" dy="0.5" layer="1"/>
<smd name="39" x="-6" y="0" dx="1.8" dy="0.5" layer="1"/>
<smd name="40" x="-6" y="-0.8" dx="1.8" dy="0.5" layer="1"/>
<smd name="41" x="-6" y="-1.6" dx="1.8" dy="0.5" layer="1"/>
<smd name="42" x="-6" y="-2.4" dx="1.8" dy="0.5" layer="1"/>
<smd name="43" x="-6" y="-3.2" dx="1.8" dy="0.5" layer="1"/>
<smd name="44" x="-6" y="-4" dx="1.8" dy="0.5" layer="1"/>
<text x="-3.81" y="-2.175" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.81" y="1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-4.22" y1="-6.7201" x2="-3.78" y2="-4.95" layer="51"/>
<rectangle x1="-3.4201" y1="-6.7201" x2="-2.9799" y2="-4.95" layer="51"/>
<rectangle x1="-2.62" y1="-6.7201" x2="-2.1801" y2="-4.95" layer="51"/>
<rectangle x1="-1.8199" y1="-6.7201" x2="-1.38" y2="-4.95" layer="51"/>
<rectangle x1="-1.0201" y1="-6.7201" x2="-0.5799" y2="-4.95" layer="51"/>
<rectangle x1="-0.22" y1="-6.7201" x2="0.22" y2="-4.95" layer="51"/>
<rectangle x1="0.5799" y1="-6.7201" x2="1.0201" y2="-4.95" layer="51"/>
<rectangle x1="1.38" y1="-6.7201" x2="1.8199" y2="-4.95" layer="51"/>
<rectangle x1="2.1801" y1="-6.7201" x2="2.62" y2="-4.95" layer="51"/>
<rectangle x1="2.9799" y1="-6.7201" x2="3.4201" y2="-4.95" layer="51"/>
<rectangle x1="3.78" y1="-6.7201" x2="4.22" y2="-4.95" layer="51"/>
<rectangle x1="4.95" y1="-4.22" x2="6.7201" y2="-3.78" layer="51"/>
<rectangle x1="4.95" y1="-3.4201" x2="6.7201" y2="-2.9799" layer="51"/>
<rectangle x1="4.95" y1="-2.62" x2="6.7201" y2="-2.1801" layer="51"/>
<rectangle x1="4.95" y1="-1.8199" x2="6.7201" y2="-1.38" layer="51"/>
<rectangle x1="4.95" y1="-1.0201" x2="6.7201" y2="-0.5799" layer="51"/>
<rectangle x1="4.95" y1="-0.22" x2="6.7201" y2="0.22" layer="51"/>
<rectangle x1="4.95" y1="0.5799" x2="6.7201" y2="1.0201" layer="51"/>
<rectangle x1="4.95" y1="1.38" x2="6.7201" y2="1.8199" layer="51"/>
<rectangle x1="4.95" y1="2.1801" x2="6.7201" y2="2.62" layer="51"/>
<rectangle x1="4.95" y1="2.9799" x2="6.7201" y2="3.4201" layer="51"/>
<rectangle x1="4.95" y1="3.78" x2="6.7201" y2="4.22" layer="51"/>
<rectangle x1="3.78" y1="4.95" x2="4.22" y2="6.7201" layer="51"/>
<rectangle x1="2.9799" y1="4.95" x2="3.4201" y2="6.7201" layer="51"/>
<rectangle x1="2.1801" y1="4.95" x2="2.62" y2="6.7201" layer="51"/>
<rectangle x1="1.38" y1="4.95" x2="1.8199" y2="6.7201" layer="51"/>
<rectangle x1="0.5799" y1="4.95" x2="1.0201" y2="6.7201" layer="51"/>
<rectangle x1="-0.22" y1="4.95" x2="0.22" y2="6.7201" layer="51"/>
<rectangle x1="-1.0201" y1="4.95" x2="-0.5799" y2="6.7201" layer="51"/>
<rectangle x1="-1.8199" y1="4.95" x2="-1.38" y2="6.7201" layer="51"/>
<rectangle x1="-2.62" y1="4.95" x2="-2.1801" y2="6.7201" layer="51"/>
<rectangle x1="-3.4201" y1="4.95" x2="-2.9799" y2="6.7201" layer="51"/>
<rectangle x1="-4.22" y1="4.95" x2="-3.78" y2="6.7201" layer="51"/>
<rectangle x1="-6.7201" y1="3.78" x2="-4.95" y2="4.22" layer="51"/>
<rectangle x1="-6.7201" y1="2.9799" x2="-4.95" y2="3.4201" layer="51"/>
<rectangle x1="-6.7201" y1="2.1801" x2="-4.95" y2="2.62" layer="51"/>
<rectangle x1="-6.7201" y1="1.38" x2="-4.95" y2="1.8199" layer="51"/>
<rectangle x1="-6.7201" y1="0.5799" x2="-4.95" y2="1.0201" layer="51"/>
<rectangle x1="-6.7201" y1="-0.22" x2="-4.95" y2="0.22" layer="51"/>
<rectangle x1="-6.7201" y1="-1.0201" x2="-4.95" y2="-0.5799" layer="51"/>
<rectangle x1="-6.7201" y1="-1.8199" x2="-4.95" y2="-1.38" layer="51"/>
<rectangle x1="-6.7201" y1="-2.62" x2="-4.95" y2="-2.1801" layer="51"/>
<rectangle x1="-6.7201" y1="-3.4201" x2="-4.95" y2="-2.9799" layer="51"/>
<rectangle x1="-6.7201" y1="-4.22" x2="-4.95" y2="-3.78" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="XC9536_VQ44">
<wire x1="-25.4" y1="-25.4" x2="25.4" y2="-25.4" width="0.254" layer="94"/>
<wire x1="25.4" y1="-25.4" x2="25.4" y2="25.4" width="0.254" layer="94"/>
<wire x1="25.4" y1="25.4" x2="-25.4" y2="25.4" width="0.254" layer="94"/>
<wire x1="-25.4" y1="25.4" x2="-25.4" y2="-25.4" width="0.254" layer="94"/>
<text x="-5.08" y="1.27" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="PB00/06" x="-27.94" y="12.7" length="short"/>
<pin name="PB00/05" x="-27.94" y="10.16" length="short"/>
<pin name="PB00/07" x="-27.94" y="7.62" length="short"/>
<pin name="VSSIO@1" x="-27.94" y="5.08" length="short" direction="pwr"/>
<pin name="PB00/08" x="-27.94" y="2.54" length="short"/>
<pin name="PB00/09" x="-27.94" y="0" length="short"/>
<pin name="PB00/10" x="-27.94" y="-2.54" length="short"/>
<pin name="PB00/11" x="-27.94" y="-5.08" length="short"/>
<pin name="TDI" x="-27.94" y="-7.62" length="short" direction="in"/>
<pin name="TMS" x="-27.94" y="-10.16" length="short" direction="in"/>
<pin name="TCK" x="-27.94" y="-12.7" length="short" direction="in"/>
<pin name="PB00/12" x="-12.7" y="-27.94" length="short" rot="R90"/>
<pin name="PB00/13" x="-10.16" y="-27.94" length="short" rot="R90"/>
<pin name="PB00/14" x="-7.62" y="-27.94" length="short" rot="R90"/>
<pin name="VCCINT@1" x="-5.08" y="-27.94" length="short" direction="pwr" rot="R90"/>
<pin name="PB00/15" x="-2.54" y="-27.94" length="short" rot="R90"/>
<pin name="VSSINT@1" x="0" y="-27.94" length="short" direction="pwr" rot="R90"/>
<pin name="PB00/16" x="2.54" y="-27.94" length="short" rot="R90"/>
<pin name="PB01/16" x="5.08" y="-27.94" length="short" rot="R90"/>
<pin name="PB01/15" x="7.62" y="-27.94" length="short" rot="R90"/>
<pin name="PB01/14" x="10.16" y="-27.94" length="short" rot="R90"/>
<pin name="PB01/13" x="12.7" y="-27.94" length="short" rot="R90"/>
<pin name="PB01/12" x="27.94" y="-12.7" length="short" rot="R180"/>
<pin name="TDO" x="27.94" y="-10.16" length="short" direction="out" rot="R180"/>
<pin name="VSSIO@2" x="27.94" y="-7.62" length="short" direction="pwr" rot="R180"/>
<pin name="VCCIO@1" x="27.94" y="-5.08" length="short" direction="pwr" rot="R180"/>
<pin name="PB01/11" x="27.94" y="-2.54" length="short" rot="R180"/>
<pin name="PB01/10" x="27.94" y="0" length="short" rot="R180"/>
<pin name="PB01/09" x="27.94" y="2.54" length="short" rot="R180"/>
<pin name="PB01/08" x="27.94" y="5.08" length="short" rot="R180"/>
<pin name="PB01/07" x="27.94" y="7.62" length="short" rot="R180"/>
<pin name="PB01/06" x="27.94" y="10.16" length="short" rot="R180"/>
<pin name="PB01/05" x="27.94" y="12.7" length="short" rot="R180"/>
<pin name="PB01/04" x="12.7" y="27.94" length="short" rot="R270"/>
<pin name="VCCINT/VPP" x="10.16" y="27.94" length="short" direction="in" rot="R270"/>
<pin name="PB01/02" x="7.62" y="27.94" length="short" rot="R270"/>
<pin name="PB01/03" x="5.08" y="27.94" length="short" rot="R270"/>
<pin name="PB01/01" x="2.54" y="27.94" length="short" rot="R270"/>
<pin name="PB01/00" x="0" y="27.94" length="short" rot="R270"/>
<pin name="PB00/00" x="-2.54" y="27.94" length="short" rot="R270"/>
<pin name="PB00/01" x="-5.08" y="27.94" length="short" rot="R270"/>
<pin name="PB00/03" x="-7.62" y="27.94" length="short" rot="R270"/>
<pin name="PB00/02" x="-10.16" y="27.94" length="short" rot="R270"/>
<pin name="PB00/04" x="-12.7" y="27.94" length="short" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="XC9536_44VQ" prefix="IC">
<description>&lt;b&gt;xc9536_pc44&lt;/b&gt; XC9500 In-System Programmable CPLD Family&lt;p&gt;
Auto generated by &lt;i&gt;make-symbol-device-package-bsdl.ulp Rev. 34&lt;/i&gt;&lt;br&gt;
Source: xc9536_vq44.bsd</description>
<gates>
<gate name="G$1" symbol="XC9536_VQ44" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SQFP-S-10X10-44">
<connects>
<connect gate="G$1" pin="PB00/00" pad="40"/>
<connect gate="G$1" pin="PB00/01" pad="41"/>
<connect gate="G$1" pin="PB00/02" pad="43"/>
<connect gate="G$1" pin="PB00/03" pad="42"/>
<connect gate="G$1" pin="PB00/04" pad="44"/>
<connect gate="G$1" pin="PB00/05" pad="2"/>
<connect gate="G$1" pin="PB00/06" pad="1"/>
<connect gate="G$1" pin="PB00/07" pad="3"/>
<connect gate="G$1" pin="PB00/08" pad="5"/>
<connect gate="G$1" pin="PB00/09" pad="6"/>
<connect gate="G$1" pin="PB00/10" pad="7"/>
<connect gate="G$1" pin="PB00/11" pad="8"/>
<connect gate="G$1" pin="PB00/12" pad="12"/>
<connect gate="G$1" pin="PB00/13" pad="13"/>
<connect gate="G$1" pin="PB00/14" pad="14"/>
<connect gate="G$1" pin="PB00/15" pad="16"/>
<connect gate="G$1" pin="PB00/16" pad="18"/>
<connect gate="G$1" pin="PB01/00" pad="39"/>
<connect gate="G$1" pin="PB01/01" pad="38"/>
<connect gate="G$1" pin="PB01/02" pad="36"/>
<connect gate="G$1" pin="PB01/03" pad="37"/>
<connect gate="G$1" pin="PB01/04" pad="34"/>
<connect gate="G$1" pin="PB01/05" pad="33"/>
<connect gate="G$1" pin="PB01/06" pad="32"/>
<connect gate="G$1" pin="PB01/07" pad="31"/>
<connect gate="G$1" pin="PB01/08" pad="30"/>
<connect gate="G$1" pin="PB01/09" pad="29"/>
<connect gate="G$1" pin="PB01/10" pad="28"/>
<connect gate="G$1" pin="PB01/11" pad="27"/>
<connect gate="G$1" pin="PB01/12" pad="23"/>
<connect gate="G$1" pin="PB01/13" pad="22"/>
<connect gate="G$1" pin="PB01/14" pad="21"/>
<connect gate="G$1" pin="PB01/15" pad="20"/>
<connect gate="G$1" pin="PB01/16" pad="19"/>
<connect gate="G$1" pin="TCK" pad="11"/>
<connect gate="G$1" pin="TDI" pad="9"/>
<connect gate="G$1" pin="TDO" pad="24"/>
<connect gate="G$1" pin="TMS" pad="10"/>
<connect gate="G$1" pin="VCCINT/VPP" pad="35"/>
<connect gate="G$1" pin="VCCINT@1" pad="15"/>
<connect gate="G$1" pin="VCCIO@1" pad="26"/>
<connect gate="G$1" pin="VSSINT@1" pad="17"/>
<connect gate="G$1" pin="VSSIO@1" pad="4"/>
<connect gate="G$1" pin="VSSIO@2" pad="25"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="XC9536-15VQG44C" constant="no"/>
<attribute name="OC_FARNELL" value="1193227" constant="no"/>
<attribute name="OC_NEWARK" value="98K3377" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="jumper">
<description>&lt;b&gt;Jumpers&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="JP6Q">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<wire x1="-7.62" y1="-2.159" x2="-7.62" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="2.54" x2="-5.08" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="2.159" x2="-4.699" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="2.54" x2="-2.921" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="2.159" x2="-2.921" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="2.159" x2="-2.159" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="2.54" x2="-0.381" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0" y1="2.159" x2="-0.381" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="-2.54" x2="0" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="-2.54" x2="-2.159" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-2.159" x2="-2.159" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-2.159" x2="-2.921" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-2.54" x2="-4.699" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.159" x2="-4.699" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.159" x2="-5.461" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0" y1="2.159" x2="0.381" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.381" y1="2.54" x2="2.159" y2="2.54" width="0.1524" layer="21"/>
<wire x1="2.54" y1="2.159" x2="2.159" y2="2.54" width="0.1524" layer="21"/>
<wire x1="2.54" y1="2.159" x2="2.921" y2="2.54" width="0.1524" layer="21"/>
<wire x1="2.921" y1="2.54" x2="4.699" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="2.159" x2="4.699" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0" y1="-2.159" x2="0.381" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.54" x2="0.381" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-2.159" x2="2.921" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.54" x2="2.54" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.54" x2="2.921" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.54" x2="5.08" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-2.159" x2="-7.239" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-7.239" y1="-2.54" x2="-5.461" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="2.159" x2="-7.239" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-7.239" y1="2.54" x2="-5.461" y2="2.54" width="0.1524" layer="21"/>
<wire x1="7.62" y1="2.159" x2="7.62" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="5.08" y1="2.159" x2="5.461" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.461" y1="2.54" x2="7.239" y2="2.54" width="0.1524" layer="21"/>
<wire x1="7.62" y1="2.159" x2="7.239" y2="2.54" width="0.1524" layer="21"/>
<wire x1="7.239" y1="-2.54" x2="7.62" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="7.239" y1="-2.54" x2="5.461" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-2.159" x2="5.461" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="2" x="-6.35" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="3" x="-3.81" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="4" x="-3.81" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="5" x="-1.27" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="6" x="-1.27" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="7" x="1.27" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="8" x="1.27" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="9" x="3.81" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="10" x="3.81" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="11" x="6.35" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="12" x="6.35" y="1.27" drill="0.9144" shape="octagon"/>
<text x="-6.858" y="-4.191" size="1.27" layer="21" ratio="10">1</text>
<text x="-4.318" y="-4.191" size="1.27" layer="21" ratio="10">2</text>
<text x="-1.778" y="-4.191" size="1.27" layer="21" ratio="10">3</text>
<text x="-7.62" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.762" y="-4.191" size="1.27" layer="21" ratio="10">4</text>
<text x="3.302" y="-4.191" size="1.27" layer="21" ratio="10">5</text>
<text x="5.842" y="-4.191" size="1.27" layer="21" ratio="10">6</text>
<text x="-7.62" y="-5.588" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-6.6548" y1="0.9652" x2="-6.0452" y2="1.5748" layer="51"/>
<rectangle x1="-4.1148" y1="0.9652" x2="-3.5052" y2="1.5748" layer="51"/>
<rectangle x1="-1.5748" y1="0.9652" x2="-0.9652" y2="1.5748" layer="51"/>
<rectangle x1="0.9652" y1="0.9652" x2="1.5748" y2="1.5748" layer="51"/>
<rectangle x1="3.5052" y1="0.9652" x2="4.1148" y2="1.5748" layer="51"/>
<rectangle x1="6.0452" y1="0.9652" x2="6.6548" y2="1.5748" layer="51"/>
<rectangle x1="-6.6548" y1="-1.5748" x2="-6.0452" y2="-0.9652" layer="51"/>
<rectangle x1="-4.1148" y1="-1.5748" x2="-3.5052" y2="-0.9652" layer="51"/>
<rectangle x1="-1.5748" y1="-1.5748" x2="-0.9652" y2="-0.9652" layer="51"/>
<rectangle x1="0.9652" y1="-1.5748" x2="1.5748" y2="-0.9652" layer="51"/>
<rectangle x1="3.5052" y1="-1.5748" x2="4.1148" y2="-0.9652" layer="51"/>
<rectangle x1="6.0452" y1="-1.5748" x2="6.6548" y2="-0.9652" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="JP2E">
<wire x1="0" y1="0" x2="0" y2="1.27" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="1.27" width="0.4064" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="1.27" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="1.27" width="0.4064" layer="94"/>
<wire x1="-0.635" y1="0" x2="3.175" y2="0" width="0.4064" layer="94"/>
<wire x1="3.175" y1="0" x2="3.175" y2="0.635" width="0.4064" layer="94"/>
<wire x1="3.175" y1="0.635" x2="-0.635" y2="0.635" width="0.4064" layer="94"/>
<wire x1="-0.635" y1="0.635" x2="-0.635" y2="0" width="0.4064" layer="94"/>
<text x="-1.27" y="0" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="5.715" y="0" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="1" x="0" y="-2.54" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="2" x="2.54" y="-2.54" visible="pad" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="JP6QE" prefix="JP" uservalue="yes">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="JP2E" x="-20.32" y="0" addlevel="always"/>
<gate name="-2" symbol="JP2E" x="-10.16" y="0" addlevel="always"/>
<gate name="-3" symbol="JP2E" x="0" y="0" addlevel="always"/>
<gate name="-4" symbol="JP2E" x="10.16" y="0" addlevel="always"/>
<gate name="-5" symbol="JP2E" x="20.32" y="0" addlevel="always"/>
<gate name="-6" symbol="JP2E" x="30.48" y="0" addlevel="always"/>
</gates>
<devices>
<device name="" package="JP6Q">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-1" pin="2" pad="2"/>
<connect gate="-2" pin="1" pad="3"/>
<connect gate="-2" pin="2" pad="4"/>
<connect gate="-3" pin="1" pad="5"/>
<connect gate="-3" pin="2" pad="6"/>
<connect gate="-4" pin="1" pad="7"/>
<connect gate="-4" pin="2" pad="8"/>
<connect gate="-5" pin="1" pad="9"/>
<connect gate="-5" pin="2" pad="10"/>
<connect gate="-6" pin="1" pad="11"/>
<connect gate="-6" pin="2" pad="12"/>
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
<part name="IC2" library="xilinx-xc9" deviceset="XC9536_44VQ" device=""/>
<part name="JP1" library="jumper" deviceset="JP6QE" device=""/>
<part name="JP2" library="jumper" deviceset="JP6QE" device=""/>
<part name="JP3" library="jumper" deviceset="JP6QE" device=""/>
<part name="JP4" library="jumper" deviceset="JP6QE" device=""/>
<part name="JP5" library="jumper" deviceset="JP6QE" device=""/>
<part name="JP6" library="jumper" deviceset="JP6QE" device=""/>
<part name="JP7" library="jumper" deviceset="JP6QE" device=""/>
<part name="JP8" library="jumper" deviceset="JP6QE" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC2" gate="G$1" x="53.34" y="43.18"/>
<instance part="JP1" gate="-1" x="20.32" y="58.42"/>
<instance part="JP1" gate="-2" x="15.24" y="55.88"/>
<instance part="JP1" gate="-3" x="10.16" y="53.34"/>
<instance part="JP1" gate="-4" x="5.08" y="50.8"/>
<instance part="JP1" gate="-5" x="0" y="48.26"/>
<instance part="JP1" gate="-6" x="-5.08" y="45.72"/>
<instance part="JP2" gate="-1" x="-10.16" y="43.18"/>
<instance part="JP2" gate="-2" x="-15.24" y="40.64"/>
<instance part="JP2" gate="-3" x="-20.32" y="38.1"/>
<instance part="JP2" gate="-4" x="-25.4" y="35.56"/>
<instance part="JP2" gate="-5" x="-30.48" y="33.02"/>
<instance part="JP3" gate="-1" x="38.1" y="10.16" rot="R90"/>
<instance part="JP3" gate="-2" x="40.64" y="5.08" rot="R90"/>
<instance part="JP3" gate="-3" x="43.18" y="0" rot="R90"/>
<instance part="JP3" gate="-4" x="45.72" y="-5.08" rot="R90"/>
<instance part="JP3" gate="-5" x="48.26" y="-10.16" rot="R90"/>
<instance part="JP3" gate="-6" x="50.8" y="-15.24" rot="R90"/>
<instance part="JP4" gate="-1" x="53.34" y="-20.32" rot="R90"/>
<instance part="JP4" gate="-2" x="55.88" y="-25.4" rot="R90"/>
<instance part="JP4" gate="-3" x="58.42" y="-30.48" rot="R90"/>
<instance part="JP4" gate="-4" x="60.96" y="-35.56" rot="R90"/>
<instance part="JP4" gate="-5" x="63.5" y="-40.64" rot="R90"/>
<instance part="JP5" gate="-1" x="86.36" y="27.94" rot="R180"/>
<instance part="JP5" gate="-2" x="91.44" y="30.48" rot="R180"/>
<instance part="JP5" gate="-3" x="96.52" y="33.02" rot="R180"/>
<instance part="JP5" gate="-4" x="101.6" y="35.56" rot="R180"/>
<instance part="JP5" gate="-5" x="106.68" y="38.1" rot="R180"/>
<instance part="JP5" gate="-6" x="111.76" y="40.64" rot="R180"/>
<instance part="JP6" gate="-1" x="116.84" y="43.18" rot="R180"/>
<instance part="JP6" gate="-2" x="121.92" y="45.72" rot="R180"/>
<instance part="JP6" gate="-3" x="127" y="48.26" rot="R180"/>
<instance part="JP6" gate="-4" x="132.08" y="50.8" rot="R180"/>
<instance part="JP6" gate="-5" x="137.16" y="53.34" rot="R180"/>
<instance part="JP7" gate="-1" x="68.58" y="76.2" rot="R270"/>
<instance part="JP7" gate="-2" x="66.04" y="81.28" rot="R270"/>
<instance part="JP7" gate="-3" x="63.5" y="86.36" rot="R270"/>
<instance part="JP7" gate="-4" x="60.96" y="91.44" rot="R270"/>
<instance part="JP7" gate="-5" x="58.42" y="96.52" rot="R270"/>
<instance part="JP7" gate="-6" x="55.88" y="101.6" rot="R270"/>
<instance part="JP8" gate="-1" x="53.34" y="106.68" rot="R270"/>
<instance part="JP8" gate="-2" x="50.8" y="111.76" rot="R270"/>
<instance part="JP8" gate="-3" x="48.26" y="116.84" rot="R270"/>
<instance part="JP8" gate="-4" x="45.72" y="121.92" rot="R270"/>
<instance part="JP8" gate="-5" x="43.18" y="127" rot="R270"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="JP1" gate="-1" pin="2"/>
<pinref part="IC2" gate="G$1" pin="PB00/06"/>
<wire x1="22.86" y1="55.88" x2="25.4" y2="55.88" width="0.1524" layer="91"/>
<pinref part="JP1" gate="-1" pin="1"/>
<wire x1="20.32" y1="55.88" x2="22.86" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="JP1" gate="-2" pin="2"/>
<pinref part="IC2" gate="G$1" pin="PB00/05"/>
<wire x1="17.78" y1="53.34" x2="25.4" y2="53.34" width="0.1524" layer="91"/>
<pinref part="JP1" gate="-2" pin="1"/>
<wire x1="17.78" y1="53.34" x2="15.24" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="JP1" gate="-3" pin="2"/>
<pinref part="IC2" gate="G$1" pin="PB00/07"/>
<wire x1="12.7" y1="50.8" x2="25.4" y2="50.8" width="0.1524" layer="91"/>
<pinref part="JP1" gate="-3" pin="1"/>
<wire x1="12.7" y1="50.8" x2="10.16" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="JP1" gate="-4" pin="2"/>
<pinref part="IC2" gate="G$1" pin="VSSIO@1"/>
<wire x1="7.62" y1="48.26" x2="25.4" y2="48.26" width="0.1524" layer="91"/>
<pinref part="JP1" gate="-4" pin="1"/>
<wire x1="7.62" y1="48.26" x2="5.08" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="JP1" gate="-5" pin="2"/>
<pinref part="IC2" gate="G$1" pin="PB00/08"/>
<wire x1="2.54" y1="45.72" x2="25.4" y2="45.72" width="0.1524" layer="91"/>
<pinref part="JP1" gate="-5" pin="1"/>
<wire x1="2.54" y1="45.72" x2="0" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="JP1" gate="-6" pin="2"/>
<pinref part="IC2" gate="G$1" pin="PB00/09"/>
<wire x1="-2.54" y1="43.18" x2="25.4" y2="43.18" width="0.1524" layer="91"/>
<pinref part="JP1" gate="-6" pin="1"/>
<wire x1="-2.54" y1="43.18" x2="-5.08" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="PB00/10"/>
<pinref part="JP2" gate="-1" pin="2"/>
<wire x1="25.4" y1="40.64" x2="-7.62" y2="40.64" width="0.1524" layer="91"/>
<pinref part="JP2" gate="-1" pin="1"/>
<wire x1="-7.62" y1="40.64" x2="-10.16" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="PB00/11"/>
<pinref part="JP2" gate="-2" pin="2"/>
<wire x1="25.4" y1="38.1" x2="-12.7" y2="38.1" width="0.1524" layer="91"/>
<pinref part="JP2" gate="-2" pin="1"/>
<wire x1="-12.7" y1="38.1" x2="-15.24" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="TDI"/>
<pinref part="JP2" gate="-3" pin="2"/>
<wire x1="25.4" y1="35.56" x2="-17.78" y2="35.56" width="0.1524" layer="91"/>
<pinref part="JP2" gate="-3" pin="1"/>
<wire x1="-17.78" y1="35.56" x2="-20.32" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="TMS"/>
<pinref part="JP2" gate="-4" pin="2"/>
<wire x1="25.4" y1="33.02" x2="-22.86" y2="33.02" width="0.1524" layer="91"/>
<pinref part="JP2" gate="-4" pin="1"/>
<wire x1="-22.86" y1="33.02" x2="-25.4" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="TCK"/>
<pinref part="JP2" gate="-5" pin="2"/>
<wire x1="25.4" y1="30.48" x2="-27.94" y2="30.48" width="0.1524" layer="91"/>
<pinref part="JP2" gate="-5" pin="1"/>
<wire x1="-30.48" y1="30.48" x2="-27.94" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="JP3" gate="-1" pin="2"/>
<wire x1="40.64" y1="12.7" x2="40.64" y2="15.24" width="0.1524" layer="91"/>
<pinref part="JP3" gate="-1" pin="1"/>
<wire x1="40.64" y1="10.16" x2="40.64" y2="12.7" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB00/12"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="JP3" gate="-2" pin="2"/>
<wire x1="43.18" y1="7.62" x2="43.18" y2="15.24" width="0.1524" layer="91"/>
<pinref part="JP3" gate="-2" pin="1"/>
<wire x1="43.18" y1="7.62" x2="43.18" y2="5.08" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB00/13"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="JP3" gate="-3" pin="2"/>
<wire x1="45.72" y1="2.54" x2="45.72" y2="15.24" width="0.1524" layer="91"/>
<pinref part="JP3" gate="-3" pin="1"/>
<wire x1="45.72" y1="2.54" x2="45.72" y2="0" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB00/14"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="JP3" gate="-4" pin="2"/>
<wire x1="48.26" y1="-2.54" x2="48.26" y2="15.24" width="0.1524" layer="91"/>
<pinref part="JP3" gate="-4" pin="1"/>
<wire x1="48.26" y1="-2.54" x2="48.26" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="VCCINT@1"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="JP3" gate="-5" pin="2"/>
<wire x1="50.8" y1="-7.62" x2="50.8" y2="15.24" width="0.1524" layer="91"/>
<pinref part="JP3" gate="-5" pin="1"/>
<wire x1="50.8" y1="-7.62" x2="50.8" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB00/15"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="JP3" gate="-6" pin="2"/>
<wire x1="53.34" y1="-12.7" x2="53.34" y2="15.24" width="0.1524" layer="91"/>
<pinref part="JP3" gate="-6" pin="1"/>
<wire x1="53.34" y1="-12.7" x2="53.34" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="VSSINT@1"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="JP4" gate="-1" pin="2"/>
<wire x1="55.88" y1="15.24" x2="55.88" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="JP4" gate="-1" pin="1"/>
<wire x1="55.88" y1="-17.78" x2="55.88" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB00/16"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="JP4" gate="-2" pin="2"/>
<wire x1="58.42" y1="15.24" x2="58.42" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="JP4" gate="-2" pin="1"/>
<wire x1="58.42" y1="-22.86" x2="58.42" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB01/16"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="JP4" gate="-3" pin="2"/>
<wire x1="60.96" y1="15.24" x2="60.96" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="JP4" gate="-3" pin="1"/>
<wire x1="60.96" y1="-27.94" x2="60.96" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB01/15"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="JP4" gate="-4" pin="2"/>
<wire x1="63.5" y1="15.24" x2="63.5" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="JP4" gate="-4" pin="1"/>
<wire x1="63.5" y1="-33.02" x2="63.5" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB01/14"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="JP4" gate="-5" pin="2"/>
<wire x1="66.04" y1="15.24" x2="66.04" y2="-38.1" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB01/13"/>
<pinref part="JP4" gate="-5" pin="1"/>
<wire x1="66.04" y1="-40.64" x2="66.04" y2="-38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="JP5" gate="-1" pin="2"/>
<wire x1="83.82" y1="30.48" x2="81.28" y2="30.48" width="0.1524" layer="91"/>
<pinref part="JP5" gate="-1" pin="1"/>
<wire x1="86.36" y1="30.48" x2="83.82" y2="30.48" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB01/12"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="JP5" gate="-2" pin="2"/>
<wire x1="88.9" y1="33.02" x2="81.28" y2="33.02" width="0.1524" layer="91"/>
<pinref part="JP5" gate="-2" pin="1"/>
<wire x1="88.9" y1="33.02" x2="91.44" y2="33.02" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="TDO"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="JP5" gate="-3" pin="2"/>
<wire x1="93.98" y1="35.56" x2="81.28" y2="35.56" width="0.1524" layer="91"/>
<pinref part="JP5" gate="-3" pin="1"/>
<wire x1="93.98" y1="35.56" x2="96.52" y2="35.56" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="VSSIO@2"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="JP5" gate="-4" pin="2"/>
<wire x1="99.06" y1="38.1" x2="81.28" y2="38.1" width="0.1524" layer="91"/>
<pinref part="JP5" gate="-4" pin="1"/>
<wire x1="99.06" y1="38.1" x2="101.6" y2="38.1" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="VCCIO@1"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="JP5" gate="-5" pin="2"/>
<wire x1="104.14" y1="40.64" x2="81.28" y2="40.64" width="0.1524" layer="91"/>
<pinref part="JP5" gate="-5" pin="1"/>
<wire x1="104.14" y1="40.64" x2="106.68" y2="40.64" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB01/11"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="JP5" gate="-6" pin="2"/>
<wire x1="109.22" y1="43.18" x2="81.28" y2="43.18" width="0.1524" layer="91"/>
<pinref part="JP5" gate="-6" pin="1"/>
<wire x1="109.22" y1="43.18" x2="111.76" y2="43.18" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB01/10"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="JP6" gate="-1" pin="2"/>
<wire x1="81.28" y1="45.72" x2="114.3" y2="45.72" width="0.1524" layer="91"/>
<pinref part="JP6" gate="-1" pin="1"/>
<wire x1="114.3" y1="45.72" x2="116.84" y2="45.72" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB01/09"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="JP6" gate="-2" pin="2"/>
<wire x1="81.28" y1="48.26" x2="119.38" y2="48.26" width="0.1524" layer="91"/>
<pinref part="JP6" gate="-2" pin="1"/>
<wire x1="119.38" y1="48.26" x2="121.92" y2="48.26" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB01/08"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="JP6" gate="-3" pin="2"/>
<wire x1="81.28" y1="50.8" x2="124.46" y2="50.8" width="0.1524" layer="91"/>
<pinref part="JP6" gate="-3" pin="1"/>
<wire x1="124.46" y1="50.8" x2="127" y2="50.8" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB01/07"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="JP6" gate="-4" pin="2"/>
<wire x1="81.28" y1="53.34" x2="129.54" y2="53.34" width="0.1524" layer="91"/>
<pinref part="JP6" gate="-4" pin="1"/>
<wire x1="129.54" y1="53.34" x2="132.08" y2="53.34" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB01/06"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="JP6" gate="-5" pin="2"/>
<wire x1="81.28" y1="55.88" x2="134.62" y2="55.88" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB01/05"/>
<pinref part="JP6" gate="-5" pin="1"/>
<wire x1="137.16" y1="55.88" x2="134.62" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="JP7" gate="-1" pin="2"/>
<wire x1="66.04" y1="73.66" x2="66.04" y2="71.12" width="0.1524" layer="91"/>
<pinref part="JP7" gate="-1" pin="1"/>
<wire x1="66.04" y1="76.2" x2="66.04" y2="73.66" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB01/04"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="JP7" gate="-2" pin="2"/>
<wire x1="63.5" y1="78.74" x2="63.5" y2="71.12" width="0.1524" layer="91"/>
<pinref part="JP7" gate="-2" pin="1"/>
<wire x1="63.5" y1="78.74" x2="63.5" y2="81.28" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="VCCINT/VPP"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="JP7" gate="-3" pin="2"/>
<wire x1="60.96" y1="83.82" x2="60.96" y2="71.12" width="0.1524" layer="91"/>
<pinref part="JP7" gate="-3" pin="1"/>
<wire x1="60.96" y1="83.82" x2="60.96" y2="86.36" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB01/02"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="JP7" gate="-4" pin="2"/>
<wire x1="58.42" y1="88.9" x2="58.42" y2="71.12" width="0.1524" layer="91"/>
<pinref part="JP7" gate="-4" pin="1"/>
<wire x1="58.42" y1="88.9" x2="58.42" y2="91.44" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB01/03"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="JP7" gate="-5" pin="2"/>
<wire x1="55.88" y1="93.98" x2="55.88" y2="71.12" width="0.1524" layer="91"/>
<pinref part="JP7" gate="-5" pin="1"/>
<wire x1="55.88" y1="93.98" x2="55.88" y2="96.52" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB01/01"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="JP7" gate="-6" pin="2"/>
<wire x1="53.34" y1="99.06" x2="53.34" y2="71.12" width="0.1524" layer="91"/>
<pinref part="JP7" gate="-6" pin="1"/>
<wire x1="53.34" y1="99.06" x2="53.34" y2="101.6" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB01/00"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="JP8" gate="-1" pin="2"/>
<wire x1="50.8" y1="71.12" x2="50.8" y2="104.14" width="0.1524" layer="91"/>
<pinref part="JP8" gate="-1" pin="1"/>
<wire x1="50.8" y1="104.14" x2="50.8" y2="106.68" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB00/00"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="JP8" gate="-2" pin="2"/>
<wire x1="48.26" y1="71.12" x2="48.26" y2="109.22" width="0.1524" layer="91"/>
<pinref part="JP8" gate="-2" pin="1"/>
<wire x1="48.26" y1="109.22" x2="48.26" y2="111.76" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB00/01"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="JP8" gate="-3" pin="2"/>
<wire x1="45.72" y1="71.12" x2="45.72" y2="114.3" width="0.1524" layer="91"/>
<pinref part="JP8" gate="-3" pin="1"/>
<wire x1="45.72" y1="114.3" x2="45.72" y2="116.84" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB00/03"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="JP8" gate="-4" pin="2"/>
<wire x1="43.18" y1="71.12" x2="43.18" y2="119.38" width="0.1524" layer="91"/>
<pinref part="JP8" gate="-4" pin="1"/>
<wire x1="43.18" y1="119.38" x2="43.18" y2="121.92" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB00/02"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="JP8" gate="-5" pin="2"/>
<wire x1="40.64" y1="71.12" x2="40.64" y2="124.46" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="PB00/04"/>
<pinref part="JP8" gate="-5" pin="1"/>
<wire x1="40.64" y1="127" x2="40.64" y2="124.46" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
