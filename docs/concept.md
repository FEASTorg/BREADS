# Concept

The purpose of this page/document is to explain the concept of BREADS for those who are unfamiliar with the technology and wish to use or develop the system.

## What is BREADS?

- Specifies mechanical and electrical interfaces
- Defines power distribution and signal bus conventions
- Supports scalable, stackable, and distributed systems

## Planned implementations

- SLICE function cards
  - Single-function Logic Interface Controller Element
- LOAF controller + backplanes
  - Local Operations Attachment Frame
- CRUST interface bridges
  - Configurable Routing & Universal Signal Translator
  - Makes non-SLICE devices SLICE compliant with BREAD

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

