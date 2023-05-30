# Contents of Package

* AspDac.vhd - vhdl file that contains the code that makes up the ASP that detects the peak and will pass the data to a DAC
* HexSeg - A Singular module of a seven segment display. This component will drive one seven-segment character/digit
* HexSeg6 - Using the HexSeg module, creates a six digit seven-segment display component.
* TestASP.vhd - testbench to observe the behaviour of the ASP (AspDac.vhd)

# Required Software

* ModelSim (Intel FPGA Starter Edition 10.5 was used for making this)

# Running the ASP Simulatiion

1. Create a project including all files within this package
1. Compile all files
1. Simulate TestASP.vhd
1. Observe the signals and subsequent changes over time
