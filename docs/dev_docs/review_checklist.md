# Electronics and electrical design checklist

## Process

1. Is there a method of tracking versions/revisions?

   1. For system
   2. For schematics
   3. For PCBs
   4. For software

2. Is source version control used? (Git, SVN etc.)

3. Is offsite backup used? (Github, Gitlab, VPS etc.)

4. Are design decisions documented?

   1. Within or separate from the schematics/drawings/code?

## System

1. Has adequate simulation been performed?

   1. Is there a simulation/simulator of the physical system or subsystems?
   2. Has the hardware design or subsystems of it been simulated?

2. What kind of interfaces and connections are necessary?

   1. For humans?
   2. For computers / control software?
   3. For power?
   4. For other subsystems?

3. Are there status LEDs

   1. Power
   2. Programmable

4. Subsystems

   1. Are multiple boards needed?
   2. How are subsystems connected?
   3. Is there a breakout board for subsystem connectors?
   4. Have harnesses/wiring/connectors been identified?
      1. Have pin-outs been defined and specified?
      2. What is the max current draw?
   5. Should any subsystems be default off? #power

5. Communication

   1. Which busses/protocols will be used?
      1. Between subsystems?
      2. Between chips/modules?
   2. Have addresses been allocated?

6. Watchdog and reset

   1. Can the watchdog be bypassed? #testing
   2. Can it be overruled? #testing
   3. Can it be emulated? #testing
   4. What interval is necessary? #safety
   5. Is the worst case behavior documented?
   6. Should reset be pulled to default on or off?

7. System characteristics

   1. Is there a power budget?
   2. Estimated power dissipation of each subsystem?
   3. Estimated current draw of each subsystem?
   4. Estimated expected operating temperature?

8. Power

   1. How is power provided?
   2. Is power-up well-defined?
      1. Some subsystems might need to be unpowered before other subsystems are powered, e.g. LED drivers unpowered until the software has booted.
      2. Certain components such as complex microprocessors, FPGAs and other complex ICs need special power sequencing to operate correctly; consult datasheets for details.
   3. Is power-down well-defined?
   4. Should any subsystems be isolated?
   5. Which voltage levels are needed?
   6. Which current draws are needed?
   7. Is there a shared power supply?
      1. Can it deliver sufficient power for all connected subsystems?
   8. Is the ground connection made first in hot-plugging connectors?
   9. Is a separate earth necessary?
   10. Will under or over voltage protection be needed?

9. Clocks and oscillators

   1. Frequency linewidth/jitter are within tolerances across all environments?
      1. Clocks and oscillators are not perfect. Their frequency jitter can vary with temperature and other environmental factors.
   2. Driving ICs support crystals if crystals are used?
   3. Input rules for clocks are followed?
      1. FPGAs' have multi clock capable input pins, but the features available differ from pin to pin. Source: [Choosing a Clock Input Pin for an FPGA](https://www.eevblog.com/forum/microcontrollers/choosing-a-clock-input-pin-for-an-fpga/)

10. Testing

    1. Test points on PCB for critical circuits?
    2. Test pads for flying probe/bed-of-nails/pogos setups?
       1. Are test pads placed on a regular grid for bed-of-nails fixtures?
    3. Has a test procedure been written?
    4. Are special connectors needed for testing?
    5. Are special peripheral circuitry needed for testing?
       1. Breakout boards for connectors?
    6. Is special equipment needed for testing?
    7. Can tests be performed without disassembling the product or casing?
       1. It should be documented which tests can be done while within it's casing and which require disassembly.
    8. Should there be in-circuit testing?
       1. Voltage monitoring?
       2. Current monitoring?
       3. Temperature monitoring?
       4. Peripheral device behavior
       5. Board revision or version
          1. The board revision or version can be made software readable using either GPIO or shift register pins tied to ground or supply. An ADC can also be used to read a voltage divider. This can also be used for board specific functionality. [5 Tips for Versioning Embedded Systems - Design News](https://www.designnews.com/electronics-test/5-tips-versioning-embedded-systems/93647737161546)
    9. Is there event/data logging?
    10. Voltage monitoring?
    11. Current monitoring?
    12. Temperature monitoring?
    13. Connections/disconnects?
    14. Peripheral device states?
    15. Battery health?

11. Maintainability

    1. Is disassembly easy?
    2. Is reassembly easy?

12. Safety

    1. Fuses
       1. Appropriately sized?
       2. Fast enough for the load?
       3. Replaceable when board is assembled
       4. Replaceable when devices is assembled
       5. Storage for spare fuse?
    2. Can connections be mated in an unsafe way?
    3. Do connectors for different purposes share the same type of plug/socket?
    4. Is signal and power avoided in same connector?
       1. Why is this important?
          1. Wide Band Laboratory Fire, Fermi National Accelerator Laboratory, 1987.
          2. A misjoined connector resulted in several amps being drawn through cables rated for only 1 A. A fire started from this.
          3. ![West side of beam line after fire.](./images/fermilab_fire_scene.png)
          4. ![Closeup of suspect connector on lower upstream chassis box. Note the lack of plastic on the right side of the pins.](./images/fermilab_fire_connector.png)
          5. Source: [Tennessee Valley Chapter of the Society of Fire Protection Engineers](https://www.tvsfpe.org/Fire-Protection-Links); [Fermi National Accelerator Wide Band Lab Fire 1987 Incident Report](https://www.tvsfpe.org/resources/Documents/Historical%20Documents/DOE/Fermilab%20Wideband%20Fire.pdf)
    5. Are there short circuit protections on all power outputs?

13. EMC Requirements

    1. What noise frequencies are emitted? (e.g. clock and SMPS frequencies)
    2. What noise frequencies is the circuit sensitive to?
    3. What noise will be generated by connected devices? (e.g. mains adaptors)
    4. What countries will the product be sold in? What standards cover these countries?
    5. What is the end use for the product? Does this have any specific EMC requirements ?
       1. Industrial or automotive use has different test requirements and permissable emission levels than consumer goods. For industrial, the levels are usually higher. See [Conformance UK's guide](https://www.conformance.co.uk/adirectives/doku.php?id=emc#tests)

14. Prevention

    1. What should have ESD protection? #ESD
    2. Do switching supplies have (or have an option for) RC snubbers?
       1. While not always needed for stability, an RC snubber can dampen ringing oscillations, which result in high frequency noise that may exceed EMC limits.
    3. Is differential signalling used for digital signals where possible?
       1. Differential signals are not only more immune to noise, but emit less as well. For high speed, long signal lines (e.g. remote displays in automotive), the difference can be considerable.
    4. Is differential signalling used for analog signals?
    5. Are shielded connectors needed?
    6. Is a shielded case needed? How will this be bonded to ground?
    7. Are switched-mode power supplies synchronized?
       1. If switch mode power supplies are powered from the same source and are not syncronized, they can produce "beat" frequencies from being out of phase, and input and output ripple is also increased. See [TI Power Tip 73: Synchronizing Makes for Well-Behaved Power Supplies](https://www.eetimes.com/author.asp?section_id=183&doc_id=1323282)

15. Failure mode analysis
    1. Loss of ground pins on connector
    2. Effect of lost connection
       1. Between subsystems
       2. To computer
    3. System behavior when battery is fully discharged?
    4. Effects of voltage transients and high voltages on FETs
    5. Expected failure modes of failed semiconductors
       1. Expected effects of failed semiconductors
    6. Are component ratings derated by expected operating temperature/voltage/current?
    7. Environmental tolerance
       1. Vibration
       2. Heating
       3. Radiation
       4. Humidity
       5. Magnetism

## Components

1. Are the necessary components in stock?

   1. With a margin for defects/failures/loss?
   2. With a margin for spill from Pick-and-Place machine?

2. Are voltage ratings of components sufficient? #schematic #electrical

3. Has procurement avaialbility and longevity been assessed?

   1. Are any components expected for obsoletion or NRND?
      1. Any components which are or expected to be obsolete or NRND (Not Recommended for New Designs) should be clearly flagged in documentation.
   2. Are there multiple sources?
   3. Are there alternate manufacturers?
   4. Have suitable alternatives been identified?

4. Have errata sheets, application notes, and evaluation board references been checked? #schematic #components

5. Is reset active-high or active-low?

6. Do any pins need biasing / pull-up / pull-down / strap?

   1. During initialization?
   2. For addresses?

7. Are some functions only available in certain modes?

8. Are the inputs and outputs organized in banks?

9. Can BOM line count be reduced by merging similar passive values?

10. Does each passive value (e.g. 10k 0603) map to a single part number to avoid multi-feeder errors?

## Floorplan

1. Are mechanical constraints defined?

   1. Mounting
   2. Board size/shape
   3. Connector placement
   4. Human interface placement

2. Can components be oriented in roughly the same way / consistency in layout?

3. Are components easily accessible?

   1. For inspection?
   2. For replacement?
   3. Large components or high density boards might make it difficult to inspect components during testing or after failure. Apart from visual blocking it can also manifest as physically blocking from accessing with probes.

4. Are interactive components placed in a logical manner? (Consistent orientation of buttons? Consistent rotation of potentiometers?)

5. Are temperature sensitive components placed away from hot components?

6. Should there be a ground ring?

   1. Ground rings\_ serve both a signal integrity and a practical purpose. For EMC it is necessary to avoid traces along edges of the PCB. Adding a ground ring is an easy way of ensuring this constraint is held. It also provides somewhat better EMI prevention. Source: [Why are vias placed this way on a PCB? - Stack Exchange](https://electronics.stackexchange.com/a/36845/2795)

## Schematic

1. Set up

   1. Has DRC been set up and configured?
   2. Has a grid size been picked
   3. Has paper sizes been selected for sheets?

2. Symbols

   1. Are explicit and informative
   2. Do they resemble electrical circuit symbols?
   3. Mark internal pull-up/-down
   4. Mark internal termination
   5. Reflect the functionality or logical structure of the component
      1. In contrast to placing pins as the physically appear on the device. Schematics should reflect functionality; board layout should reflect physical reality. Physical pin layout has its merit in making debugging easier -- however, so does having a clearer schematic.
   6. Pins are assigned the correct type (passive, power, in, out etc.)
   7. Are active-high and active-low marked consistently?
   8. Are power (and ground) pins consistently placed and marked?
   9. Do pin positions adhere to the selected grid size
      1. If the the pins are off grid, connections might not be made properly.

3. Functionality

   1. Are all pins on all ICs handled?
      1. Unused OPAMPs: output to negative input and positive input to ground.
      2. Unused comparators: All pins to common.
      3. Beak-out of extra pins from ICs or subsystems?
   2. Are mating connectors on different boards matched in pin-out?
   3. Have necessary inputs been ESD protected? #ESD
      1. A typical solution would be current limiting resistors, clamping diodes.
   4. Are multipart components all identified and utilized?
   5. Are multi-channel blocks implemented as actual multi-channel sheets?
   6. Is there an external header for programming/firmware flashing?
   7. Have all logic circuits been checked for race conditions?
   8. Do all CMOS inputs have latch-up protection if inputs are powered before IC power-up?
   9. Are amplifier circuits stable?
   10. Have amplifier slew rates and overdrive behaviors been analyzed, especially if used as comparators?
   11. Have oscillator circuits been verified for reliable startup under all conditions?
   12. Are predictable power-up states verified for all ICs?
   13. Are any Darlington or open-collector outputs verified compatible with CMOS logic inputs (ensuring proper low-level voltage)?

4. Electrical

   1. Are reset pins pulled to high/low?
   2. Is reset filtered?
   3. Are polarized components protected/ensured against from reverse voltage?
   4. Pull-up on all open-collector?
   5. Are resistors operating within their specified voltage range?
   6. Is a low-impedance source driving tantalum capacitors?
      1. It can result in premature failure. Switch-on current should also be limited. References:
         1. [A Study of Field Crystallization in Tantalum Capacitors and its effect on DCL and Reliability - AVX](http://www.avx.com/docs/techinfo/FieldCrystallization.pdf)
         2. [Voltage Derating Rules for Solid Tantalum and Niobium Capacitors - AVX](http://www.avx.com/docs/techinfo/Tantalum-NiobiumCapacitors/voltaged.pdf)
         3. [What a cap-astrophe! - Jim Keith, EDN](https://www.edn.com/electronics-blogs/tales-from-the-cube/4363362/What-a-cap-astrophe-)
         4. [DC LEAKAGE FAILURE MODE - Vishay](http://www.vishay.com/docs/49268/tn0003.pdf)
   7. Is there sufficient bulk capacitance?
   8. Are MOSFETs protected against transient overvoltage?
   9. Have all amplifier input common-mode voltage ranges been checked against datasheet limits?
   10. Are floating inputs (including comparator inputs, transistor gates/bases) properly biased or pulled to defined logic states?
   11. Are all analog inputs protected from overvoltage and latch-up scenarios?

5. Power

   1. Has the worst-case power dissipation been calculated at maximum ambient temperature?
   2. Has each regulator been checked for input/output capacitance compatibility according to datasheet?
   3. Does each regulator have enough input capacitance for load dips?
   4. Are regulators within their total output capacitance limits (important for LDO/Switchers)?
   5. Is a linear regulator used after a switching regulator if very low noise is required?
   6. Are all bipolar transistor junctions protected against reverse base-emitter voltages?

6. Testing

   1. Are there ground connection points? (for probes etc.)
   2. Have necessary test points been added?
   3. Have configurable strap-in pins been biased?
   4. Have configurable strap-in pins been connected with jumpers or similar?

7. Busses

   1. I2C
      1. Pull-up on SDA an SCL
         1. I2C is open-drain and thus needs pull-up. References: [Texas Instruments, Application Report, I2C Bus Pullup Resistor Calculation](https://www.ti.com/lit/an/slva689/slva689.pdf)
   2. JTAG
      1. Have datasheets been consulted for necessary pull-up/-down?
         1. Typically TMS and TDI are pull-up and TCK is pull-down, but it changes between manufacturers and devices.
         2. Some devices have internal pull-up/-down, yet external resistors are recommended to keep start-up well-defined.
   3. SWD
      1. Have datasheets been consulted for necessary pull-up/-down?
         1. Typically TMS and TDI are pull-up and TCK is pull-down, but it changes between manufacturers and devices.
         2. Some devices have internal pull-up/-down, yet external resistors are recommended to keep start-up well-defined.

8. Signal integrity

   1. Is there sufficient decoupling?
   2. Is there filtering between analog and digital commons?
   3. Are optocouplers filtered?
   4. Impedance on inputs from outside of board?
   5. Are series (damping) resistors placed near the signal source to reduce ringing?
   6. Are parallel termination resistors placed near the signal receiver to ensure correct voltage levels?
   7. Are ferrite beads on input/output power lines?
   8. Are ferrite beads on sensitive signal lines?
      1. This includes signal lines that are not sensitive themselves, but connect to sensitive components. E.g. U-Blox recommend ferrite beads on GPS module UART connections to avoid RF noise travelling "along" and into the module, see [U-Blox M8 Hardware Integration Manual](https://www.u-blox.com/sites/default/files/NEO-M8_HardwareIntegrationManual_%28UBX-13003557%29.pdf)
   9. Do all ferrite beads have sufficient margin in DC current rating?
      1. When the DC current (DC bias current) approaches the maximum, the effective impedance of ferrite beads decreases significantly.
      2. See [Analog Devices AN-1368, Choosing and Using Ferrite Beads](https://www.analog.com/media/en/technical-documentation/application-notes/an-1368.pdf)
   10. Is there an estimate of what frequencies the ferrite beads are required to filter?
   11. Do high-speed single-ended digital signals have series resistors?
   12. Is there a footprint for a common mode filter on high-speed differential signals going offboard?
       1. For high-speed differential buses like USB 3.0, DisplayPort, and HDMI, a common-mode filter will stop common-mode noise generated in the transceiver from traveling into the signal line where it may radiate from the cable.
       2. Notice that the filter might degrade the differential signal slightly.
       3. Using a footprint allows one to be quickly fitted in case EMC testing fails.
   13. Do op-amps have input filters for EMI?
       1. High frequency EMI signals can be rectified by the op-amp if not filtered out beforehand, resulting in DC errors at the output.
       2. See [Analog Devices MT-096, RFI Rectification Concepts](https://www.analog.com/media/en/training-seminars/tutorials/MT-096.pdf) and [Analogue circuit design for RF immunity, Clough Consoltants](https://cherryclough.com/media/file/Miscellaneous/Analogue%20circuit%20design%20for%20RF%20immunity,%20EMCJ,%20Issue%2084,%20Sept%202009.pdf)
   14. Do any signal lines require pseudo-differential treatment due to noise?
   15. Are voltage dividers re-calculated for exact signal thresholds?
   16. Is there a Zener or C on op-amp outputs to prevent overvoltage?
   17. Are optoisolators protected with parallel RC or diode for noise immunity?
   18. Are transient voltage suppression (TVS) diodes added to all external interfaces and connectors for ESD protection?
   19. Is adequate protection against voltage transients provided for all MOSFET gates and power semiconductor devices?

9. Documentation and notes

   1. Unpopulated parts are clearly marked
   2. Are destinations noted if they go to other sheets
   3. Are connections marked with expected current draw?
   4. Has special PCB or layout requirements been noted? #schematic #pcb
      1. Impedance?
      2. Ground planes?
      3. Routing?
      4. Keep-out?
      5. References to datasheet's recommendations
   5. Notes explaining purpose, functionality, origin, references and caculations for circuits

10. Drafting

    1. No overlap between text, notes references, wires, symbols etc.
    2. Is all text horizontal?
       1. Within reason and if there is space for it.
    3. Do all components have reference and value?
       1. Are values in a uniform format
       2. Are references using standard designators?
       3. Are references placed unambiguously?
    4. Are all junctions dotted?
    5. Are no-connects marked?
    6. No upwards pointing ground symbols?
    7. Are component references ordered by schematic layout?
    8. Are the appropriate power nets connected? (Vcc, Vss, Vdd)
    9. Net names on top of lines
    10. Are unused nets left unlabeled?
        1. If a net is labeled, it is expected to be used. It is usually clearer to leave it unlabeled.
    11. All connections/markings have a purpose
        1. Connections going from and to nowhere lead to confusion.
    12. Are all components aligned to grid?

11. Sheets

    1. Do schematic sheets use a consistent template?
    2. Sheets are consistently sized
    3. Readable when printed
    4. Logical layout should go left-right, top-bottom.
       1. It is a convention for input signals to "enter" on the left and progress towards right.
    5. Can schematic be printed in-house? (i.e. a standard printer capable of ≤ Tabloid/A3)
    6. Is there a visual top-level sheet showing how subsystems connect?

12. Header/block

    1. Name of author
    2. Name of reviewer
    3. List of revisions and changes
    4. Date
    5. Revision
    6. Company / organization
    7. Sheet/drawing number

13. Final
    1. Has DRC passed?

## Printed circuit board

1. Manufacturing

   1. Are gold fingers needed?
   2. How is the PCB panelized?
      1. Do layers align on panelized files?
   3. What stack-up is needed?
   4. Which finish is necessary?
   5. What thickness of finish?
   6. Is there a bill of materials?
   7. Ability for blind or buried vias?
   8. Are solder paste openings the proper size?
   9. Are manufacturing tolerances honored?
      1. Solder mask
      2. Silk screen
      3. Traces
      4. Holes
   10. Are all manufacturing requirements noted on the layout file?
   11. Finish, holes, thickness, solder mask
   12. Panelization
   13. Panelized PCB fits test rig
   14. Assembly
   15. Is there enough space for the minimum bending radius of the wire harnessing?
   16. Are fiducials needed for assembly?
   17. Is there a recommended/necessary order for mounting components on the board?
   18. Will mounting certain components make it impossible to mount others?
   19. Is there an assembly order for subsystems?
   20. Is there a testing order for subsystems?

2. Footprints

   1. Is pin 1 marked in a consistent manner?
   2. Is component polarity marked in a consistent manner?
      1. For electrically polarized components like capacitors?
      2. For keyed components like connectors?
   3. Are high-density chips marked with pin numbers?
   4. Are there tick-marks for every 5/10 pin on high pin count?
   5. Are there square pins on components? Are the holes big enough?
   6. Have all custom component symbols been cross-checked explicitly against datasheet pinouts?
      1. It's always prudent to also double check footprints obtained from third party providers.
      2. Have the footprint dimensions been cross-checked with recommended footprint for the specific component?
      3. Are the footprints from the datasheet defined as top view or bottom view?
   7. Are edge-connectors/fingers interleaved/zig-zag?
      1. Edge pins on SODIMM are interleaved in placement when comparing the two sides of the inserted board. References:
         1. [TE connectivity: 390112-1 datasheet](https://www.te.com/commerce/DocumentDelivery/DDEController?Action=showdoc&DocId=Customer+Drawing%7F390112%7FR1%7Fpdf%7FEnglish%7FENG_CD_390112_R1.pdf%7F390112-1)
         2. [Wikipedia: Zig-zag in-line package](https://en.wikipedia.org/wiki/Zig-zag_in-line_package)
   8. Are there the necessary thermal pads?
   9. Are they exposed?
   10. Are they connected to the right net?
       1. The net is not necessarily ground.
   11. Are certain pins only accessible on the thermal pad/unexposed pads and is the assembly procedure for this noted?
       1. Sometimes the only ground connection is the thermal pad. This requires soldering the thermal pad and it is thus a assembly requirement to ensure it is soldered.
   12. No rounded edge SMT pads (risk if using stencil)
   13. SMT pads length ≥ pin length + 8 mil (4 each side)
   14. Pads ≥10 mil larger than hole; holes ≥10 mil larger than lead

3. Placement

   1. Are jumpers accessible?
   2. Are debug connectors accessible?
   3. Filter resistors closer to the source?
   4. Termination resistors closer to the target?
   5. Does the layout allow for rework or repair of a component without needing to remove others?
   6. Are high-frequency crystals placed flush and grounded adequately to PCB ground planes?

4. Clearance

   1. Are all keep-out areas honored?
   2. Around mounting holes?
   3. For IC extraction tools?
   4. For programming tools?
   5. For assembly tools (wrenches, screwdrivers etc.)
   6. For probes?
   7. Trace-to-trace clearance based upon voltage rating?

5. Mechanical

   1. Is there spacing for an assembly run marking?
   2. Is there clearance for connectors?
   3. Are there mounting holes?
   4. Should mounting holes be electrically isolated?
   5. Should grounded mounting holes have via stitching?
      1. Vias around mounting holes improve ground connection and provides some redundancy.
      2. Source: [Why are vias placed this way on a PCB? - Stack Exchange](https://electronics.stackexchange.com/a/36845/2795)
   6. Are hole diameters compensating for plating?
   7. Is the outline of the board defined?
   8. Is the mechanical enclosure defined?
   9. Is there enough space for the mating connectors? #clearance #connectors
   10. Is there enough vertical space for components?
   11. Is there a drill legend?
   12. Are internal corners rounded? Can they be milled?

6. Electrical

   1. What stack-up is needed?
   2. Polarized components are oriented correctly
   3. All traces are routed?
   4. Are decoupling capacitors placed close to power pins of ICs?
   5. Are analog and digital commons joined at only one point?
   6. Does ERC pass?
   7. Are isolation barriers large enough? #mechanical #power #safety
   8. Are all high voltage clearances in place? Look under heat sinks tied to high voltage…
   9. Are the appropriate power nets connected? (Vcc, Vss, Vdd)

7. Signal integrity

   1. Are digital signals routed over separate (digital) ground planes?
   2. Do high-speed signals avoid gaps in ground planes?
   3. Are stubs minimized for high-speed signals?
   4. Are differential pair spacing based upon impedance matching?
   5. Are transmission lines terminated with an appropriate impedance?
   6. Are crystal connections short?
   7. Is there a guard ring around the crystal?
   8. Are there filters on A/D pins?
   9. Drivers / receivers placed close to connectors?
   10. EMI / RFI close to entry / exit of shielded areas?
   11. Are traces avoided under sensitive components?
   12. Are traces avoided under noisy components?
   13. Are vias avoided under metal-film resistors?
   14. Is via fencing of sensitive RF transission lines done with the proper via spacing? (< 1/20 lambda)
   15. Are ground stitching vias used to maintain low-impedance ground connections between layers?
   16. Are stitching vias placed regularly along ground pours, especially near high-frequency or sensitive traces?
   17. Are stitching vias added near connectors, power entry, decoupling capacitors, layer transitions, mixed-signal zones, and power return paths?
   18. Is there an option for a shielding can over sensitive circuitry e.g. RF?
   19. Are bypass capacitors close to power pins?
   20. Is low inductance mounting used for decoupling?
   21. Have traces running under noisy or sensitive components been minimized or eliminated?
   22. Are via fences properly spaced (less than λ/20) around sensitive RF/high-speed signals?
   23. Are long cable runs treated with differential or pseudo-differential pairs or additional filtering to enhance EMC performance?

8. Copper pour

   1. Ground / power pins are connected and checked?
   2. No pour between adjacent pins on ICs?
      These can be mistaken for shorts during inspection. A keep-out zone between pins can fix this without adjusting the pour clearances.
   3. Has all layers been checked?
   4. Are there thermal reliefs at appropriate places?
   5. Do they introduce ground loops?
   6. Avoid sharp copper shapes or small islands (can act as antennas)

9. Traces

   1. Are trace-pad connections sufficiently obtuse (angle 90 deg or more)?
   2. Are the trace widths sufficient for the current draw and max heating?
   3. No side routed pads?
   4. No connections between adjacent pins on ICs?
      1. These can be mistaken for shorts during inspection.
   5. Are vias for internal power traces big enough?
   6. Is there enough space for heatsinks? #mechanical #thermal
   7. Has mitered bends or soft curves (r > 3 trace width) been implemented for impedance sensitive traces?

10. Thermal

    1. Are temperature sensitive components placed away from hot components?
    2. Are there thermal vias in thermal pads?

11. Testing

    1. Are there ground connection points _close_ to analog test points?
    2. Has each net been provided with a test point or a documented reason why it is unnecessary?
    3. Test vias should not be placed within 5mm of the board edge
    4. Test vias should be exposed to avoid soldermask issues
       1. This means using non-tented vias and possibly changing the soldermask expansion settings as required
    5. Has a test coupon been included on the PCB
       1. This is typically relevant for controlled impedance and professional fab QA?

12. Silk screen

    1. Notes and documentation
       1. Is there a revision number?
       2. Is there a date?
       3. Is there blank space for a serial/assembly number?
          1. Remember to consider how large it should be.
          2. Reference: [Writable area on a PCB - Stack Exchange](https://electronics.stackexchange.com/questions/422510/writable-area-on-a-pcb)
       4. Are connector pin-outs labeled?
       5. Fuse size and type marked on PCB
       6. Are functional groups marked?
       7. Are high-density chips marked with pin numbers?
       8. Are there silkscreen tick marks for every 5/10 pins on high pin-count components?
       9. Is functionality labeled?
          1. Test points
          2. LEDs
          3. Buttons
          4. Connectors/terminals
          5. Mounting holes
          6. Jumpers
          7. Orientation/polarity
    2. Drafting
       1. No silk screen on pads
       2. All text is readable from at most two directions
       3. Will the silk screen be legible?
       4. Are component references order by PCB layout?
       5. Is there a coordinate system?

13. Final

    1. Does ERC pass?
    2. Are there any superfluous vias?
    3. Does LVS pass?
       1. _Layout Versus Schematic_ is a check to confirm that the board layout actually implements the schematic.
       2. That is: Are the traces actually connecting the proper components? Resources: [Wikipedia](https://en.wikipedia.org/wiki/Layout_Versus_Schematic).

14. Header/block

    1. Name of author
    2. Name of reviewer
    3. List of revisions and changes
    4. Date
    5. Revision
    6. Company / organization
    7. Sheet/drawing number

## Ordering

1. Do production files match design files?

   1. Missing or wrong geometry?
      1. Complex geometry can sometimes cause errors during export.
      2. Pads and artwork can also be assigned to the wrong layers.
   2. Right number of layers?

2. Has the correct/latest files been uploaded?

   1. Yes, this does happen.
   2. Triple check what's being ordered is the correct manufacturing files!

## Board inspection

1. Solder mask alignment

2. Solder mask curing

## Wired harnessing

1. Wire gauge compatible with termination

2. Cable ties and lacing cord is noted

3. Length and color is noted

4. Avoid signal and power in same connector

5. Avoid current flow to remote sources through earth

6. Is there a breakout board for the connector?

7. Wire termination is noted
   1. Heat shrink tubing
   2. Solder
   3. Crimp force

## Software

1. Is automated software testing used? #software #procedure

2. Is there a style guide?

3. Are loops checked for termination conditions?

4. Is power up and power down handled correctly?

5. Are unused interrupts handled? (Either restart or damage control)

6. Is there a difference between warm and cold reset?

   1. How does the devices behave if only the software is reset?

7. Memories

   1. Are setup, hold and access times correct for external memories?
   2. Is memory integrity checked?
   3. Is memory integrity guaranteed?
   4. Is unused program memory/ROM spaces filled with traps or restart instructions?

8. Bounds checks

   1. Is user/sensor input bounds checked?
   2. Are outputs bounds checked?
   3. Are calculations bounds checked?
   4. Are buffer overflows handled?

9. Data structures and formats

   1. Do they include a version number or identifier?
   2. Are the bounds of variable size formats well-defined?

10. Software characteristics

11. CPU utilization

12. Memory utilization

13. Interrupt response time

14. Interrupt execution time

15. Versioning

16. How is software versioned?

    1. Semantic versioning is an excellent choice. See: [Semantic Versioning](https://semver.org/)

17. Is version defined in a header?
    1. By defining the version in a header it is easy to update and consistently written.

## Documentation

1. Usage instructions

2. Assembly instructions

3. Troubleshooting instructions

4. Component list

5. Schematic diagrams

6. PCB explanation

7. Design decisions

## References

- [pcbchecklist by henrikh](https://pcbchecklist.com/)
- [azonenberg's layout and schematic checklist](https://github.com/azonenberg/pcb-checklist)
- [jnoss' PCB checklist](https://github.com/jnoss/pcb-checklist)
- [altium schematic design review checklish](https://resources.altium.com/p/schematic-review-checklist)
- [Stack Exchange: Good checklist for PCB design to be used by the EE (not by the PCB designer)](https://electronics.stackexchange.com/questions/6773/good-checklist-for-pcb-design-to-be-used-by-the-ee-not-by-the-pcb-designer)
- [JLD sytstems' Electronics Design Checklist](http://www.jldsystems.com/pdf/Electronics%20Design%20Checklist.pdf)
