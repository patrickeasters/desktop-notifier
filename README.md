# distractify-button
Arduino sketch and accompanying shell script to send a desktop notification via
a physical button patrickeasters

## Why?
When working from my desk at [Red Hat](https://www.redhat.com/), I often wear my noise-cancelling headphones. They work really well, so if someone walks up to my desk, I often don't notice until they tap on my shoulder or wildly wave a hand near my face.

To provide a less intrusive means of getting my attention, I wanted to provide a method for a real life... push notification (get it?).

## How it Works
The Arduino runs a simple sketch and is configured to be detected as a USB keyboard by my laptop. Once the sketch detects a button press, it sends an `F14` keypress to my laptop. GNOME is configured to map this event to execute a simple shell script that sends the desktop notification.

## What's Included
* **distractify-button.ino**: Arduino sketch
* **distractify-gnome.sh**: Shell script for notification
