# FPGA-Based-Digital-Lock-System-with-Keypad-and-Seven-Segment-Display
A secure digital lock system using VHDL and FPGA. It features keypad input, 7-segment display feedback, password validation, lockout on failed attempts, and FSM-based control. Implemented and tested on Quartus Prime with real-time hardware verification.

![Final project state diagrams](https://github.com/user-attachments/assets/b226ca1a-a33b-4313-9560-e03eb00a8f9c)
![Final Project Flowchart Diagram](https://github.com/user-attachments/assets/97d6494e-d997-46a1-a40b-64ba945cc60a)

FPGA Demonstration: 
Through the pin planner, it was decided which outputs would be used for the implementation. The keypad buttons were used for input, the seven-segment display was used to show the code being typed, the countdown for the lockout and the feedback for when the code was correctly guessed. There is also an LED which lights up when the correct password is entered.

Observations and Results: 
![image](https://github.com/user-attachments/assets/9d7875ff-864b-4061-b2fa-3619e493215f)

When the correct code was entered, the 7-segment display showed a message saying “POP”, and the LED in the bottom row lit up.

![image](https://github.com/user-attachments/assets/e2d81106-56fc-4543-ac7a-dde1a36a7172)

When the wrong password was entered, the user was locked out for a certain amount of time and an “E” showed up on the 7-segment display to indicate an error.



