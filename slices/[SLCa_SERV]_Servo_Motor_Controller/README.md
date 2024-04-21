# Broadly Reconfigurable and Expandable Automation Device (BREAD) -- Slice Datasheet: **Servo Motor Control** Slice (SLC-SERV)

By: Nicholas Whisman (ngwhisma@mtu.edu) -- Revision 0, on

## Short Device Description

This device controls up to 5 Servo motors. As Servo motors have internal
feedback control systems, this system thus has no feedback path.

## Quick Information

Device at a Glance

  --------------------- ---------------------------------
  Short title           Servo Motor Control Slice
  Part \#               SLC-SERV
  Repository Link       Link to OSF or other repository
  Academic Paper DOI    DOI link to published paper
  Device Cost           Monetary cost of the device
  Assembly Difficulty   Easy, Millable
  Application Area      Robotics, Controlling Machinery
  --------------------- ---------------------------------

Device Connections

J2 -- Servo Motor 1

  -------- --------------- ---------------------------------------------------
  Pin \#   Description     Rating
  1        PWM to Servo    N/A
  2        Voltage Input   Varies by Motor. Terminal can only support 10-15A
  3        GND             N/A
  -------- --------------- ---------------------------------------------------

J3 -- Servo Motor 2

  -------- --------------- ---------------------------------------------------
  Pin \#   Description     Rating
  1        PWM to Servo    N/A
  2        Voltage Input   Varies by Motor. Terminal can only support 10-15A
  3        GND             N/A
  -------- --------------- ---------------------------------------------------

J4 -- Servo Motor 3

  -------- --------------- ---------------------------------------------------
  Pin \#   Description     Rating
  1        PWM to Servo    N/A
  2        Voltage Input   Varies by Motor. Terminal can only support 10-15A
  3        GND             N/A
  -------- --------------- ---------------------------------------------------

J5 -- Servo Motor 4

  -------- --------------- ---------------------------------------------------
  Pin \#   Description     Rating
  1        PWM to Servo    N/A
  2        Voltage Input   Varies by Motor. Terminal can only support 10-15A
  3        GND             N/A
  -------- --------------- ---------------------------------------------------

J6 -- Servo Motor 5

  -------- --------------- ---------------------------------------------------
  Pin \#   Description     Rating
  1        PWM to Servo    N/A
  2        Voltage Input   Varies by Motor. Terminal can only support 10-15A
  3        GND             N/A
  -------- --------------- ---------------------------------------------------

J7 -- Power Select

  -------- -------------------- --------------------------------------------
  Pin \#   Description          Rating
  1        Power Output Pin     MUST connect one of the below to this pin.
  2        Custom Power Input   N/A
  3        Standard 12V         N/A
  -------- -------------------- --------------------------------------------

J8 -- Custom Power Input

  -------- ------------- --------
  Pin \#   Description   Rating
  1        V +           N/A
  2        GND           N/A
  -------- ------------- --------

## Commands

  ------------------------------------------ ------------ ------------------------ ----------------------------
  **Write Angle **(no significant returns)                                         
  **Byte**: Address                          **Bit**: 1   **Float: **Target Temp   **Float: **Ramp Rate (d/m)
  **Set Up **(no significant returns)                                              
  **Byte**: Address                          **Bit**: 0   **Float: **0             **Float: **0
  ------------------------------------------ ------------ ------------------------ ----------------------------

## Schematic

![Figure 1: BREAD Connection Port and Power
Capacitors](Pictures/10000201000000AE0000008A3A76791921BBFC10.png "fig:"){width="1.8126in"
height="1.4374in"}\
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

![Figure 2: Arduino
Nano](Pictures/10000201000000B3000000F5BB297BA61F296C54.png "fig:"){width="1.8646in"
height="2.552in"}\
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
![Figure 3: One of five identical Servo connection
ports](Pictures/10000201000000B1000000548FC054D5D1D202E5.png "fig:"){width="2.3701in"
height="1.1252in"}\
\
\

\
\
\
\
\
![Figure 4: Power Select
Pins](Pictures/100002010000007800000066489DB09FB6D6CFA4.png "fig:"){width="1.6457in"
height="1.3984in"}\

![Figure 5: Custom Power Input
Port](Pictures/10000201000000AF0000004494B09FB7CAD3A07B.png "fig:"){width="2.8299in"
height="1.0992in"}\
\
\
\
\
\
\
\

## Bill of Materials

  ------------ ---------------------------------- ---------- ------------- ----------------------------------------------------------------------
  Designator   Description                        Quantity   Cost / part   URL
  J8           01x02 1/10" Pitch Terminal Block   1          1.27          <https://www.digikey.com/short/792dvv77>
  J7           01x03 1/10" Pitch Connector Pins   1          0.27          <https://www.digikey.com/short/2j42vf3d>
  J2-J6        01x03 1/10" Pitch Terminal Block   5          2.06          <https://www.digikey.com/short/18bph2rj>
  J1           01x10 Female Header Pins           1          0.79          <https://www.digikey.com/short/23bfwwjh>
  C1-2         1206 Packaging 10 µF Capacitor     2          0.64          <https://www.digikey.com/short/qfrbqfhd>
  A1           Arduino Nano                       1          22.00         <https://www.digikey.com/en/products/detail/arduino/A000005/2638989>
  ------------ ---------------------------------- ---------- ------------- ----------------------------------------------------------------------

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
