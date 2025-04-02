
# Progress Tracker

## BREADS

- ✅ Done
- 🛠️ In Progress
- ❌ Incomplete
- ❓ Unknown
- 🔁 Revising

### Release Testing Tracker

This is to track the procurement and testing of all the BREAD v2 boards for release.

| Name | Schem | PCB | BOM | FW | Test | Notes | Known Issues |
| --- | --- | --- | --- | --- | --- | --- | --- |
| [Nano_Minima](https://github.com/CameronBrooks11/Nano_KiCAD) | ✅ | ✅ | 🛠️ | ❌ | ❌ | Arduino Nano v3.3 but without regulator, button, D13 LED and USB mini-b | --- |
| [can-nano-shield](https://github.com/CameronBrooks11/can-nano-shield) | ✅ | ✅ | 🛠️ | ❌ | ❌ | Arduino Nano shield with MCP2515 & TJA1051/3 | --- |
| --- | --- | --- | --- | --- | --- | --- | --- |
| [Slice_TEMP](https://github.com/FEASTorg/Slice_TEMP) | ✅ | ✅ | ✅ | ✅ | ❌ | Optimized layout, removed reset pin which needs to be clipped now | --- |
| [Slice_PRTO](https://github.com/FEASTorg/Slice_PRTO) | ✅ | ✅ | ✅ | ✅ | ❌ | Terminal connector, surface mount, and through hole prototyping | --- |
| --- | --- | --- | --- | --- | --- | --- | --- |
| [Slice_ACAR](https://github.com/FEASTorg/Slice_ACAR) | ✅ | 🛠️ | 🛠️ | ❌ | ❌ | Atlas Sci. carrier for pH/DO/ORP/EC board in an isolation board. | --- |
| [Slice_ACHP](https://github.com/FEASTorg/Slice_ACHP) | ✅ | 🛠️ | 🛠️ | ❌ | ❌ | Atlas Sci. carrier for pH/DO/ORP/EC with onboard isolation. | --- |
| [Slice_AOEM](https://github.com/FEASTorg/Slice_AOEM) | ✅ | 🛠️ | 🛠️ | ❌ | ❌ | Atlas Sci. pH/DO/ORP/EC OEM IC with onboard isolation | --- |
| [Slice_BUCK](https://github.com/FEASTorg/Slice_BUCK) | ✅ | ✅ | 🛠️ | ❌ | ❌ | Simple discrete component buck converter | Needs advanced control programming |
| [Slice_CRXX](https://github.com/FEASTorg/Slice_CRXX) | ✅ | ✅ | 🛠️ | ❌ | ❌ | The three IC variants (10A,20A,40A) share same PCB as footprint is identical. | --- |
| [Slice_DCMT](https://github.com/FEASTorg/Slice_DCMT) | 🔁 | 🔁 | ✅ | ✅ | 🔁 | Fixed pin and layout, added back fuses | Motor1 drive pin isnt PWM |
| [Slice_GDHB](https://github.com/FEASTorg/Slice_GDHB) | ✅ | 🛠️ | 🛠️ | ❌ | ❌ | for large BDC motors | --- |
| [Slice_FPSG](https://github.com/FEASTorg/Slice_FPSG) | 🛠️ | 🛠️ | 🛠️ | ❌ | ❌ | New for high speed strain gauge (load cell) measurements. | --- |
| [Slice_HEAT](https://github.com/FEASTorg/Slice_HEAT) | ✅ | 🛠️ | 🛠️ | ❌ | ❌ | layout optimized, duplicated circuit. | op-amp issues |
| [Slice_LCDI](https://github.com/FEASTorg/Slice_LCDI) | 🛠️ | ❌ | ❌ | ❌ | ❌ | serial LCD input and buttons for HMI | --- |
| [Slice_LEPD](https://github.com/FEASTorg/Slice_LEPD) | 🛠️ | ❌ | ❌ | ❌ | ❌ | For BR flow cell. Referencing Pioreactor, for OD. See if can replace with LVAI | --- |
| [Slice_LOAD](https://github.com/FEASTorg/Slice_LOAD) | 🛠️ | 🛠️ | 🛠️ | ❌ | ❌ | HX711 board for load cells. | --- |
| [Slice_LVAI](https://github.com/FEASTorg/Slice_LVAI) | ✅ | 🛠️ | 🛠️ | ❌ | ❌ | Full docs / analysis of cascaded amp. | Needs expanded signal analysis capabilities |
| [Slice_RLAY](https://github.com/FEASTorg/Slice_RLAY) | ✅ | 🛠️ | 🛠️ | ❌ | ❌ | Updated to latest BREAD TEMPlate, replaced terminals with standard. | --- |
| [Slice_RLHT](https://github.com/FEASTorg/Slice_RLHT) | 🔁 | 🔁 | ✅ | ✅ | 🔁 | Changed terminals to standard ones, upgraded to MAX31855 | --- |
| [Slice_SERV](https://github.com/FEASTorg/Slice_SERV) | ✅ | 🛠️ | 🛠️ | ❌ | ❌ | Redid voltage in selection. | Often behaves erratically, sometimes fries servos |
| [Slice_SOLR](https://github.com/FEASTorg/Slice_SOLR) | 🔁 | 🔁 | 🛠️ | ❌ | ❌ | Full redesign and implementation, old design the charging chip too small. | --- |
| [Slice_SSTP](https://github.com/FEASTorg/Slice_SSTP) | 🛠️ | ❌ | ❌ | ❌ | ❌ | High power stepper driver for tensile tester. | --- |
| [Slice_STEP](https://github.com/FEASTorg/Slice_STEP) | 🔁 | 🔁 | 🔁 | ❌ | ❌ | NEEDS UPDATING. | --- |
| [Slice_THMX](https://github.com/FEASTorg/Slice_THMX) | 🛠️ | 🛠️ | 🛠️ | ❌ | ❌ | using LTC2983 multi-channel, multi-temp sensor IC | --- |
| [Slice_THRM](https://github.com/FEASTorg/Slice_THRM) | 🛠️ | 🛠️ | 🛠️ | ❌ | ❌ | 3 vars: MAX6675 (A), MAX31855 (B), MAX31856 (C). | --- |
| [Slice_USBP](https://github.com/FEASTorg/Slice_USBP) | ✅ | ✅ | 🛠️ | ❌ | ❌ | Redid layout to be optimized, updated to latest BREAD TEMPlate. | --- |
| [Slice_IAQM](https://github.com/FEASTorg/Slice_IAQM) | 🔁 | 🔁 | 🔁 | 🛠️ | 🛠️ | PCB of env-safety-monitor from PV Box paper. | SD card footprint flipped |

## BREAD (v0 & v1)

Inactiv and mostly archived GitHub repos.

See original OSF repo for full BREAD v0 release corresponding to the original paper:

- [Open source framework for a Broadly Expandable and Reconfigurable data acquisition and automation device (BREAD)](https://doi.org/10.1016/j.ohx.2023.e00467).
- This largely presented the concept of BREAD, many of the boards were non- or semi-functional or incomplete at time of publication
- This idea of BREAD was largely developed by Shane Oberloier and Joshua M. Pearce and implemented by Shane Oberloier, Nicholas G. Whismana, Finn Hafting, and others at the MTU Open Source Hardware Entreprise (OSHE)

Before and following after this initial publication, the development of BREAD was done at MTU as part of OSHE and known new slices were prototyped and the [MOST_OpenReactor](https://gitlab.com/mtu-most/most_openreactor) software was created to create a more unified central controller with a user interface.

As part of joint project with MTU and Western University and others for plastic to protein processing system. This resulted in the publication of the paper [Modular Open-Source Design of Pyrolysis Reactor Monitoring and Control Electronics](https://doi.org/10.3390/electronics12244893). The ESP32 thing plus C controller (ESPT) was developed along with more mature versions of DCMT and RLHT, primarily by Finn Hafting. The [BREAD-Local-Software](https://github.com/FHafting/BREAD-Local-Software) or BUTTER was developed by Finn Hafting and Xander Chin which used static web assets stored on the SD card in combination with the ESP32 asynchronous web server to create a locally accessible user interface. Further mechanical developments and applications to bioreactors and pH control was done by Finn Hafting and is reflected in the paper [Moving the Open-Source Broadly Reconfigurable and Expandable Automation Device (BREAD) Towards a Supervisory Control and Data Acquisition (SCADA) System](https://doi.org/10.3390/technologies13040125).

The ESPT controller as since been discontinued due to its inhereint limitations in reliably handling more complex supervision and networking requirements posed by future development.

| Name | Schematic | Board | BOM | Firmware | Tested | Notes |
| --- | --- | --- | --- | --- | --- | --- |
| [Loaf_x004](https://github.com/FEASTorg/Loaf_x004)   | ✅ | ✅ | ✅ | ✅ | ✅ | Superseded by ESPT + backplane |
| [Loaf_ESPT](https://github.com/FEASTorg/Loaf_ESPT)   | ✅ | ✅ | ✅ | ✅ | ✅ | No longer being used, switched to back to SBC (RPi) |
| [Slice_PUMP](https://github.com/FEASTorg/Slice_PUMP) | ✅ | ✅ | ✅ | ✅ | ❌ | Gives intended output but never worked, tested on with MTU Dr. Ong's pump |
| [Slice_AAFT](https://github.com/FEASTorg/Slice_AAFT) | ✅ | ✅ | ✅ | ✅ | ❓ | Deprecated; efforts should go to SLC_LVAI |
| [Slice_PHDO](https://github.com/FEASTorg/Slice_PHDO) | ✅ | ✅ | ✅ | ✅ | ✅ | Deprecated by ACAR, ACHP, AOEM |
| [Slice_CR10](https://github.com/FEASTorg/Slice_CR10) | ✅ | ✅ | ✅ | ✅ | ✅ | Superseded by CRXX, no known issues, check component availability |
| [Slice_CR20](https://github.com/FEASTorg/Slice_CR20) | ✅ | ✅ | ✅ | ✅ | ❌ | Superseded by CRXX, no known issues, check component availability |
| [Slice_CR40](https://github.com/FEASTorg/Slice_CR40) | ✅ | ✅ | ✅ | ✅ | ❌ | Superseded by CRXX, no known issues, check component availability |