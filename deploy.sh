#!/bin/bash

set -e

cargo +nightly clean
cargo +nightly build -r
avrdude -p m328p -c arduino -P /dev/ttyACM0 -b 115200 -U flash:w:target/avr-atmega328p/release/arduino-blink.elf
