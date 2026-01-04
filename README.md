# Digital Voting Machine Using Verilog HDL
This is a 4-bit digital voting machine implemented using Verilog HDL. 
It allows two candidates (A and B) to receive votes and counts them digitally.
The project includes simulation using Icarus Verilog and waveform visualization using GTKWave.
## Features
- Two candidates voting (A and B)
- Digital vote counting using 4-bit registers
- Reset functionality to clear counts
- Simulation verified using Icarus Verilog
- Waveform analysis in GTKWave
## Files
- `voting_machine.v` - Main Verilog code for voting machine
- `tb_voting_machine.v` - Testbench for simulation
- `.gitignore` - Ignore VCD files
- `vote.vcd` - Waveform output (not uploaded to GitHub due to size)
## Simulation Instructions
1. Compile Verilog code using Icarus Verilog:iverilog -o vote voting_machine.v tb_voting_machine.v
2.  Run simulation:vvp vote
3.  3. Visualize waveform in GTKWave:gtkwave vote.vcd
    4.  Observe signals:
- clk, reset, vote_a, vote_b, count_a, count_b
## Waveform Screenshot
![Waveform](Waveform.png.png)
## Author
Akanksha Rahinj  
GitHub: [https://github.com/Akanksha-Rahinj](https://github.com/Akanksha-Rahinj)
