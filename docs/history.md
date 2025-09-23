# History: BREAD

## Paper 1: Original Concept

BREADS builds on the original concept and guidelines put forward in

See original OSF repo for full BREAD v0 release corresponding to the original paper:

- [Open source framework for a Broadly Expandable and Reconfigurable data acquisition and automation device (BREAD)](https://doi.org/10.1016/j.ohx.2023.e00467).
- This largely presented the concept of BREAD, many of the boards were non- or semi-functional or incomplete at time of publication
- This idea of BREAD was largely developed by Shane Oberloier and Joshua M. Pearce and implemented by Shane Oberloier, Nicholas G. Whismana, Finn Hafting, and others at the MTU Open Source Hardware Entreprise (OSHE)

## OpenReactor

Before and following after this initial publication, the development of BREAD was done at MTU as part of OSHE and known new slices were prototyped and the [MOST_OpenReactor](https://gitlab.com/mtu-most/most_openreactor) software was created to create a more unified central controller with a user interface. Further developed by FAST Lab at Western University: [OpenReactor](https://github.com/uwo-fast/OpenReactor), [OpenReactor2](https://github.com/uwo-fast/OpenReactor2).

## Paper 2: Pyrolysis Application

As part of joint project with MTU and Western University and others for plastic to protein processing system. This resulted in the publication of the paper [Modular Open-Source Design of Pyrolysis Reactor Monitoring and Control Electronics](https://doi.org/10.3390/electronics12244893). The ESP32 thing plus C controller (ESPT) was developed along with more mature versions of DCMT and RLHT, primarily by Finn Hafting. The [BREAD-Local-Software](https://github.com/FHafting/BREAD-Local-Software) or BUTTER was developed by Finn Hafting and Xander Chin which used static web assets stored on the SD card in combination with the ESP32 asynchronous web server to create a locally accessible user interface.

## Report: BUTTER

https://github.com/FHafting/BREAD-Local-Software/blob/main/joss_paper/paper.pdf

## Paper 3 + Thesis: Moving BREAD Towards SCADA

Further mechanical developments and applications to bioreactors and pH control was done by Finn Hafting and is reflected in the paper [Moving the Open-Source Broadly Reconfigurable and Expandable Automation Device (BREAD) Towards a Supervisory Control and Data Acquisition (SCADA) System](https://doi.org/10.3390/technologies13040125). The ESPT controller as since been discontinued due to its inhereint limitations in reliably handling more complex supervision and networking requirements posed by future development.

## Legacy SLICEs

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
