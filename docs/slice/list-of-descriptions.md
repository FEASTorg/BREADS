# List of Descriptions

This is a _work-in-progress_ list of SLICE modules with brief descriptions.

- **Nano_Kicad** (NEW!)

  - Link: [Nano_Original_Kicad](https://github.com/FEASTorg/Nano_KiCAD)
  - Type: Nano v3.3 format
  - Features: Nano Original clone designed to be easy to assemble and solder with updated drop in replacements for appropriate components.
  - Notes:

- **can-nano-shield** (NEW!)

  - Link: [can-nano-shield](https://github.com/FEASTorg/can-nano-shield)
  - Type: Arduino Nano shield
  - Features: MCP2515 CAN controller + TJA1051/TJA1053 transceiver. Two versions: basic and RJ45.
    - Basic employs a JST-XH 3 pin connector for CAN H, CAN L, and CAN GND
    - RJ45 uses an RJ45 connector (i.e. ethernet connector) following the can
      - **Pin 1**: CAN_H – CAN_H bus line (dominant high)
      - **Pin 2**: CAN_L – CAN_L bus line (dominant low)
      - **Pin 3**: CAN_GND – Ground / 0 V / V-
      - **Pin 4**: Reserved; assigned here to: INT - interupt pin routed to MCP2515 INT + D2
      - **Pin 5**: Reserved; assigned here to: ESTOP - connected to D3
      - **Pin 6**: (CAN_SHLD) – Optional CAN Shield
      - **Pin 7**: (GND) – Optional ground; assigned here as VBUS ground
      - **Pin 8**: (CAN_V+) – Optional CAN external positive supply; assigned here to be used as bus voltage (VBUS, 12v or 24V)
    - Onboard regulator connected to VBUS to provide TLL (5v for Nano, 3V3 for STM32)
  - Purpose: CAN-based networking
  - Notes:
    - This removes both the need for the onboard regulator and the entire 10-pin backplane connector, freeing up critical space around the MCU.
    - IMPORTANT: high currents cannot be carried on the CAT6 cable connected to the RJ45. Future revision of BREADS to convert to CAN once the shield has been tested will employ a bus system to connect to the backplane to provide higher power from the bus through a separate cable and connector.
    - RJ45 over CAN has been validated in numerous systems before and has the advantage of providing an approximately balanced cable that's widely available in various lengths at low-cost.
    - Using a cable also has the advantage that a slice can be removed from the backplane for inspection, configuration, connection, etc. without being powered down and disconnected from comms.
    - The fact that the cable enters the slice case and connects directly to the front of the shield to the RJ45 connector eliminates need to route the MCUs power and comms across the PCB.

- **Slice_TEMP** (NEW!)

  - Link: [Slice_TEMP](https://github.com/FEASTorg/Slice_TEMP)
  - Type: General-purpose base slice
  - Features: variations for 2-layer, 4-layer, 4-layer L, and 4-layer XL
  - Purpose: Template for designing new slices
  - Notes:
    - Many slices can use ATEMGA 328P (original) or NUCLEO32 (KC432L) Nanos and by default 4-layer boards use the STM32 NUCLEO32 nano-format dev board.
    - RST pin is DNP/clipped so that the I2C lines can be routed directly across to simplify downstream routing.

- **Slice_PRTO** (NEW!)

  - Link: [Slice_PRTO](https://github.com/FEASTorg/Slice_PRTO)
  - Type: Prototyping slice
  - Features: Three variations: screw terminals, SMT prototyping, through-hole prototyping
  - Purpose: Quick testing and wiring for custom experiments

- **Slice_AQDO** (NEW!)

  - Link: [Slice_AQDO](https://github.com/FEASTorg/Slice_AQDO)
  - Sensor: Clark-type galvanic oxygen electrode analog frontend
  - Purpose: Analog frontend for dissolved oxygen sensing
  - Notes:
    - BNC probe connector.
    - Uses an amplifier to convert the µA-level current signal from the DO cell into a voltage in ADC range.

- **Slice_AQEC** (NEW!)

  - Link: [Slice_AQEC](https://github.com/FEASTorg/Slice_AQEC)
  - Sensor: Platinum redox (ORP) electrode analog frontend
  - Purpose: Environmental/electrochemical monitoring
  - Notes:
    - BNC probe connector.
    - Uses an osillator frequency divider paired with an excitation buffer/filter to generate an AC excitation waveform into the probes excitation electrode which propogates to the sense electrode which inputs to a transimpedance amplifier which is fed into a full wave rectifier.

- **Slice_AQOR** (NEW!)

  - Link: [Slice_AQOR](https://github.com/FEASTorg/Slice_AQOR)
  - Sensor: Two-electrode conductivity cell analog frontend
  - Purpose: Conductometric sensor interface
  - Notes:
    - BNC probe connector.
    - Unity gain high impedance buffer fed into an amplifier to scale voltage to ADC range.

- **Slice_AQPH** (NEW!)

  - Link: [Slice_AQPH](https://github.com/FEASTorg/Slice_AQPH)
  - Sensor: Glass pH electrodes analog frontend
  - Purpose: Buffered input for high-impedance analog sensing
  - Notes:
    - Ultra-high impedance input buffer followed by filtering and adjustable gain amplifier

- **Slice_BUCK** (revision)

  - Link: [Slice_BUCK](https://github.com/FEASTorg/Slice_BUCK)
  - Function: Buck converter (discrete)
  - Purpose: Step-down power regulation
  - Notes:
    - Simple RLC buck converter using discrete components
    - Requires advanced PWM firmware for control

- **Slice_DCMT** (minor revision)

  - Link: [Slice_DCMT](https://github.com/FEASTorg/Slice_DCMT)
  - Function: DC motor control
  - Features: Two channel motor control, same as current slice which was refined quite a bit by Finn.
  - Notes:
    - Fixed Motor1 drive pin to connect to PWM capable pin; was previously wrong and was cut and jumper fixed
    - Added fuses back since most recent versions with fuses couldnt be found.

- **Slice_HEAT** (revision)

  - Link: [Slice_HEAT](https://github.com/FEASTorg/Slice_HEAT)
  - Function: Dual DC heater control
  - Purpose: Resistive heating control using NPN darlington transistors with MAX31855 thermocouple amplifier and thermistor input.
  - Notes: Circuit duplicated

- **Slice_IAQM** (NEW!)

  - Link: [Slice_IAQM](https://github.com/FEASTorg/Slice_IAQM)
  - Function: Indoor air quality and safety monitor
  - Features:
    - PCB from the PV box gas monitor
    - x4 MQ-xx gas sensor inputs
    - ENS160 air quality sensor
    - BME 280 ambient humidity, temperature, and pressure sensor
    - SCD41 CO2 sensor
    - SD card
    - Real-time Clock
    - 12V alarm LED
    - 12V alarm buzzer

- **Slice_LEPD** (NEW!)

  - Link: [Slice_LEPD](https://github.com/FEASTorg/Slice_LEPD)
  - Function: Optical density sensor bioreactors
  - Purpose: Bioreactor (Pioreactor-style) turbidity (optical density) measurement
  - Notes:
    - Follows from Pioreactor design
    - Closed-loop constant-current amplifier for LED driver
    - Transimpedance amplifier for photodiode measurement

- **Slice_LOAD** (NEW!)

  - Link: [Slice_LOAD](https://github.com/FEASTorg/Slice_LOAD)
  - Function: Load cell ADC interface
  - Purpose: Weight or force sensing
  - Notes:
    - Uses ADS1234 bridge sensor ADC
    - 4 channels
    - Dedicated 5V analog frontend supply

- **Slice_LVAI** (revision)

  - Link: [Slice_LVAI](https://github.com/FEASTorg/Slice_LVAI)
  - Function: Low-voltage analog input with gain stages
  - Notes:
    - Extensive documentation and tranfer function analysis completed.
    - Needs more signal processing and configuration options

- **Slice_RLAY** (revision)

  - Link: [Slice_RLAY](https://github.com/FEASTorg/Slice_RLAY)
  - Function: Relay control
  - Features: x4 mechanical relay output
  - Notes:
    - Updated to match current template
    - connector terminals improvement

- **Slice_RLHT** (minor revision)

  - Link: [Slice_RLHT](https://github.com/FEASTorg/Slice_RLHT)
  - Function: Thermocouple/relay combo
  - Purpose: High-power heater control

- **Slice_RTDM** (NEW!)

  - Link: [Slice_RTDM](https://github.com/FEASTorg/Slice_RTDM)
  - Function: RTD interface (2/3/4-wire)
  - Purpose: Precision temperature measurement
  - Notes:
    - Uses MAX31865 x4

- **Slice_SERV** (revision)

  - Link: [Slice_SERV](https://github.com/FEASTorg/Slice_SERV)
  - Function: Servo control
  - Notes:
    - Improved power delivery
    - Avoids past issue of fried servos

- **Slice_STEP** (revision)

  - Link: [Slice_STEP](https://github.com/FEASTorg/Slice_STEP)
  - Function: Stepper motor driver
  - Notes: DIP stepper drivers

- **Slice_THRM** (revision, NEW, NEW)

  - Link: [Slice_THRM](https://github.com/FEASTorg/Slice_THRM)
  - Function: Thermocouple reading
  - Variants: A (MAX6675), B (MAX31855), C (MAX31856)
  - Notes:
    - All of them have 4 channels
    - MAX6675 is oldest chip for K-type TCs
    - MAX31855 is successor for K-type TCs
    - MAX31856 is newest, uses SPI, any thermocouple type; more precise; for kyle

- **Slice_USBP** (revision)

  - Link: [Slice_USBP](https://github.com/FEASTorg/Slice_USBP)
  - Function: USB interface
  - Notes:
    - x2 USB ports MUXed to the Nano
    - Optimized layout to be compliant with BREADS template

- **Slice_VCAC** (NEW!)

  - Link: [Slice_VCAC](https://github.com/FEASTorg/Slice_VCAC)
  - Function: AC voltage + current sensing
  - Features:
    - AC current sensing portion is compatible with many different common non-invasive, split-core, hall-effect current transformer-type sensors (ZMCT-xxxm; SCT-013-xxx) ranging from 5 - 100A
    - AC voltage sensing using 2mA:2mA current transformer (ZMPT), designed for 250VAC max but can be configured for higher by altering the line + burden resistors.
    - Both current and voltage sensing feature full galvanic isolation and a custom analog frontend to provide safe and precise readings

- **Slice_VCDC** (NEW!)

  - Link: [Slice_VCDC](https://github.com/FEASTorg/Slice_VCAC)
  - Function: DC voltage + DC (+AC) current sensing
  - Purpose:
    - DC voltage measurement configured for max 400V measurement with calculated (resistor value) configurations for 300V, 250V, 200V, 150V, 100V, 48V, 24V, or 12V to perform measurements at a greater resolution for lower bus voltages
    - Isolation provided by the AMC1311B which has max operating voltage is 1500VRMS and offers 7000-VPK reinforced isolation per DIN EN IEC
    - DC current measurement (invasive) provided by the ACS724xLCTR-XXYY which comes in various maximum current variations which all use identical footprints
    - The ACS can also perform AC current measurement

- **Slice_AOEM** (NEW!)

  - Link: [Slice_AOEM](https://github.com/FEASTorg/Slice_AOEM)
  - Function: Atlas Scientific OEM analog interface
  - Features: pH/DO/EC/ORP/RTD support with isolation
  - Purpose: Clean integration of Atlas OEM ICs
  - Notes:
    - x4 channels
    - Same PCB also supports the 4-wire RTD OEM chip which has two more pads which simply remain unpopulated for the 2-wire and pH/DO/EC/ORP probes.
    - Each channel features two SMA connectors that are jumper selectable to support classic-style probes or the newly released split-eletrode-style probes which have separate wires for the reference and signal and / or to provide connection points for 3- or 4-wire RTDs

- **Slice_GDHB** (NEW!)

  - Link: [Slice_GDHB](https://github.com/FEASTorg/Slice_GDHB)
  - Function: H-bridge driver for large DC motors
  - Purpose: High power actuator slice
  - Notes:
    - Up to 48V at 80A (prelim, need to do detailed thermal and electrical capacity calcs)
    - Essentially a single-channel DCMT with much higher capacity for driving high-power brushed DC motors

- **Slice_FPSG** (NEW!)

  - Link: [Slice_FPSG](https://github.com/FEASTorg/Slice_FPSG)
  - Function: Strain gauge/load cell high-speed interface
  - Purpose: Reeves and Lalone 6-channel biomedical load cell and tensile tester; other precision force or pressure sensing for analytical applications
  - Notes:
    - 8-channels conditioned using four dual chanel instrumentation amplifiers using AD8426BCPZ
    - STM32 NUCLEO32 KC432L required
    - 24-bit, 32kSPS SPI ADC ADS131M08IPBS
    - Separarte supplies for various parts of the circuit
    - SD card datalogging using direct writing from ADC SPI

- **Slice_SOLR** (NEW!)

  - Link: [Slice_SOLR](https://github.com/FEASTorg/Slice_SOLR)
  - Function: Solar battery charging
  - Purpose:
    - Off-grid power slice using 3S Li-ion to provide bus power for remote BREADS
    - Someone at MTU had made the concept of a solar slice but wasn't done right so this is a redo of that idea.

- **Slice_THMX** (NEW!)
  - Link: [Slice_THMX](https://github.com/FEASTorg/Slice_THMX)
  - Function: Multi-channel temperature sensor interface
  - Purpose: High-accuracy multi-sensor thermal monitoring
  - Notes:
    - Uses LTC2983 to provide either 12-channel, single-ended thermocouple input OR 6-channel, differential-ended thermocouple input (configurable using onboard DIP switch)
    - Isothermal pour zones with thermal via stitching for cold-junction compensation sensor
    - Omega U-type dedicated therocouple connectors
