# PIC16F877A LED Interfacing in Assembly

Assembly language programs for the PIC16F877A microcontroller that
control LEDs connected to PORTB: first a single blinking LED, then a
four-LED sequence. Developed in MPLAB X IDE and simulated in Proteus.

## Learning Objectives
- Get started with assembly language programming for the PIC16F877A
- Write assembly programs
- Generate delays in software

## Tasks

**Task 1: Blink an LED** (`blink_led.asm`)
An LED on RB0 turns on and off repeatedly, with a software delay
between each change.

**Task 2: LED sequence** (`led_sequence.asm`)
Four LEDs on RB0-RB3 light one at a time in order, then all four turn
on together, and the pattern repeats.

| Step | PORTB value | LEDs on     |
|------|-------------|-------------|
| 1    | 00000000    | all off     |
| 2    | 00000001    | RB0         |
| 3    | 00000010    | RB1         |
| 4    | 00000100    | RB2         |
| 5    | 00001000    | RB3         |
| 6    | 00001111    | all four on |

## How It Works
1. PORTB is configured as output by clearing the TRISB register
   (after switching to the correct bank with BANKSEL).
2. The program writes a bit pattern to PORTB to switch the LEDs on or
   off.
3. A delay subroutine (`DELAY`) uses two nested countdown loops to wait
   between steps (about 0.2 s with a 4 MHz crystal).
4. The main loop repeats forever.


## Software
- MPLAB X IDE
- Proteus (circuit simulation)

## Screenshots
<img width="795" height="450" alt="image" src="https://github.com/user-attachments/assets/f004a6ac-ed8a-4fc1-8cae-473accc7c22a" />
<img width="866" height="489" alt="image" src="https://github.com/user-attachments/assets/73efc07e-f88b-4d19-8ffc-58c670105e4a" />


## Repository Contents
- `blink_led.asm` - Task 1: single LED blink
- `led_sequence.asm` - Task 2: four-LED sequence
- `images/` - Proteus simulation screenshots

## Author
Zain Rizwan - Electrical Engineer<br>
Embedded Systems Lab Task, University (2024)
