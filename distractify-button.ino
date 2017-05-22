#include "HID-Project.h"

const int pinButton = 1;

void setup() {
  pinMode(pinButton, INPUT_PULLUP);

  // The serial port is solely for debugging
  Serial.begin(115200);
  Serial.print("Running");

  // Initialize the keyboard
  Keyboard.begin();
}

void loop() {
  // Check if the pin is low (pulled down)
  if (!digitalRead(pinButton)) {

    // This key is otherwise unused in my OS
    Keyboard.write(KEY_F14);

    // Debug via serial
    Serial.println("Button press");


    // Simple debounce to prevent 7000 notifications due to the switch
    delay(300);

  }

}
