friendship Module Interconnect Backplane
========================================

Requirements
============
# Accomodate up to 8 pluggable modules
# Hotplugging is not required but should be considered as a future feature during design
# One slot reserved for a busmaster module featuring additional connectors to control arbitration-specific hardware (ie interrupt handling)
# Decoders for card presence, interrupt request, and card selection
# One or more differential data lines
# Power supply lines 3.3V, 5V, 12V, and GND via bus
# SPI-style broadcasting of timing information
# High-resolution clock broadcast signal with differential option for higher frequencies (ideally up to 1 GHz)

Electrical & Mechanical Design
==============================
Connectors
----------
A PCIe x4 edge connector is used to connect modules.  The extra signals required for the bus master module are connected to another PCIe x1 slot which is placed in line with the x4 connectors.

Data Bus PHY
------------
RS485, a differential serial protocol was choosen for data communications.
We've evaluated various line driver chips with up to 5 Mbps throughput.

Power Supply Lines
------------------
TBD: ampere rating of individual lines


Funtional Design
================
Card Presence Detection
-----------------------
Interrupt Requests & Bus Arbitration
--------------------------------------
Programming Modules via JTAG
----------------------------
Startup & Bus Enumeration
-------------------------
