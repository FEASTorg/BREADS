# Broadly Reconfigurable and Expandable Automation Device (BREAD) -- Slice Datasheet: **Audio Analysis / Fourier Transform Slice**

By: Nicholas Whisman (ngwhisma@mtu.edu) -- Revision 0, on

## Short Device Description

This device takes in an audio signal from either an Aux cable or a
quarter inch cable, and shifts, amplifies, and breaks down the signal
into constituent frequency ranges. These ranges, or the full signal, can
then be analyzed via fast Fourier transform.

## Quick Information

Device at a Glance

  --------------------- ---------------------------------------------------------------------------------------------
  Short title           Audio Analysis / Fourier Transform Slice
  Part \#               SLC-AAFT
  Repository Link       Link to OSF or other repository
  Academic Paper DOI    DOI link to published paper
  Device Cost           Monetary cost of the device
  Assembly Difficulty   Medium. Millable.
  Application Area      Controls + Robotics (Vibrational/Tonal Sensing + Correction), Limited Frequency Range Audio
  --------------------- ---------------------------------------------------------------------------------------------

Device Connections

J2- Aux

  -------- ----------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------
  Pin \#   Description                                                 Rating
  1        A standard aux cord used for personal electronic devices.   Standard aux cord protocol is to set maximum possible voltage at \~ 0.477 V. Plan accordingly with amplifier configuration to not exceed 5V total.
  -------- ----------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------

J3- Quarter Inch

  -------- --------------------------------------------------------- ----------------------------------------------------------------------------------------------
  Pin \#   Description                                               Rating
  1        Quarter Inch jack used in professional audio settings.    Quarter Inch jacks typically output 1.736 V at a maximum. Plan amplifier tweaks accordingly.
  -------- --------------------------------------------------------- ----------------------------------------------------------------------------------------------

## Commands

  ------------------------------------------------- ------------ ------------------------ ----------------------------
  **Set Up **(no significant returns)                                                     
  **Byte**: Address                                 **Bit**: 1   **Float: **Target Temp   **Float: **Ramp Rate (d/m)
  **Read** (Returns Magnitudes of Specified Bins)                                         
  **Byte**: Address                                 **Bit**: 0   **Float: **0             **Float: **0
  **Stat Read** (Returns Requested Statistic)                                             
  **Byte**: Address                                 **Bit**: 0   **Float: **0             **Float: **0
  ------------------------------------------------- ------------ ------------------------ ----------------------------

## Schematic

![Figure 1: Standard Core Slice
Components](Pictures/10000201000000C3000001ABC1587703D60C1029.png "fig:"){width="2.0311in"
height="4.448in"}

![Figure 2: Aux + Quarter Inch Channel
Amps](Pictures/10000201000001B20000014720E66CAE133BD957.png "fig:"){width="4.5209in"
height="3.4063in"}

![Figure 3: Aux and Quarter Inch
Inputs](Pictures/10000201000000ED000000ABAB9D2EA56BDBD6A5.png "fig:"){width="2.4689in"
height="1.7811in"}

![Figure 4: Signal Transfer
Bridge](Pictures/10000201000000BC00000047FD52E5515A29506A.png "fig:"){width="1.9583in"
height="0.7398in"}\
\
\
\
\

![Figure 5: Range
Filters](Pictures/10000201000002BE0000011346F93000E78C047B.png "fig:"){width="6.9252in"
height="2.7126in"}

\

## Bill of Materials

  ------------ --------------------------------- ---------- ------------- -----------------------------------------------------------------------------------------
  Designator   Description                       Quantity   Cost / part   URL
  U1-2         4 Stage Amplifier Chip            2          0.44          <https://www.digikey.com/en/products/detail/microchip-technology/MCP6004T-I-ST/523078>
  J2           Aux Cord Jack                     1          1.18          <https://www.digikey.com/en/products/detail/cui-devices/SJ1-3533NG/738701>
  RV1-4        10k 12 Turn Trim Pot              4          4.16          <https://www.digikey.com/en/products/detail/bourns-inc/3266W-1-103LF/1087907>
  R26          1206 Packaging 360Ω Resistor      1          0.10          <https://www.digikey.com/en/products/detail/yageo/AC1206FR-07360RL/5897483>
  R24-25       1206 Packaging 450Ω Resistor      2          0.10          <https://www.digikey.com/en/products/detail/yageo/RC1206FR-07453RL/728924>
  R22-23       1206 Packaging 600Ω Resistor      2          0.10          <https://www.digikey.com/en/products/detail/yageo/RC1206FR-07604RL/729038>
  R20-21       1206 Packaging 900Ω Resistor      2          0.10          <https://www.digikey.com/en/products/detail/yageo/RC1206FR-07909RL/729166>
  R18-19       1206 Packaging 1.8 kΩ Resistor    2          0.10          <https://www.digikey.com/en/products/detail/yageo/RC1206JR-071K8L/729204>
  R17          1206 Packaging 400Ω Resistor      1          0.10          <https://www.digikey.com/en/products/detail/yageo/RT1206BRD07400RL/5936956>
  R13-16       1206 Packaging 500Ω Resistor      4          0.10          <https://www.digikey.com/en/products/detail/yageo/RC1206FR-07499RL/728944>
  R1-12        1206 Packaging 1 kΩ Resistor      12         0.10          <https://www.digikey.com/en/products/detail/yageo/RC1206FR-071KL/728387>
  J3           Quarter Inch Jack                 1          1.58          <https://www.mouser.com/ProductDetail/Neutrik/NMJ6HCD2?qs=ZNZTMDotSRlKYl2qFVJbQA%3D%3D>
  C4-12        1206 Packaging 0.1 µF Capacitor   9          0.16          <https://www.digikey.com/en/products/detail/yageo/CC1206KRX7R8BB104/5884627>
  C3           1206 Packaging 10 µF Capacitor    1          0.66          <https://www.digikey.com/en/products/detail/yageo/CC1206KKX5R6BB106/5195344>
  C1-2         1206 Packaging 10 µF Capacitor    2          0.64          <https://www.digikey.com/short/qfrbqfhd>
  A1           Arduino Nano                      1          22.00         <https://www.digikey.com/en/products/detail/arduino/A000005/2638989>
  J1           01x10 Female Header Pins          1          0.79          <https://www.digikey.com/short/23bfwwjh>
  ------------ --------------------------------- ---------- ------------- -----------------------------------------------------------------------------------------

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
