# BREADS Concept

The purpose of this page/document is to explain the concept of BREADS for those who are unfamiliar with the technology and wish to use or develop the system.

## BREADS: Primer

## History: BREAD

### Paper 1: Original Concept

BREADS builds on the original concept and guidelines put forward in

See original OSF repo for full BREAD v0 release corresponding to the original paper:

- [Open source framework for a Broadly Expandable and Reconfigurable data acquisition and automation device (BREAD)](https://doi.org/10.1016/j.ohx.2023.e00467).
- This largely presented the concept of BREAD, many of the boards were non- or semi-functional or incomplete at time of publication
- This idea of BREAD was largely developed by Shane Oberloier and Joshua M. Pearce and implemented by Shane Oberloier, Nicholas G. Whismana, Finn Hafting, and others at the MTU Open Source Hardware Entreprise (OSHE)

### OpenReactor

Before and following after this initial publication, the development of BREAD was done at MTU as part of OSHE and known new slices were prototyped and the [MOST_OpenReactor](https://gitlab.com/mtu-most/most_openreactor) software was created to create a more unified central controller with a user interface.

### Paper 2: Pyrolysis Application

As part of joint project with MTU and Western University and others for plastic to protein processing system. This resulted in the publication of the paper [Modular Open-Source Design of Pyrolysis Reactor Monitoring and Control Electronics](https://doi.org/10.3390/electronics12244893). The ESP32 thing plus C controller (ESPT) was developed along with more mature versions of DCMT and RLHT, primarily by Finn Hafting. The [BREAD-Local-Software](https://github.com/FHafting/BREAD-Local-Software) or BUTTER was developed by Finn Hafting and Xander Chin which used static web assets stored on the SD card in combination with the ESP32 asynchronous web server to create a locally accessible user interface.

### Report: BUTTER

https://github.com/FHafting/BREAD-Local-Software/blob/main/joss_paper/paper.pdf

### Paper 3 + Thesis: Moving BREAD Towards SCADA

Further mechanical developments and applications to bioreactors and pH control was done by Finn Hafting and is reflected in the paper [Moving the Open-Source Broadly Reconfigurable and Expandable Automation Device (BREAD) Towards a Supervisory Control and Data Acquisition (SCADA) System](https://doi.org/10.3390/technologies13040125). The ESPT controller as since been discontinued due to its inhereint limitations in reliably handling more complex supervision and networking requirements posed by future development.

### Legacy SLICEs

(v0 & v1)

| Name                                                 | Works | Notes                                                                       |
| ---------------------------------------------------- | ----- | --------------------------------------------------------------------------- |
| [Loaf_x004](https://github.com/FEASTorg/Loaf_x004)   | ✅    | Superseded by ESPT                                                          |
| [Loaf_ESPT](https://github.com/FEASTorg/Loaf_ESPT)   | ✅    | No longer being used, switched to distinct supervisor model using SBC (RPi) |
| [Slice_PUMP](https://github.com/FEASTorg/Slice_PUMP) | ❌    | Gives intended output but never worked, tested on with MTU Dr. Ong's pump   |
| [Slice_AAFT](https://github.com/FEASTorg/Slice_AAFT) | ❓    | Deprecated; efforts should go to SLC_LVAI                                   |
| [Slice_PHDO](https://github.com/FEASTorg/Slice_PHDO) | ✅    | Deprecated by PRTO, AOEM                                                    |
| [Slice_CR10](https://github.com/FEASTorg/Slice_CR10) | ✅    | Superseded by CRXX, no known issues, check component availability           |
| [Slice_CR20](https://github.com/FEASTorg/Slice_CR20) | ❌    | ''' '''                                                                     |
| [Slice_CR40](https://github.com/FEASTorg/Slice_CR40) | ❌    | ''' '''                                                                     |

## Overview of BREADS

### SLICEs

A SLICE can be grouped into 5 main categories based on it's function:

1. **Actuation**: Actuation boards (output; open-loop control function) contain the circuitry required to drive components.

2. **Sensing**: Sensing boards (input; feedback function) are equipped with various types of sensors to monitor physical conditions.

3. **Integrated**: Integrated boards (input-output; closed-loop control function), also known as multi-function boards, combine actuation and sensing, to achieve a specific the function goal.

4. **Power**: Power boards manage the power conversion and distribution within the system.

5. **Interface**: Boards to provide an interface to external components or systems, components serve to enhance or augment the MCUs capabilties and functionality is achieved via external hardware or dedicated software.

In addition there are SLICEs for prototyping and template boards.

Boards in the directory names are postfixed with an abbreviation or acronym corresponding to the **_function_** of the board.

| Name                                                 | Type       | Notes                                                                            |
| ---------------------------------------------------- | ---------- | -------------------------------------------------------------------------------- |
| [Slice_TEMP](https://github.com/FEASTorg/Slice_TEMP) | Template   | Template with nano, 12v->5v, and bus conn                                        |
| [Slice_DCMT](https://github.com/FEASTorg/Slice_DCMT) | Actuation  | DC Motor Driver using an IC                                                      |
| [Slice_RLAY](https://github.com/FEASTorg/Slice_RLAY) | Actuation  | 4 channel SPDT relay                                                             |
| [Slice_SERV](https://github.com/FEASTorg/Slice_SERV) | Actuation  | Servo motor driver                                                               |
| [Slice_STEP](https://github.com/FEASTorg/Slice_STEP) | Actuation  | Stepper motor driver using an IC                                                 |
| [Slice_GDHB](https://github.com/FEASTorg/Slice_GDHB) | Actuation  | A4957 driving a full bridge for high current BDC motors                          |
| [Slice_HEAT](https://github.com/FEASTorg/Slice_HEAT) | Integrated | DC heater slice using a pair of darlington transistors and MAX31855              |
| [Slice_RLHT](https://github.com/FEASTorg/Slice_RLHT) | Integrated | Relay DC heater slice using MAX31855                                             |
| [Slice_BUCK](https://github.com/FEASTorg/Slice_BUCK) | Power      | Buck converter slice                                                             |
| [Slice_SOLR](https://github.com/FEASTorg/Slice_SOLR) | Power      | Field solar power for charging batteries off grid                                |
| [Slice_LVAI](https://github.com/FEASTorg/Slice_LVAI) | Sensing    | Low-voltage amplified input channels                                             |
| [Slice_THRM](https://github.com/FEASTorg/Slice_THRM) | Sensing    | Thermocouple temperature measurement                                             |
| [Slice_IAQM](https://github.com/FEASTorg/Slice_IAQM) | Sensing    | Air quality monitoring and alarm                                                 |
| [Slice_LOAD](https://github.com/FEASTorg/Slice_LOAD) | Sensing    | Load cell amplifier                                                              |
| [Slice_ACAR](https://github.com/FEASTorg/Slice_ACAR) | Sensing    | For interfacing with the Atlas Scientific EZO breakout chips, on-board isolation |
| [Slice_AOEM](https://github.com/FEASTorg/Slice_AOEM) | Sensing    | For interfacing with the Atlas Scientific EZO OEM components, on-board isolation |
| [Slice_LEPD](https://github.com/FEASTorg/Slice_LEPD) | Sensing    | Photo meter using LED and photodiode                                             |
| [Slice_USBP](https://github.com/FEASTorg/Slice_USBP) | Interface  | USB port slice                                                                   |

### Legacy

| Name                                                 | Type       | Notes                                                              |
| ---------------------------------------------------- | ---------- | ------------------------------------------------------------------ |
| [Loaf_x004](https://github.com/FEASTorg/Loaf_x004)   | Management | Succeeded by Loaf_ESPT                                             |
| [Loaf_ESPT](https://github.com/FEASTorg/Loaf_ESPT)   | Management | ESP32 carrier for supervision of slices                            |
| [Slice_PUMP](https://github.com/FEASTorg/Slice_PUMP) | Actuation  | Limited scope for old project, never fully tested and functioning. |
| [Slice_AAFT](https://github.com/FEASTorg/Slice_AAFT) | Sensing    | Succeeded by Slice_LVAI                                            |
| [Slice_PHDO](https://github.com/FEASTorg/Slice_PHDO) | Sensing    | Succeeded by Slice_AOEM and Slice_PRTO for carriers / breakouts    |
| [Slice_CR10](https://github.com/FEASTorg/Slice_CR10) | Sensing    | Succeeded by Slice_CRXX                                            |
| [Slice_CR20](https://github.com/FEASTorg/Slice_CR20) | Sensing    | Succeeded by Slice_CRXX                                            |
| [Slice_CR40](https://github.com/FEASTorg/Slice_CR40) | Sensing    | Succeeded by Slice_CRXX                                            |

## Requirements

### KiCad

You can download KiCad which can be found at the [GitHub](https://github.com/KiCad) / [GitLab](https://gitlab.com/kicad/code/kicad) releases page or the KiCad website. If using Windows or Mac download the latest installer, for Linux it is suggested to use the KiCad 8.x Flatpak distribution.
