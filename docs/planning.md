# BREADS Planning

## Goal

write

## Requirements

write

### SLICE

SLICEs can operate either alone in **single** mode or together in **leader-follower** mode. The two primary tasks of a slice is to A) recieve messages and interpret instructions from it's supervisor, B) execute it's intended function according to instructions. In **single** mode the SLICE MCU recieves messages via _point-to-point communication_ (i.e. USB serial) from a (micro)computer (LOAF). In **leader-follower** mode one or more follower SLICEs recieve messages via a _shared bus_ from the MCU of the designated leader SLICE.

I2C:

- Slice addresses, vitamin addresses
