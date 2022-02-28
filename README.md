Adders play a vital role in performing any mathematical operation, especially in ALUs. In this git repository, the design of 2 bit half adder is explained in 28nm technology.

# Table of Contents
* [Introduction](#introduction)
* [Reference Circuit Diagram](#reference-circuit-diagram)
* [Reference Waveform](#reference-waveform)
* [Tools Used](#tools-used)
* [Simulations Performed in Synopsys Tool:](#simulations-performed-in-synopsys-tool)
  * [Generation of Abar and Bbar  inputs using inverter](#generation-of-abar-and-bbar-inputs-using-inverter)
  * [Half Adder Schematics](#half-adder-schematics)
  * [Voltage Sources for A, B, Vdd and VSS](#voltage-sources-for-a,-b,-vdd-and-vss)
  * [Parameters set for voltage source for input A](#parameters-set-for-voltage-source-for-input-a)
  * [Parameters set for voltage source for input B](#parameters-set-for-voltage-source-for-input-b)
  * [Parameters set for transient response](#parameters-set-for-transient-response)
  * [Output Waveform](#output-waveform)
* [Netlist:](#netlist)
* [Author:](#author)
* [Acknowledgements:](#acknowledgements)
* [References:](#references)

## Introduction
A half adder is a digital circuit that accepts 2 bits as input and generates 2 bits, a Sum and a Carry bit. Fig 1, shows a half adder.The mathematical formula of half adder is:

Sum = A ⊕ B

Carry = A.B 

![Screenshot 2022-02-27 at 1 22 52 PM](https://user-images.githubusercontent.com/100550606/156030538-c72431b3-7edb-4e8d-aa06-4c98ccaa72e8.png)

Fig 1: Circuit diagram of Half Adder using Logic Gates

The circuit is designed using 2 logic gates : XOR and AND gate. Here, the same two inputs are given to the two logic gates. Thus, when a voltage is supplied, the two gates receive the same input at the same time, since they are connected. Using the CMOS logic, XOR gate is implemented, which generates the Sum bit. Carry bit is obtained using AND logic. 

The truth table of half adder is shown in Fig 2. 

![Screenshot 2022-02-27 at 1 22 42 PM](https://user-images.githubusercontent.com/100550606/156030972-30d0f440-aa6a-4429-ac22-bf436e8b3956.png)

Fig 2: Truth Table of Half Adder

## Reference Circuit Diagram
Fig 3, represents the transistor level implementation of half adder. In CMOS logic, PMOS and NMOS transistors are used. For the complete half adder circuit 12 transistors are used. 

![Screenshot 2022-02-27 at 1 23 07 PM](https://user-images.githubusercontent.com/100550606/156031238-c7b0e949-da86-47af-8b25-60266663d20b.png)

Fig 3: Half Adder implementation using CMOS logic

## Reference Waveform
![Screenshot 2022-02-27 at 1 35 27 PM](https://user-images.githubusercontent.com/100550606/156031423-d5cd3cfd-6e3c-4119-8252-e443ab7d629a.png)

Fig 4: Expected Waveform

## Tools Used
1. PDK (Process Design Kit): The schematics were drawn using the transistors, voltage sources from Synopsys PDK in 28nm technology. 
2. Synopsys Custom Compiler: Synopsys Custom Compiler™ provides several features for design drawing, error checking and its analysis.
3. PrimeSim Spice: For simulations and displaying waveform PrimeSim Spice tool was used. 

## Simulations Performed in Synopsys Tool
### a. Generation of Abar and Bbar  inputs using inverter

![Screenshot 2022-02-26 at 4 22 30 PM](https://user-images.githubusercontent.com/100550606/156032157-670e853e-4e6b-4f92-8670-f29c60090f82.png)

### b. Half Adder Schematics

![Screenshot 2022-02-28 at 9 19 45 AM](https://user-images.githubusercontent.com/100550606/156032441-17cb7286-20ea-42a1-b35f-1e3f80e7f3ce.png)

### c. Voltage Sources for A, B, Vdd and VSS

![Screenshot 2022-02-27 at 3 16 51 PM](https://user-images.githubusercontent.com/100550606/156032544-79338fe6-475c-4af8-9e50-7c056bca3e5a.png)

Here, vpulse cell (from analog lib in PDK)) is used to generate voltages for A and B. Vdc cell is (from analog lib in PDK) is used to generate voltages for Vdd and Vss.

### d. Parameters set for Voltage source of Input B

![Screenshot 2022-02-27 at 3 36 53 PM](https://user-images.githubusercontent.com/100550606/156032738-4efdfe8f-3cac-46ab-9a0b-0e1f512f7a6a.png)

### e. Parameters set for voltage source for input A

![Screenshot 2022-02-27 at 3 33 28 PM](https://user-images.githubusercontent.com/100550606/156032792-87f073ba-2d6f-4b5f-b276-6b1f8e552a1d.png)

### f. Parameters set for transient response

![Screenshot 2022-02-27 at 3 44 15 PM](https://user-images.githubusercontent.com/100550606/156032942-90989204-6f82-4253-90e6-f06054806339.png)

### g. Output Waveform

![Screenshot 2022-02-26 at 4 20 59 PM](https://user-images.githubusercontent.com/100550606/156033060-f8812376-bfdd-4bed-a708-d77d193cd06f.png)

## Netlist
The netlist is given here : [netlist](https://github.com/darsanapm/Halfadder_design_28nm_Technology/blob/master/inv.sp) 

## Author
Darsana P M

## Acknowledgements

* [Cloud Based Analog IC Design Hackathon](https://www.iith.ac.in/events/2022/02/15/Cloud-Based-Analog-IC-Design-Hackathon/)
* [Synopsys India](https://www.synopsys.com/)
* [VLSI System Design (VSD) Corp. Pvt. Ltd India](https://www.vlsisystemdesign.com/)
* Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd.
* Chinmay panda, IIT Hyderabad
* Sameer Durgoji, NIT Karnataka

## References
1. Preeti Kushwah, Saurabh Khandelwal and Shyam Akashe, Multi-Threshold Voltage CMOS Design for Low-Power Half Adder Circuit, International Journal of Nanoscience | Vol. 14, No. 05n06, 1550022 (2015).
2. U. Ko, T. Balsara and W. Lee, "Low-power design techniques for high-performance CMOS adders", IEEE Transactions on Very Large Scale Integration (VLSI) Systems, vol. 3, no. 2, pp. 327-333, 1995. 
