# wipeusb
A headless Raspberry Pi install for overwriting and auto-formatting usb drives. By default the drive is overwritten from ``/dev/urandom`` before formatting.

See ``provisioning.txt`` for some installation prerequisites.

Blinkstick can be purchased [here](https://www.blinkstick.com/) but can also easily be replaced with some other LED device.

## Manual
* Device blinks purple once after boot when ready to receive USB drive
* Insert one USB drive (does not yet handle multiple)
* Blinkstick starts pulsing orange
* Wait X minutes depending on drive speed and size
* Blinkstick turns steady green
* Remove USB drive
* Profit

![The device in action](https://i.imgur.com/DqaCtljm.png)
