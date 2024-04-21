# Broadly Reconfigurable and Expandable Automation Device (BREAD) -- Slice Datasheet: **Stepper Motor Control** Slice (SLC-STEP)

By: Nicholas Whisman (ngwhisma@mtu.edu) -- Revision 0, on

## Short Device Description

This device is designed to very finely control up to four stepper
motors. The system has a feedback path in the form of 4 analog inputs.
Finer control can be achieved by utilizing the microstep pin
connections.

## Quick Information

Device at a Glance

  --------------------- ---------------------------------
  Short title           Stepper Motor Control Slice
  Part \#               SLC-STEP
  Repository Link       Link to OSF or other repository
  Academic Paper DOI    DOI link to published paper
  Device Cost           Monetary cost of the device
  Assembly Difficulty   Difficult, Millable
  Application Area      Controls, Robotics
  --------------------- ---------------------------------

Device Connections

J2 -- Analog Input Paths

  -------- ---------------- --------
  Pin \#   Description      Rating
  1        Analog Input 1   5V
  2        Analog Input 2   5V
  3        Analog Input 3   5V
  4        Analog Input 4   5V
  -------- ---------------- --------

J3 -- Output to Stepper

  -------- -------------------- --------
  Pin \#   Description          Rating
  1        Motor 2, Signal 1B   ±2A
  2        Motor 2, Signal 1A   ±2A
  3        Motor 2, Signal 2A   ±2A
  4        Motor 2, Signal 2B   ±2A
  5        Motor 1, Signal 1B   ±2A
  6        Motor 1, Signal 1A   ±2A
  7        Motor 1, Signal 2A   ±2A
  8        Motor 1, Signal 2B   ±2A
  -------- -------------------- --------

J4 -- Output to Stepper

  -------- -------------------- --------
  Pin \#   Description          Rating
  1        Motor 3, Signal 2B   ±2A
  2        Motor 3, Signal 2A   ±2A
  3        Motor 3, Signal 1A   ±2A
  4        Motor 3, Signal 1B   ±2A
  5        Motor 4, Signal 2B   ±2A
  6        Motor 4, Signal 2A   ±2A
  7        Motor 4, Signal 1A   ±2A
  8        Motor 4, Signal 1B   ±2A
  -------- -------------------- --------

## 

## 

## 

## Commands

  ------------------------------------------------------------- ------------ ------------------------ ----------------------------
  **Set Up **(no significant returns)                                                                 
  **Byte**: Address                                             **Bit**: 1   **Float: **Target Temp   **Float: **Ramp Rate (d/m)
  Speed Select (no significant returns)                                                               
  **Byte**: Address                                             **Bit**: 0   **Float: **0             **Float: **0
  Step Select (no significant returns)                                                                
                                                                                                      
  Analog Read (returns voltage on selected analog input line)                                         
                                                                                                      
  ------------------------------------------------------------- ------------ ------------------------ ----------------------------

## Schematic

![Figure 1: BREAD Connection Port and Power
Capacitors](Pictures/10000201000000B50000008B2251E14136CED54D.png "fig:"){width="1.8854in"
height="1.448in"}\
\
\
\
\
\
\
\
\
\

![Figure 2: Arduino
Nano](Pictures/10000201000000B8000000F67EDD21E6041C3F8B.png "fig:"){width="1.9165in"
height="2.5626in"}

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
![Figure 3: Custom Power
Select](Pictures/10000201000000CB000000B1B1E59A2F18EF8945.png "fig:"){width="2.1146in"
height="1.8437in"}\
\
\
\
\
\
\
\
\

![Figure 4: One of four breakout stepper motor
drivers](Pictures/10000201000000BA000000EB630CBEE37B7F2C93.png "fig:"){width="1.9374in"
height="2.448in"}

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
![Figure 5: One of four feedback voltage
paths](Pictures/10000201000000AC000000611A7EE9CF99C55237.png "fig:"){width="2.3335in"
height="1.3161in"}\
\
\
\

\
\
\
\
\
![Figure 6: Signal Input
Ports](Pictures/10000201000001A6000000C95EA980D63F85C4C9.png "fig:"){width="4.3957in"
height="2.0937in"}

\
\
\
\
\
\

## 

## Bill of Materials

  ------------ --------------------------------------- ---------- ------------- ---------------------------------------------------------------------------
  Designator   Description                             Quantity   Cost / part   URL
  J5           01x03 1/10" Pitch Male Connector Pins   1          0.27          <https://www.digikey.com/short/jv0b95z0>
  C1-3         1206 Packaging 10 µF Capacitor          3          0.64          <https://www.digikey.com/short/qfrbqfhd>
  J6           01x02 1/10" Pitch Terminal Block        1          1.27          <https://www.digikey.com/short/0v8hf4h8>
  R1-4         1k 1206 Packaging Resistor              4          0.10          <https://www.digikey.com/short/wp8502p7>
  J3-4         01x08 1/10" Pitch Terminal Block        2          6.45          <https://www.digikey.com/short/mqn9fd88>
  J2           01x04 1/10" Pitch Terminal Block        1          2.75          <https://www.digikey.com/short/tv7tzq1r>
  D1-4         5.1V Zener Diode                        4          0.22          <https://www.digikey.com/short/z0f0ztp2>
  A1-4         Pololu A4988 Stepper Driver             4          5.95          <https://www.pololu.com/category/156/a4988-stepper-motor-driver-carriers>
  G1           Arduino Nano                            1          22.00         <https://www.digikey.com/en/products/detail/arduino/A000005/2638989>
  J1           01x10 Female Header Pins                1          0.79          <https://www.digikey.com/short/23bfwwjh>
  ------------ --------------------------------------- ---------- ------------- ---------------------------------------------------------------------------

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
