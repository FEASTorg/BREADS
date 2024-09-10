
# Progress Tracker

## BREAD v2

*Note that the below table is filled according to previous students work that hasn't since been verified.*

- ✅ Done
- 🛠️ In Progress
- ❌ Incomplete
- ❓ Unknown

| Name | Schematic | Board | BOM | Firmware | Tested | Notes |
| --- | --- | --- | --- | --- | --- | --- |
| [Loaf_ESPT](https://github.com/uwo-fast/Loaf_ESPT)   | ✅ | ✅ | ✅ | ✅ | ✅ |  |
| [Slice_BUCK](https://github.com/uwo-fast/Slice_BUCK) | ✅ | ✅ | ✅ | ✅ | ❌ | Changed to low-side switching with IGBT; needs advanced control programming |
| [Slice_CRXX](https://github.com/uwo-fast/Slice_CRXX) | ✅ | ✅ | ✅ | ✅ | ✅ | updated to latest BREAD TEMPlate and unified the three (10A, 20A, 40A) |
| [Slice_DCMT](https://github.com/uwo-fast/Slice_DCMT) | ✅ | ✅ | ✅ | ✅ | ✅ | Recommends replacing with low-side switching design with IGBT |
| [Slice_HEAT](https://github.com/uwo-fast/Slice_HEAT) | ✅ | ✅ | ✅ | ✅ | ✅ | Requires building and testing; op-amp issues |
| [Slice_LVAI](https://github.com/uwo-fast/Slice_LVAI) | ✅ | ✅ | ✅ | ✅ | ✅ | Needs expanded signal analysis capabilities |
| [Slice_PHDO](https://github.com/uwo-fast/Slice_PHDO) | ✅ | ✅ | ✅ | ✅ | ✅ | |
| [Slice_RLAY](https://github.com/uwo-fast/Slice_RLAY) | ✅ | ✅ | ✅ | ✅ | ✅ |  |
| [Slice_RLHT](https://github.com/uwo-fast/Slice_RLHT) | ✅ | ✅ | ✅ | ✅ | ✅ | Same as SLC_HEAT but with relay output stage |
| [Slice_SERV](https://github.com/uwo-fast/Slice_SERV) | ✅ | ✅ | ✅ | ✅ | ❌ | Often behaves erratically, sometimes fries servos |
| [Slice_SOLR](https://github.com/uwo-fast/Slice_SOLR) | ✅ | ✅ | ❌ | ❌ | ❌ | Needs redesign; charging chip too small |
| [Slice_STEP](https://github.com/uwo-fast/Slice_STEP) | ✅ | ✅ | ✅ | ✅ | ✅ |  |
| [Slice_TEMP](https://github.com/uwo-fast/Slice_TEMP) | ✅ | ✅ | ✅ | ✅ | ✅ | Updated by Cam May 2024 to BREAD core fit into board corner |
| [Slice_THRM](https://github.com/uwo-fast/Slice_THRM) | ✅ | ✅ | ✅ | ✅ | ✅ |  |
| [Slice_USBP](https://github.com/uwo-fast/Slice_USBP) | ✅ | ✅ | ✅ | ✅ | ✅ | Never got the parts; needs building and testing |

### Release Testing Tracker

This is to track the procurement and testing of all the BREAD v2 boards.

| Name | RFM | BOM | Assembled | Firmware | Tested | Notes |
| --- | --- | --- | --- | --- | --- | --- |
| [Loaf_ESPT ](https://github.com/uwo-fast/Loaf_ESPT)  | ✅ | 🛠️ | ❌ | ❌ | ❌ | Nothing changed, same outputs used. |
| [Slice_BUCK](https://github.com/uwo-fast/Slice_BUCK) | ✅ | 🛠️ |❌ | ❌ | ❌ | Updated to latest BREAD TEMPlate|
| [Slice_CRXX](https://github.com/uwo-fast/Slice_CRXX) | ✅ | 🛠️ | ❌ | ❌ | ❌ | Updated to latest BREAD TEMPlate and unified the three (10A, 20A, 40A) |
| [Slice_DCMT](https://github.com/uwo-fast/Slice_DCMT) | ❌ | ❌ | ❌ | ❌ | ❌ | |
| [Slice_HEAT](https://github.com/uwo-fast/Slice_HEAT) | ❌ | ❌ | ❌ | ❌ | ❌ | |
| [Slice_LVAI](https://github.com/uwo-fast/Slice_LVAI) | ❌ | ❌ | ❌ | ❌ | ❌ | |
| [Slice_PHDO](https://github.com/uwo-fast/Slice_PHDO) | ❌ | ❌ | ❌ | ❌ | ❌ | |
| [Slice_RLAY](https://github.com/uwo-fast/Slice_RLAY) | ✅ | 🛠️ | ❌ | ❌ | ❌ | Updated to latest BREAD TEMPlate |
| [Slice_RLHT](https://github.com/uwo-fast/Slice_RLHT) | ❌ | ❌ | ❌ | ❌ | ❌ | |
| [Slice_SERV](https://github.com/uwo-fast/Slice_SERV) | ❌ | ❌ | ❌ | ❌ | ❌ | |
| [Slice_STEP](https://github.com/uwo-fast/Slice_STEP) | ❌ | ❌ | ❌ | ❌ | ❌ | |
| [Slice_THRM](https://github.com/uwo-fast/Slice_THRM) | ✅ | 🛠️ | ❌ | ❌ | ❌ | |
| [Slice_USBP](https://github.com/uwo-fast/Slice_USBP) | ✅ | 🛠️ | ❌ | ❌ | ❌ | Updated to latest BREAD TEMPlate, optimized layout |

## BREAD v3

This is for the next phase of BREAD which will feature all the previous boards from v2 but with upgrades to the BREAD Slice core and also includes a number of new slices seen in the table below to add more functionalities to BREAD.

| Name | Schematic | Board | BOM | Firmware | Tested | Notes |
| --- | --- | --- | --- | --- | --- | --- |
| [Slice_IAQM](https://github.com/uwo-fast/Slice_IAQM) | ✅ | ✅ | 🛠️ | ❌ | For PV Box. |
| [Slice_ACAR](https://github.com/uwo-fast/Slice_ACAR) | ✅ | 🛠️ | ❌ | ❌ | To replace PHDO. |
| [Slice_ACHP](https://github.com/uwo-fast/Slice_ACHP) | ✅ | 🛠️ | ❌ | ❌ | To replace PHDO. |
| [Slice_AOEM](https://github.com/uwo-fast/Slice_AOEM) | ✅ | 🛠️ | ❌ | ❌ | To replace PHDO. |
| [Slice_LCDI](https://github.com/uwo-fast/Slice_LCDI) | 🛠️ | ❌ | ❌ | ❌ | For ESB. |
| [Slice_LOAD](https://github.com/uwo-fast/Slice_LOAD) | 🛠️ | ❌ | ❌ | ❌ | For tensile tester. |
| [Slice_SSTP](https://github.com/uwo-fast/Slice_SSTP) | ✅ | 🛠️ | ❌ | ❌ | For tensile tester. |
| [Slice_GDHB](https://github.com/uwo-fast/Slice_GDHB) | ✅ | 🛠️ | ❌ | ❌ | For Big BR. |
| [Slice_EADC](https://github.com/uwo-fast/Slice_EADC) | 🛠️ | ❌ | ❌ | ❌ | For BR flow cell. External ADC, for OD. |
| [Slice_LEDD](https://github.com/uwo-fast/Slice_LEDD) | 🛠️ | ❌ | ❌ | ❌ | For BR flow cell. External LED driving circuit, for OD. |
| [Slice_LEPD](https://github.com/uwo-fast/Slice_LEPD) | 🛠️ | ❌ | ❌ | ❌ | For BR flow cell. Referencing Pioreactor, for OD. See if can replace with LVAI |
| [Slice_HPTC](https://github.com/uwo-fast/Slice_HPTC) | ✅ | ✅ | ✅ | ❌ | From Rob Herc, going to test non slice version first |

### Release Testing Tracker

This is to track the procurement and testing of all the BREAD v3 boards.

| Name | RFM | BOM | Assembled | Firmware | Tested | Notes |
| --- | --- | --- | --- | --- | --- | --- |
| [Slice_IAQM](https://github.com/uwo-fast/Slice_IAQM) | ✅ | 🛠️ | ❌ | ❌ | ❌ | |
| [Slice_ACAR](https://github.com/uwo-fast/Slice_ACAR) | 🛠️ | ❌ | ❌ | ❌ | ❌ | |
| [Slice_ACHP](https://github.com/uwo-fast/Slice_ACHP) | 🛠️ | ❌ | ❌ | ❌ | ❌ | |
| [Slice_AOEM](https://github.com/uwo-fast/Slice_AOEM) | 🛠️ | ❌ | ❌ | ❌ | ❌ | |
| [Slice_LCDI](https://github.com/uwo-fast/Slice_LCDI) | 🛠️ | ❌ | ❌ | ❌ | ❌ | |
| [Slice_LOAD](https://github.com/uwo-fast/Slice_LOAD) | 🛠️ | ❌ | ❌ | ❌ | ❌ | |
| [Slice_SSTP](https://github.com/uwo-fast/Slice_SSTP) | 🛠️ | ❌ | ❌ | ❌ | ❌ | |
| [Slice_GDHB](https://github.com/uwo-fast/Slice_GDHB) | 🛠️ | ❌ | ❌ | ❌ | ❌ | |
| [Slice_EADC](https://github.com/uwo-fast/Slice_EADC) | 🛠️ | ❌ | ❌ | ❌ | ❌ | |
| [Slice_LEDD](https://github.com/uwo-fast/Slice_LEDD) | 🛠️ | ❌ | ❌ | ❌ | ❌ | |
| [Slice_LEPD](https://github.com/uwo-fast/Slice_LEPD) | 🛠️ | ❌ | ❌ | ❌ | ❌ | |
| [Slice_HPTC](https://github.com/uwo-fast/Slice_HPTC) | ✅ | ❌ | ❌ | ❌ | ❌ | |


## BREAD v4 (BREADS)

This iteration will be focused on standardizing the BREAD format and enabling full SCADA by placing BREAD at level 0 as a field device (communicates via CAN), placing a compatible MCU + instrastructre to run act as a PLC using OpenPLC at level 1 as the control device which connects to the LAN, having an open source microcomputer using Fuxa as the level 2 supervisory control (also on the LAN), an open source computer running thingsboard at level 3 as the production / scheduling control (this is where WAN would come in?), and some kind of open source entreprise resource planning (ERP) software. Initial develpment will focus on levels 0-2 then level 3 (integration with ThingsBoard in discussion on GH) then level 4 (more for demo).

## BREAD v1
Archived GitHub repos only, see original OSF repo for full BREAD v1 release corresponding to the [paper](https://doi.org/10.1016/j.ohx.2023.e00467).

| Name | Schematic | Board | BOM | Firmware | Tested | Notes |
| --- | --- | --- | --- | --- | --- | --- |
| [Loaf_x004](https://github.com/uwo-fast/Loaf_x004)   | ✅ | ✅ | ✅ | ✅ | ✅ |  |
| [Slice_PUMP](https://github.com/uwo-fast/Slice_PUMP) | ✅ | ✅ | ✅ | ✅ | ❌ | Gives intended output but never got working with Dr. Ong's pump |
| [Slice_AAFT](https://github.com/uwo-fast/Slice_AAFT) | ✅ | ✅ | ✅ | ✅ | ❓ | Deprecated; efforts should go to SLC_LVAI |
| [Slice_PHDO](https://github.com/uwo-fast/Slice_PHDO) | ✅ | ✅ | ✅ | ✅ | ✅ | Deprecated by ACAR, ACHP, AOEM |
| [Slice_CR10](https://github.com/uwo-fast/Slice_CR10) | ✅ | ✅ | ✅ | ✅ | ✅ | No known issues, check component availability |
| [Slice_CR20](https://github.com/uwo-fast/Slice_CR20) | ✅ | ✅ | ✅ | ✅ | ❓ | No known issues, check component availability |
| [Slice_CR40](https://github.com/uwo-fast/Slice_CR40) | ✅ | ✅ | ✅ | ✅ | ❓ | No known issues, check component availability |