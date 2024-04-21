# Broadly Reconfigurable and Expandable Automation Device (BREAD) -- Slice Datasheet: **Relay** Slice (SLC-**RLAY**)

By: Nicholas Whisman (ngwhisma@mtu.edu) -- Revision 0, on

## Short Device Description

This device controls 4 relay channels via the Arduino, and receives
analog signals (optionally) as feedback.

## Quick Information

Device at a Glance

  --------------------- ---------------------------------
  Short title           Relay Slice
  Part \#               SLC-RLAY
  Repository Link       Link to OSF or other repository
  Academic Paper DOI    DOI link to published paper
  Device Cost           Monetary cost of the device
  Assembly Difficulty   Medium. Millable.
  Application Area      Controls, Power Monitoring
  --------------------- ---------------------------------

Device Connections

J2 -- Relay Output 1

  -------- --------------------------------- --------------------------------
  Pin \#   Description                       Rating
  1        Normally closed switch of relay   277 VAC, 30V DC, 3A
  2        Normally open switch of relay     277 VAC, 30V DC, 10A AC, 5A DC
  3        Common pin                        N/A
  -------- --------------------------------- --------------------------------

J2 -- Relay Output 2

  -------- --------------------------------- --------------------------------
  Pin \#   Description                       Rating
  1        Normally closed switch of relay   277 VAC, 30V DC, 3A
  2        Normally open switch of relay     277 VAC, 30V DC, 10A AC, 5A DC
  3        Common pin                        N/A
  -------- --------------------------------- --------------------------------

J2 -- Relay Output 3

  -------- --------------------------------- --------------------------------
  Pin \#   Description                       Rating
  1        Normally closed switch of relay   277 VAC, 30V DC, 3A
  2        Normally open switch of relay     277 VAC, 30V DC, 10A AC, 5A DC
  3        Common pin                        N/A
  -------- --------------------------------- --------------------------------

J2 -- Relay Output 4

  -------- --------------------------------- --------------------------------
  Pin \#   Description                       Rating
  1        Normally closed switch of relay   277 VAC, 30V DC, 3A
  2        Normally open switch of relay     277 VAC, 30V DC, 10A AC, 5A DC
  3        Common pin                        N/A
  -------- --------------------------------- --------------------------------

## Commands

  -------------------------------------------------------------- ------------ ------------------------ ----------------------------
  **Write Switch(es) **(no significant returns)                                                        
  **Byte**: Address                                              **Bit**: 1   **Float: **Target Temp   **Float: **Ramp Rate (d/m)
  **Timed Write** (no significant returns)                                                             
  **Byte**: Address                                              **Bit**: 0   **Float: **0             **Float: **0
  Analog Read (Returns selected voltages from analog feedback)                                         
                                                                                                       
  -------------------------------------------------------------- ------------ ------------------------ ----------------------------

## Schematic

![Figure 1: BREAD Connection Port + Power
Capacitors](Pictures/10000201000000B10000008AE55CA20DB7E33599.png "fig:"){width="1.8437in"
height="1.4374in"}\
\
\
\
\
\
\
\
\

![Figure 2: Arduino
Nano](Pictures/10000201000000B5000000F81ADBCE5816B4FBB5.png "fig:"){width="1.8854in"
height="2.5835in"}\
\
\
\
\
\
\
\
\
\
\
\

![Figure 3: One of Four Relay
Channels](Pictures/1000020100000168000000E4F8DEA46608BA91F3.png "fig:"){width="3.75in"
height="2.3752in"}\
\
\
\
\
\
\
\
\
\
\
\
\
![Figure 4: One of Four Analog Input
Paths](Pictures/10000201000000870000006936791612F2EA0655.png "fig:"){width="1.9953in"
height="1.5516in"}\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
![Figure 5: Feedback Input
Port](Pictures/10000201000000C700000060116347619EF17E0E.png "fig:"){width="2.9689in"
height="1.4319in"}\
\

\
\
\
\
\
\

## Bill of Materials

  ------------ ---------------------------------------- ---------- ------------- ----------------------------------------------------------------------
  Designator   Description                              Quantity   Cost / part   URL
  U1-4         Optocouplers                             4          0.51          <https://www.digikey.com/short/5fmc702d>
  RV1-4        10k Trimmer Potentiometer                4          4.16          <https://www.digikey.com/short/ftm98v7t>
  R1-4         1k 1206 Packaging Resistor               4          0.1           <https://www.digikey.com/short/d1dmzmbb>
  K1-4         G5Q1 SPDT Relay                          4          1.52          <https://www.digikey.com/short/vj4jr0vq>
  J6           01x04 1/10" Pitch Terminal Block         1          2.75          <https://www.digikey.com/short/rnm0hhhn>
  J2-5         01x03 1/10" Pitch Terminal Block         4          2.06          <https://www.digikey.com/short/71d77cj2>
  D5-8         5.1V Zener Diode                         4          0.22          <https://www.digikey.com/short/tvbtwpmt>
  D1-4         Standard THT Diode                       4          0.21          <https://www.digikey.com/short/tp4mrn5q>
  C1-2         10 µF 1206 Packaging Ceramic Capacitor   4          0.64          <https://www.digikey.com/short/2ffb0248>
  A1           Arduino Nano                             1          22.00         <https://www.digikey.com/en/products/detail/arduino/A000005/2638989>
  J1           01x10 Female Header Pins                 1          0.79          <https://www.digikey.com/short/23bfwwjh>
  ------------ ---------------------------------------- ---------- ------------- ----------------------------------------------------------------------

## Construction & Fabrication

List any tools that are required and short guide on the order which
parts should be soldered / assembled. Be sure to note any specialized
methods and point out components that may easily be soldered in the
incorrect orientation. Additionally include at least one picture of the
assembled board (include both sides if there are components on both
sides).

\[Image of the assembled Circuit Board\]

Fig #. Subtitle should go here.

## Configuration & Calibration

Include a list of default jumper and potentiometer positions:

Hardware Positions

-   Turn P1 to be roughly 50%
-   Turn P2 to be completely closed (turn clockwise until potentiometer
    clicks)
-   Place a jumper to short out J3. Etc...

Detail any key parameters the end-user may want to adjust in the
firmware, and if there are any special instructions before programming
the Slice.

Tools Required For Calibration

-   An oscilloscope with at least 15Mhz sampling
-   A multimeter. Etc...

List all of the tools / instruments required for calibration. Provide a
detailed & step by step guide on how to calibrate (or validate) each
unique type of channel on the card. Include what variables in the
firmware may need to be adjusted (and when). Attach a wiring diagram for
each relevant calibration circuit.

\[Image of the calibration circuit\]

Fig #. Subtitle should go here.

## Usage & Constraints

List the relevant constraints for each type of channel on the card.
These parameters may be quantities like max current, max voltage,
frequency, sampling frequency, etc.

List an example wiring diagram of the slice in use, as well as some
suggested applications

\[Image of the example usage wiring diagram\]

Fig #. Subtitle should go here.

## General Comments on Slice

This section is intended as a catch-all for any topics that are relevant
to the Slice that don't fit in any other category.

## Revision Notes

-   Rev 0 -- Initial document release (DATE HERE)
