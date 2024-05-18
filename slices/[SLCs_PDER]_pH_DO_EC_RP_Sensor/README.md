# PDER

## Overview

Carrier for the Atlas OEM sensor boards for potential of hydrogen (pH), dissolved oxygen (DO), electrical conductivity (EC), and oxidation reduction potential (ORP).

This design builds off of:
* [github.com/skullbox305/Atlas-Scientific-pH-OEM-ADM3260](https://github.com/skullbox305/Atlas-Scientific-pH-OEM-ADM3260). 
* Eagle PCB Design for Atlas Scientific OEM pH and ORP Sensors. Noise Isolation with ADM3260
![](ADM3260_Breakout.png)

## Engineering Notepad

### Schematic Overview

The schematic contains several key components and sections:

1. **I2C Isolation (U1 - ADM3260)**
   - **Purpose**: The ADM3260 is a signal and power isolated I2C digital isolator with a voltage regulator.
   - **Connections**:
     - **Primary Side (SCL2, SDA2)**: These lines connect to the I2C bus of the non-isolated side.
     - **Secondary Side (SCL1, SDA1)**: These lines connect to the isolated I2C bus.
     - **Power**: The chip is powered by AVCC on the primary side and 3.3V-ISO on the secondary side. Capacitors (C1-C8) are used for decoupling.

2. **CMOS Power Switch (Q1, Q2, Q3)**
   - **Purpose**: Controls the power to the isolated section.
   - **Connections**: 
     - **EN**: The enable line controls the gates of the MOSFETs, allowing the AVCC power to be switched.

3. **Analog Sensor (U2)**
   - **Purpose**: This interfaces with an Atlas Scientific OEM module sensor.
   - **Connections**: 
     - **SDA, SCL**: Connected to the isolated I2C bus.
     - **VCC, GND**: Power connections.
     - **PRB, PRBGND**: Probe connections.


### Layer Arrangement

The arrangement of layers is crucial for signal integrity, power distribution, and minimizing noise:

1. **Top Layer (Signal Layer)**:
   - Contains components and critical signal traces.
   - Provides easy access for soldering and modifications.

2. **Inner Layers (Power and Ground Planes)**:
   - **Inner Layer 1 (Yellow)**: Dedicated to power (e.g., 3.3V, 5V), providing a stable power distribution network.
   - **Inner Layer 2 (Green)**: Dedicated to ground (GND), reducing the loop area for ground currents and minimizing EMI.

3. **Bottom Layer (Signal Layer)**:
   - Used for additional routing if the top layer is congested.
   - Can also contain components, though it’s often less populated than the top layer.

### Key Clarifications

- **I2C Isolation**: The ADM3260 ensures that the I2C bus on the primary side is electrically isolated from the secondary side. This prevents noise and interference from affecting sensitive analog measurements.
- **Power Switch**: The CMOS power switch ensures that the isolated section can be powered down independently, reducing power consumption when the sensor is not in use.
- **Ground and Power Planes**: The use of dedicated ground and power planes reduces noise and provides a stable reference for all signals, improving overall performance and reliability.

