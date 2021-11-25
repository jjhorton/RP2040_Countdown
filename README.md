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

Then use the Bootsel button, to put the RP2040 board in upload mode, and then copy the .u2f file from the build directory to the RP2040 Board
# Running PC Software

The Python software on the PC is contained in the Python Directory, and send the
