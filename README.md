# BREAD

## Introduction
This project is fully documented in the paper: Shane Oberloier, Nicholas G. Whisman, Finn Hafting, Joshua M. Pearce, Open Source Framework for a Broadly Expandable and Reconfigurable Data Acquisition and Automation Device (BREAD), ''HardwareX'', 2023, e00467, [doi.org/10.1016/j.ohx.2023.e00467](https://doi.org/10.1016/j.ohx.2023.e00467).

This project has since grown and evolved, start by reading the [docs](docs/README.md)

This is a live [Google Drive folder](https://drive.google.com/drive/folders/1WQfWja8mfwrVcG5KNg36Ahn4GjASRSuR?usp=drive_link) where you can add ideas for the 'ideas.drawio' or make a new diagram if you want a collaborative visual space. Diagrams for documentation should be version controlled using Git as part of a GitHub repository on this org.

## Project Overview

| Name | Type | Current Revision | Notes |
| --- | --- | --- | --- |
| [Loaf_ESPT](https://github.com/FEASTorg/Loaf_ESPT) | Management | Rev 1 | ESP32 carrier for supervision of slices |
| [Slice_TEMP](https://github.com/FEASTorg/Slice_TEMP) | Template | Rev 2 | Template with nano, 12v->5v, and bus conn |
| [Slice_DCMT](https://github.com/FEASTorg/Slice_DCMT) | Actuation | Rev 2 | DC Motor Driver using an IC |
| [Slice_RLAY](https://github.com/FEASTorg/Slice_RLAY) | Actuation | Rev 2 | 4 channel SPDT relay |
| [Slice_SERV](https://github.com/FEASTorg/Slice_SERV) | Actuation | Rev 2 | Servo motor driver |
| [Slice_STEP](https://github.com/FEASTorg/Slice_STEP) | Actuation | Rev 2 | Stepper motor driver using an IC |
| [Slice_SSTP](https://github.com/FEASTorg/Slice_SSTP) | Actuation | Rev 0 | Discrete high power stepper motor driver |
| [Slice_GDHB](https://github.com/FEASTorg/Slice_GDHB) | Actuation | Rev 0 | A4957 driving a full bridge for high current BDC motors |
| [Slice_LCDI](https://github.com/FEASTorg/Slice_LCDI) | Communication | Rev 0 | LCD HMI |
| [Slice_USBP](https://github.com/FEASTorg/Slice_USBP) | Communication | Rev 1 | USB port slice |
| [Slice_HEAT](https://github.com/FEASTorg/Slice_HEAT) | Integrated | Rev 2 | DC heater slice using a pair of darlington transistors and MAX31855 |
| [Slice_RLHT](https://github.com/FEASTorg/Slice_RLHT) | Integrated | Rev 2 | Relay DC heater slice using MAX31855 |
| [Slice_BUCK](https://github.com/FEASTorg/Slice_BUCK) | Power | Rev 2 | Buck converter slice |
| [Slice_SOLR](https://github.com/FEASTorg/Slice_SOLR) | Power | Rev 2 | Field solar power for charging batteries off grid |
| [Slice_LVAI](https://github.com/FEASTorg/Slice_LVAI) | Sensing | Rev 2 | Low-voltage amplified input channels |
| [Slice_THRM](https://github.com/FEASTorg/Slice_THRM) | Sensing | Rev 2 | Thermocouple temperature measurement |
| [Slice_IAQM](https://github.com/FEASTorg/Slice_IAQM) | Sensing | Rev 0 | Air quality monitoring and alarm |
| [Slice_LOAD](https://github.com/FEASTorg/Slice_LOAD) | Sensing | Rev 0 | Load cell amplifier |
| [Slice_ACAR](https://github.com/FEASTorg/Slice_ACAR) | Sensing | Rev 0 | For interfacing with the Atlas Scientific EZO breakout chips, on-board isolation |
| [Slice_ACHP](https://github.com/FEASTorg/Slice_ACHP) | Sensing | Rev 0 | For interfacing with the Atlas Scientific EZO carriers, NO on-board isolation |
| [Slice_AOEM](https://github.com/FEASTorg/Slice_AOEM) | Sensing | Rev 0 | For interfacing with the Atlas Scientific EZO OEM components, on-board isolation |
| [Slice_HPTC](https://github.com/FEASTorg/Slice_HPTC) | Sensing | Rev 0 | High performance thermocouple using discrete components and signal processing techniques |
| [Slice_EADC](https://github.com/FEASTorg/Slice_EADC) | Sensing | Rev 0 | External ADC  |
| [Slice_LEDD](https://github.com/FEASTorg/Slice_LEDD) | Sensing | Rev 0 | LED Driver  |
| [Slice_LEPD](https://github.com/FEASTorg/Slice_LEPD) | Sensing | Rev 0 | Photo meter using LED and photodiode |

### Legacy

| Name | Type | Notes |
| --- | --- | --- |
| [Loaf_x004](https://github.com/FEASTorg/Loaf_x004) | Management | Succeeded by Loaf_ESPT|
| [Slice_PUMP](https://github.com/FEASTorg/Slice_PUMP) | Actuation | Limited scope for old project, never fully tested and functioning.|
| [Slice_AAFT](https://github.com/FEASTorg/Slice_AAFT) | Sensing | Succeeded by Slice_LVAI|
| [Slice_PHDO](https://github.com/FEASTorg/Slice_PHDO) | Sensing | Succeeded by Slice_ACAR, Slice_ACHP, Slice_AOEM|
| [Slice_CR10](https://github.com/FEASTorg/Slice_CR10) | Sensing | Succeeded by Slice_CRXX |
| [Slice_CR20](https://github.com/FEASTorg/Slice_CR20) | Sensing | Succeeded by Slice_CRXX |
| [Slice_CR40](https://github.com/FEASTorg/Slice_CR40) | Sensing | Succeeded by Slice_CRXX |

## Usage

To create a BREAD development folder with all the repositories making up the framework use the following script. Start by installing the requests and GitPython packages:
```
pip install requests gitpython
```
Then download run [this script](scripts/cloneAllBREAD.py) which will clone all the required repos into a folder called BREAD_DEV (including this one):
```
python cloneAllBREAD.py
```
Before running the script replace YOUR_TOKEN_HERE at the top of the file with a GitHub access token with permissions for accessing organizations and manipulating repositories.

## Documentation

Link to the detailed documentation when available. *We will be doing an autogen of docs from the individual repos pulling from their docs onto the site once we have access.*

## Contributing

Start designing your own slice or make a pull with your improvements! Please reach out in the discussions if you'd like to collaborate formally.

### Wish List

To see the current wish list for the BREAD family see [bread_ideas.md](docs/bread_ideas.md).

### Code of Conduct
[Link to the project's code of conduct if available.]

## License
[State the license under which the project is distributed. Include a link to the full license text.]

## Acknowledgements
[Acknowledge any contributors, collaborators, funding sources, or organizations that supported the project.]

## Contact
[Provide contact information for the project maintainer(s) or lead researcher(s). Include an email address or a link to a contact form.]

---

<div align="center">
  <p>
    <img src="https://img.shields.io/badge/Developed_by-UWO--FAST-orange" alt="Developed by FEASTorg">
    <img src="https://img.shields.io/badge/Powered_by-Open_Source-blue" alt="Powered by Open Source">
  </p>
</div>
