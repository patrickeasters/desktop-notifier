# distractify-button
Arduino sketch and accompanying shell script to send a desktop notification via
a physical button patrickeasters

<img src="https://media.giphy.com/media/PK7G39mRyNaRa/giphy.gif">

## Why?
When working from my desk at work, I often wear my noise-cancelling headphones. They work really well, so if someone walks up to my desk, I often don't notice until they tap on my shoulder or start waving a hand near my face.

To provide a less intrusive means of getting my attention, I wanted to provide a method for a real life *push* notification (get it?).

## How it Works
The Arduino runs a simple sketch and is configured to be detected as a USB keyboard by my laptop. Once the sketch detects a button press, it sends an `F14` keypress to my work laptop running Fedora. GNOME is configured to map this event to execute a simple shell script that sends the desktop notification.

## Parts Needed
* Arduino Uno w/ [HoodLoader2](https://github.com/NicoHood/HoodLoader2) firmware
   - Note: custom firmware was needed to be able to utilize the USB port
* Momentary switch (I used a [30mm arcade button](https://www.aliexpress.com/item/Free-Shipping-Red-30mm-Arcade-Push-Button-Switch-Built-in-Micro-Switch-Perfect-Replace-SANWA-OBSF/32741696037.html))
* Custom 3D-printed button enclosure (optional I guess)

## Wiring it Up
There's not much to it, luckily! Since we're using the 16u2 chip rather than the IO chip, the switch is hooked up to pins on the ICSP header.

<img src="https://raw.githubusercontent.com/patrickeasters/distractify-button/master/extra/layout_bb.png">

## What's Included
* Arduino sketch
* Shell script for notification
* OpenSCAD files for the button enclosure ([also on Thingiverse](https://www.thingiverse.com/thing:2348248))

## Comments/Questions?
Open an issue on Github or drop me an email/tweet! I'd love to see if you build your own.
