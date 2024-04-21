# Broadly Reconfigurable and Expandable Automation Device (BREAD) -- Slice Datasheet: **10A Current Sensor Slice** (SLC-CR10)

By: Nicholas Whisman (ngwhisma@mtu.edu) -- Revision 0, on

## Short Device Description

This slice acts as a current sensor, and is rated for up to ±10 Amps.
The sensor outputs a voltage signal linearly related to the current
flowing through the chip, at an approximate resolution of 200 mV / Amp.

## Quick Information

Device at a Glance

  --------------------- ---------------------------------
  Short title           10A Current Detector
  Part \#               SLC-CR10
  Repository Link       Link to OSF or other repository
  Academic Paper DOI    DOI link to published paper
  Device Cost           Monetary cost of the device
  Assembly Difficulty   Medium. Millable.
  Application Area      Power Analysis, Controls
  --------------------- ---------------------------------

Device Connections

Current Input Screw Terminals

  -------- -------------------------------------------------------------------------------------------------------------------- --------
  Pin \#   Description                                                                                                          Rating
  J2       Screw terminal connection points for desired current to measure. Positive lead connects to right side of terminal.   10A
  J3       Screw terminal connection points for desired current to measure. Positive lead connects to right side of terminal.   10A
  J4       Screw terminal connection points for desired current to measure. Positive lead connects to right side of terminal.   10A
  J5       Screw terminal connection points for desired current to measure. Positive lead connects to right side of terminal.   10A
  -------- -------------------------------------------------------------------------------------------------------------------- --------

## Commands

  --------------------------------------------------------------------- ------------ ------------------------ ----------------------------
  **Setup **(no significant returns)                                                                          
  **Byte**: Address                                                     **Bit**: 1   **Float: **Target Temp   **Float: **Ramp Rate (d/m)
  **Read Current **(returns the current through the selected channel)                                         
  **Byte**: Address                                                     **Bit**: 0   **Float: **0             **Float: **0
  --------------------------------------------------------------------- ------------ ------------------------ ----------------------------

## Schematic

![Figure 1: BREAD Connection Pins + Power
Capacitors](Pictures/10000201000000AB0000008BB51D58A998ECB56B.png "fig:"){width="1.7811in"
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
Nano](Pictures/10000201000000B4000000F5D2FAF377839CEBA3.png "fig:"){width="1.8752in"
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

![Figure 3: One of four identical current sensing
channels](Pictures/100002010000014F0000008D074EBBD9C261851F.png "fig:"){width="3.4898in"
height="1.4689in"}

\
\
\
\
\
\

## Bill of Materials

  ------------ ----------------------------------- ---------- ------------- ----------------------------------------------------------------------------------------------
  Designator   Description                         Quantity   Cost / part   URL
  U1-4         10A Current Sensor Chip             4          5.68          <https://www.digikey.com/en/products/detail/allegro-microsystems/ACS723KMATR-10AB-T/5225374>
  J2-J5        1/10" Pitch 01x02 Screw Terminals   4          1.27          <https://www.digikey.com/en/products/detail/te-connectivity-amp-connectors/282834-2/1150135>
  C1-2         1206 Packaging 10 µF Capacitor      2          0.64          <https://www.digikey.com/short/qfrbqfhd>
  A1           Arduino Nano                        1          22.00         <https://www.digikey.com/en/products/detail/arduino/A000005/2638989>
  J1           01x10 Female Header Pins            1          0.79          <https://www.digikey.com/short/23bfwwjh>
  ------------ ----------------------------------- ---------- ------------- ----------------------------------------------------------------------------------------------

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
