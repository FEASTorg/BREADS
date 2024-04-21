# Welcome to the BREAD Docs!

This is the documentation for the BREAD project, designed to provide high-level information on the framework and direct readers to the specific slice (SLC) directories where detailed board-specific documentation can be found in the README of each slice.

*Much of the original documentation (and design work) was completed by Shane Oberloier (swoberlo@mtu.edu), and subsequently modified by Cameron K. Brooks (cbrook49@uwo.ca) and other members of the FAST Research Group.*

## Overview

BREAD slices can be grouped into six main categories based on function:

1. **Actuation**: Actuation boards contain the circuitry required to drive components. This includes control for motors, relays, or other actuators, allowing them to perform tasks such as moving, switching, or locking.

2. **Sensing**: Sensing boards are equipped with various types of sensors to monitor physical conditions, like temperature, pressure, humidity, or other environmental factors. 

3. **Power**: Power boards manage the power distribution within the system. This includes voltage regulation, signal generation, power conversion, and other functions.

4. **Communication**: Communication boards enable wired or wireless data exchange between different components or systems.

5. **Management**: Management boards act as central controllers of a system to implement the system control logic and make real-time decisions to achieve a certain goal through the coordination of activities across slices.

6. **Integrated**: Integrated boards, also known as multi-function boards, combine multiple functionalities, namely actuation and sensing, to achieve a specific subsystem goal. These boards often combine existing slices and offer flexibility by providing complex functions within a single slice.

Boards (SLC/LOAF) in the directory names are postfixed with a letter corresponding to the ***primary function*** of the board. While each slice has a primary function, it can also serve secondary or tertiary functions. For example, a relay heater (RLHT) slice with temperature sensing components (i.e. thermocouple) and power-modulating actuators (i.e. relay) would be considered an integrated slice. Its *primary function* is to maintain a heating element at a set temperature. However, it could also serve a *secondary function* by providing sensor input to another process, such as controlling a servo slice to lock a door when it gets hot.
