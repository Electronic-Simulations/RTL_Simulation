# Ring Oscillator in Verilog
![Three stage ring oscillator](media/ringosc.png)
## Overview
This repository contains the Verilog code for a three NOT gate ring oscillator with a parameterized delay. It includes both the module and the testbench to simulate the ring oscillator.

## Ring Oscillators

### Advantages
- **Simplicity**: The design is straightforward and easy to implement, making it ideal for educational purposes and simple applications.
- **Small Footprint**: Requires very few components, taking up minimal space on an integrated circuit.
- **Speed**: High oscillation frequency is possible, depending on the number of stages and the propagation delay of each inverter.
- **Ease of Integration**: Easily integrated into digital circuits for on-chip clock generation and other timing applications.

### Disadvantages
- **Temperature Sensitivity**: The oscillation frequency can be affected by changes in temperature, which may not be suitable for applications requiring high stability.
- **Power Consumption**: Continuous oscillation can lead to higher power consumption, a concern for power-sensitive applications.
- **Process Variability**: Manufacturing process variations can cause inconsistencies in the propagation delay, affecting the oscillation frequency.
- **Limited Frequency Range**: The frequency is determined by the number of stages and the propagation delay, limiting its range and making it less flexible than other types of oscillators.
