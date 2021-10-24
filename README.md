# TEST_ARMACOM.vr
This is a simple test mission that illustrates how ARMA COM can send data to an Arduino

It is meant to work with this Arduino sketch: https://github.com/FatLurch/ARMA_LED/tree/main

1. First, select the "List Ports" command from the laptop. You should see ports listed at the bottom left of the game window.
2. Go to the init.sqf for the mission, and on line 10, set the variable "com" equal to an appropriate COM port number (e.g. "COM1" or "COM2", etc.)
3. Restart the mission
4. Select the "connect" command on the laptop. You should a message indicating if it worked at the bottol left of the game window.
5. Select "On" to turn the built-in LED on the Arduino on
6. Select "Off" to turn the built-in LED on the Arduino off
7. Select "Disconnect" when you're done
