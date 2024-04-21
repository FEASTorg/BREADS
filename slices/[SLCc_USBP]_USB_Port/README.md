# Broadly Reconfigurable and Expandable Automation Device (BREAD) -- Slice Datasheet: Template Slice (SLC-TEMP)

By: Shane Oberloier (swoberlo@mtu.edu) -- Revision 0, on

## Description of this Template

This is the template documentation for a BREAD Slice. One of these
documents should be completed for every slice in order for a sense of
homogeneity. Yellow text is something that you should replace with
information relevant to your slice. Red text is explanatory text and can
be deleted. Text enclosed in "\[ \]" indicates a figure.

## Short Device Description

This should be a short description of the slice's function and usage. It
should be no longer than 250 words.

## Quick Information

Device at a Glance

  --------------------- ----------------------------------------------------------
  Short title           Template Slice
  Part \#               SLC-TEMP
  Repository Link       Link to OSF or other repository
  Academic Paper DOI    DOI link to published paper
  Device Cost           Monetary cost of the device
  Assembly Difficulty   Level of difficulty to assemble; State if it is millable
  Application Area      Specific fields this could be used in
  --------------------- ----------------------------------------------------------

Device Connections

Normally the device will have one large connector, but there are many
possible exceptions. Create a pin -out guide for each one.

Connector Name

  -------- --------------------------------------------------------- -------------------------
  Pin \#   Description                                               Rating
  1        A brief description of what should be wired to this pin   Tolerated range of sig
  \...     A brief description of what should be wired to this pin   Or any other key param,
  n        A brief description of what should be wired to this pin   Info to protect pin.
  -------- --------------------------------------------------------- -------------------------

## Commands

The Slices communicate with the Loaf via I2C commands. The first
paramater must ALWAYS be the address, and the second parameter is
typically a boolean read / write flag. The following two parameters are
adjustable to your slices purposes. Document each command here:

  ---------------------------------------------------------------- ------------ ------------------------ ----------------------------
  **Write Heater **(no significant returns)                                                              
  **Byte**: Address                                                **Bit**: 1   **Float: **Target Temp   **Float: **Ramp Rate (d/m)
  **Read Heater Current Temp** (returns the current temperature)                                         
  **Byte**: Address                                                **Bit**: 0   **Float: **0             **Float: **0
  ---------------------------------------------------------------- ------------ ------------------------ ----------------------------

## Schematic

The schematic should be easily readable without having to zoom in to the
document. If possible, only include one continuous image. If the
schematic text / symbols are too small, then instead include an image of
each sub-circuit with a subtitle calling out the sub-circuits name or
function.

\[A schematic of the design\]

Fig #. Subtitle should go here.

## Bill of Materials

The below BOM format is purely a recommendation -- I realize how
annoying reformatting BOMs can be. Use the recommendation if possible,
but any form is acceptable as long as it is readable and has all of the
pertinent information for someone to locate the parts and replicate the
design. Additionally the font is made 10pt because I believe it's easier
to read small text than it is to read unnecessarily truncated
descriptions.

  ------------ ---------------------------- ---------- ------------- ------------------
  Designator   Description                  Quantity   Cost / part   URL
  R100         Key parameters of the part   Howmany    Price         Link to the part
  ------------ ---------------------------- ---------- ------------- ------------------

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
