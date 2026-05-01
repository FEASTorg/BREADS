# SLICE Concept

- **SLICE**
  - Each PCB performs a single function
  - This is referred to as a **SLICE** which stands for _Single-function Logic Interface & Controller Element_
  - It has at minimum some onboard controller (processing) and logic (communication) interface along with supporting circuitry (function)
  - **Example:** A temperature sensor PCB with an I2C capable MCU that reads temperature data and applies a control signal to a power switch.

SLICEs can operate either alone in **single** mode or together in **leader-follower** mode. The two primary tasks of a slice is to A) recieve messages and interpret instructions from it's supervisor, B) execute it's intended function according to instructions. In **single** mode the SLICE MCU recieves messages via _point-to-point communication_ (i.e. USB serial) from a (micro)computer (LOAF). In **leader-follower** mode one or more follower SLICEs recieve messages via a _shared bus_ from the MCU of the designated leader SLICE.
