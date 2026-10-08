# ENGG2410 Lab 1: Pneumatic Press Interlock

Project: lab1_interlock
Top-level schematic: interlock.sch
Constraints file: interlock.ucf

## Switch and LED assignment

| Signal | Direction | Board device      | Pin |
|--------|-----------|------------------ |-----|
| HL     | input     | Left-hand button  | C4  |
| HR     | input     | Right-hand button | D9  |
| G      | input     | Guard toggle      | T5  |
| RUN    | output    | LED 		 | U16 |
| FAULT  | output    | LED (next to RUN) | V16 |

## Behaviour

- RUN lights only when HL, HR and G are all 1.
- FAULT lights when HL and HR are 1 and G is 0.