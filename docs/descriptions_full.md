# Summary

## Supporting Assets & Related Resources

- [KNEEAD](https://github.com/FEASTorg/KNEEAD)
  - Stands for "Knowledge for Nativagting Electrical & Electronic Architecture and Design".
  - A collection of best practices, review checklists, design conventions, hardware patterns, and architectural principles for electrical and electronics engineering.
- [KiCad-Master-Lib](https://github.com/FEASTorg/KiCad-Master-Lib)
  - WRITE!!!!
- [KiCad-Hierarchical-Designs](https://github.com/FEASTorg/KiCad-Hierarchical-Designs)
  - WRITE!!!!
- [Kicad-Simulation-Examples](https://github.com/FEASTorg/Kicad-Simulation-Examples)
  - WRITE!!!!

## Overview

- **[Nano_KiCad](https://github.com/FEASTorg/Nano_KiCad)**

  - Description: A remake of the Arduino Nano R3.3 in KiCad with a focus on minimum requirements for functionality to cater to end-use.
  - Features:
    - Clone of Original Arduino Nano based on ATMega328P
    - Removed:
      - Reset button
      - D13 LED
      - ISP header
    - Simplified routing
    - Swapped USB connector from Mini-B to Micro-B
  - Specifications:
    - 5V logic (USB-powered only)
    - No onboard voltage regulator
    - USB-to-Serial via CH340 or FT232 (based on variant)
    - Breadboard-compatible 30-pin layout
  - MCU(s):
    - ATMega328P
  - Key Components:
    - ATMega328P microcontroller
    - CH340C USB-Serial (or FT232RL variant)
    - 16 MHz crystal oscillator
  - Template Stackup:
    - 2-layer, standard Arduino Nano footprint
  - Cost Estimate:
    - TDB
  - Part Count:
    - TBD
  - Hardware Complexity:
    - Low
  - Firmware Complexity:
    - Low (Arduino IDE compatible, standard Nano bootloader)
  - Design Status:
    - Finalized
  - Test Status:
    - Untested
  - Notes:
    - None
  - Section: [Nano_Minima](#nano_minima)

- **[can-nano-shield](https://github.com/FEASTorg/can-nano-shield)**

  - Description: A compact CAN transceiver/controller shield for Arduino Nano form factor, enabling reliable CAN bus communication using A4/A5 for CAN_H/L.
  - Features:
    - Drop-in Nano shield format with pass-through headers
    - Uses SMT-XH???? connector off the front edge or selectable to A4/A5 pins for CAN_H and CAN_L?????
    - Onboard MCP2515 CAN controller (SPI)
    - TJA1051/3 high-speed CAN transceiver
    - Optional 120Ω termination via jumper (SPLIT TERMINATION CONCEPT!!!!!)
    - Optional common-mode choke for EMC
    - TVS diode protection on CAN lines
  - Specifications:
    - 3.3V or 5V logic compatible (level shifted) VERIFY???? for ATM???
    - CAN 2.0B compliant, up to 1 Mbps
    - Standard 3-pin CAN output: CAN_H, GND, CAN_L
  - MCU(s):
    - Compatible with any Arduino Nano-format MCU (e.g., ATmega328P, STM32F103, RP2040)
  - Key Components:
    - MCP2515 CAN controller
    - TJA1051 or TJA1053 CAN transceiver
    - PESD2CAN TVS diode
    - Optional: Epcos B82799C0104 common-mode choke
  - Template Stackup:
    - 2-layer PCB, 1.6 mm FR4, standard 1oz copper CHECKKKKKKKQ!!!!!
  - Cost Estimate:
    - TBD
  - Part Count:
    - TBD
  - Hardware Complexity:
    - Low (simple mixed-signal I/O, minimal passive filtering)
  - Firmware Complexity:
    - Low (standard MCP2515 CAN libraries)
  - Design Status:
    - Prototype revision complete
  - Test Status:
    - Pending full functional and bus integrity testing
  - Notes:
    - I²C is unavailable on A4/A5; consider alternate breakout if needed (ADD THIS?!?!??!)
    - Section: [can-nano-shield](#can-nano-shield)

- **[Slice_TEMP](https://github.com/FEASTorg/Slice_TEMP)**

  - Description: Template slice for creating new SLICE modules, with variants supporting different mechanical and electrical configurations. Intended to standardize layout and encourage reuse.
  - Features:
    - Classic 2-layer 70mm x 100mm slice (2layer)
  - Specifications:
    - 2layer
      - WRITE
    - 4layer
    - 4layer-XL
  - MCU(s):
    - Arduino Nano Original (ATMega328P)
    - Arduino Nano Every (ATMega4809)
    - STM32 Nucleo-32 series (e.g. L432KC, F303K8)
    - Other Nano-format boards also supported:
      - Any MCU board using the standard Arduino Nano pinout and 0.1" dual-row 15x2 header format
      - Nano ESP32 and ESP32-S2 variants with Nano footprint (e.g. Nano ESP32 by Arduino, or 3rd party clones)
      - RP2040 Nano-form boards (e.g. Nano RP2040 Connect, Seeed Studio RP2040 Nano)
      - CH32V203 or CH32V003 Nano-format RISC-V dev boards
  - Key Components:
    - Nano-format header footprint
    - 12V → 5V buck converter
    - RGB LED
  - Template Stackup:
    - TBD
    - for full details see?????
  - Cost Estimate:
    - TBD
  - Part Count:
    - TBD
  - Hardware Complexity:
    - Low
  - Firmware Complexity:
    - None (template board; firmware depends on final application)
  - Design Status:
    - Stable template, ready for reuse
  - Test Status:
    - 2 layer:
      - Various previous revisions verified on multiple derived slices
    - ?!?!?!?!?!?DO
  - Notes:
    - None
  - Section: [Slice_TEMP](#slice_temp)

- **[Slice_PRTO](https://github.com/FEASTorg/Slice_PRTO)**

  - Description: Various slice-format boards to aid prototyping to develop even more SLICEs!
  - Features:
    - Through-hole (THT) component prototyping board
    - Surface mount (SMT) component prototyping board
    - Screw terminal connector breakout board
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_PRTO](#slice_prto)

- **[Slice_AQDO](https://github.com/FEASTorg/Slice_AQDO)**

  - Description:
  - Features:
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_AQDO](#slice_aqdo)

- **[Slice_AQEC](https://github.com/FEASTorg/Slice_AQEC)**

  - Description:
  - Features:
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_AQEC](#slice_aqec)

- **[Slice_AQOR](https://github.com/FEASTorg/Slice_AQOR)**

  - Description:
  - Features:
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_AQOR](#slice_aqor)

- **[Slice_AQPH](https://github.com/FEASTorg/Slice_AQPH)**

  - Description:
  - Features:
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_AQPH](#slice_aqph)

- **[Slice_BUCK](https://github.com/FEASTorg/Slice_BUCK)**

  - Description:
  - Features:
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_BUCK](#slice_buck)

- **[Slice_DCMT](https://github.com/FEASTorg/Slice_DCMT)**

  - Description:
  - Features:
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_DCMT](#slice_dcmt)

- **[Slice_HEAT](https://github.com/FEASTorg/Slice_HEAT)**

  - Description:
  - Features:
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_HEAT](#slice_heat)

- **[Slice_IAQM](https://github.com/FEASTorg/Slice_IAQM)**

  - Description:
  - Features:
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_IAQM](#slice_iaqm)

- **[Slice_LEPD](https://github.com/FEASTorg/Slice_LEPD)**

  - Description:
  - Features:
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_LEPD](#slice_lepd)

- **[Slice_LOAD](https://github.com/FEASTorg/Slice_LOAD)**

  - Description:
  - Features:
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_LOAD](#slice_load)

- **[Slice_LVAI](https://github.com/FEASTorg/Slice_LVAI)**

  - Description:
  - Features:
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_LVAI](#slice_lvai)

- **[Slice_RLAY](https://github.com/FEASTorg/Slice_RLAY)**

  - Description:
  - Features:
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_RLAY](#slice_rlay)

- **[Slice_RLHT](https://github.com/FEASTorg/Slice_RLHT)**

  - Description:
  - Features:
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_RLHT](#slice_rlht)

- **[Slice_RTDM](https://github.com/FEASTorg/Slice_RTDM)**

  - Description:
  - Features:
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_RTDM](#slice_rtdm)

- **[Slice_SERV](https://github.com/FEASTorg/Slice_SERV)**

  - Description:
  - Features:
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_SERV](#slice_serv)

- **[Slice_STEP](https://github.com/FEASTorg/Slice_STEP)**

  - Description:
  - Features:
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_STEP](#slice_step)

- **[Slice_THRM](https://github.com/FEASTorg/Slice_THRM)**

  - Description:
  - Features:
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_THRM](#slice_thrm)

- **[Slice_USBP](https://github.com/FEASTorg/Slice_USBP)**

  - Description:
  - Features:
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_USBP](#slice_usbp)

- **[Slice_VCAC](https://github.com/FEASTorg/Slice_VCAC)**

  - Description:
  - Features:
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_VCAC](#slice_vcac)

- **[Slice_VCDC](https://github.com/FEASTorg/Slice_VCAC)**

  - Description:
  - Features:
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_VCDC](#slice_vcdc)

- **[Slice_AOEM](https://github.com/FEASTorg/Slice_AOEM)**

  - Description:
  - Features:
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_AOEM](#slice_aoem)

- **[Slice_GDHB](https://github.com/FEASTorg/Slice_GDHB)**

  - Description:
  - Features:
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_GDHB](#slice_gdhb)

- **[Slice_FPSG](https://github.com/FEASTorg/Slice_FPSG)**

  - Description:
  - Features:
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_FPSG](#slice_fpsg)

- **[Slice_SOLR](https://github.com/FEASTorg/Slice_SOLR)**

  - Description:
  - Features:
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_SOLR](#slice_solr)

- **[Slice_THMX](https://github.com/FEASTorg/Slice_THMX)**
  - Description:
  - Features:
  - Specifications:
  - MCU(s):
  - Key Components:
  - Template Stackup:
  - Cost Estimate:
  - Part Count:
  - Hardware Complexity:
  - Firmware Complexity:
  - Design Status:
  - Test Status:
  - Notes:
  - Section: [Slice_THMX](#slice_thmx)

## Nano_Minima

Placeholder for Nano_Minima description, design notes, and usage examples.

## can-nano-shield

Placeholder for CAN Nano Shield overview and integration info.

## Slice_TEMP

Placeholder for Slice_TEMP variants, purpose, and configuration details.

## Slice_PRTO

Placeholder for Slice_PRTO use cases and physical layout options.

## Slice_AQDO

Placeholder for Slice_AQDO probe type and signal conditioning notes.

## Slice_AQEC

Placeholder for Slice_AQEC notes on ORP sensing and analog frontend.

## Slice_AQOR

Placeholder for Slice_AQOR design for conductivity-based sensors.

## Slice_AQPH

Placeholder for Slice_AQPH compatibility and signal chain tuning.

## Slice_BUCK

Placeholder for Slice_BUCK topology, efficiency considerations, and tuning.

## Slice_DCMT

Placeholder for Slice_DCMT use in motor control and layout limitations.

## Slice_HEAT

Placeholder for Slice_HEAT dual channel heater driver design.

## Slice_IAQM

Placeholder for Slice_IAQM air quality and environmental sensor logic.

## Slice_LEPD

Placeholder for Slice_LEPD optical detection and reactor integration.

## Slice_LOAD

Placeholder for Slice_LOAD cell amplifier configuration and wiring.

## Slice_LVAI

Placeholder for Slice_LVAI low-voltage analog input frontend tuning.

## Slice_RLAY

Placeholder for Slice_RLAY relay switching control and safety features.

## Slice_RLHT

Placeholder for Slice_RLHT high-temp sensor amplifier and upgrades.

## Slice_RTDM

Placeholder for Slice_RTDM four-channel RTD conditioning block.

## Slice_SERV

Placeholder for Slice_SERV servo control interface and power logic.

## Slice_STEP

Placeholder for Slice_STEP stepper driver integration and revision needs.

## Slice_THRM

Placeholder for Slice_THRM variants and thermocouple IC performance.

## Slice_USBP

Placeholder for Slice_USBP power pass-through and USB data hub use.

## Slice_VCAC

Placeholder for Slice_VCAC voltage/current AC monitoring frontend.

## Slice_VCDC

Placeholder for Slice_VCDC voltage/current DC monitoring frontend.

## Slice_AOEM

Placeholder for Slice_AOEM OEM sensor integration and isolation.

## Slice_GDHB

Placeholder for Slice_GDHB high current H-bridge control logic.

## Slice_FPSG

Placeholder for Slice_FPSG fast strain gauge interface system.

## Slice_SOLR

Placeholder for Slice_SOLR solar charger and power management features.

## Slice_THMX

Placeholder for Slice_THMX multi-channel temp sensor via LTC2983.
