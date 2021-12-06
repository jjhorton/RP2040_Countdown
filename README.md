# A Countdown Clock

This repository contains the code for creating a countdown clock, which runs on a custom RP2040 PMod Board, and uses a seven segment display.

# Building Pico Software

Assuming that the Pico SDK is in the path (for example `export PICO_SDK_PATH=../pico-sdk `) and then run the standard build commands:

```
cd Pico
mkdir build
cd build
cmake ..
make
```

Then use the Bootsel button, to put the RP2040 board in upload mode, and then copy the .u2f file from the build directory to the RP2040 Board.

# Running PC Software

The Python software on the PC is contained in the Python Directory, and send the current time remaining until Christmas day to the clock using the serial link over USB. This is currently run on a Raspberry Pi Zero, but could be run on any Python capable PC.

# Hardware

The PCB's that are used as part of this project are as follows:

[RP2040 PMod Microcontroller Board](https://github.com/jjhorton/Pico_Pmod) [![KiCad CI/CD for RP2040 PMod Board](https://github.com/jjhorton/Pico_Pmod/actions/workflows/RP2040_PMod_kicad.yml/badge.svg)](https://github.com/jjhorton/Pico_Pmod/actions/workflows/RP2040_PMod_kicad.yml)

[Severn Segment PMod Display](https://github.com/jjhorton/PMod) [![PMod 7 Segment Display](https://github.com/jjhorton/PMod/actions/workflows/pmod_7segment.yml/badge.svg)](https://github.com/jjhorton/PMod/actions/workflows/pmod_7segment.yml)

These PCB's are secured to a 3D printable mount with magnets in the back to mount on a white board. The Mount is in the  `Mount` folder in the OpenSCAD file format, which can then be used to generate STL files and be 3D printed. The Github workflow also generates the STL file from the OpenSCAD file, which can be downloaded from the workflow by navigating to the workflow.
