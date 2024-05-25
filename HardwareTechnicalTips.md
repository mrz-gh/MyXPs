# HDL simulator

| Simulator | SV-UVM support (SV and Randomization support(.randomize() method different from $random()))| Mixed-HDL Simulation | Cracked | Open-source |
|---------|-------------|------------|------------|---------|
| Cadence Xcelium (xrun) | ??? | ??? | YES (<https://downloadly.ir/software/engineering-specialized/xcelium/>)| NO |
| Cadence Incisive | ??? | ??? | NO| NO |
| Mentor Graphics Questa (vsim) | YES | YES | YES | NO |
| Synopsys VCS (vcs) | YES | YES | NO | NO |
| Aldec Active-HDL | ??? | YES | YES | NO |
| Aldec Riviera-PRO (riviera) | YES | ??? | YES but it is v2014 | NO |
| Xilinx Vivado Simulator | YES | YES | YES | NO |
| Verilator | ??? | ??? | - | Yes |
| Icarus Verilog (iverilog) | ??? | ??? | - | Yes |

- **Questa*-Intel® FPGA** -> **not support Ubuntu** ==> solution: **RHEL** and **100% Binary-compatible OSes** with RHEL
<https://www.intel.com/content/www/us/en/support/programmable/support-resources/design-software/os-support.html?wapkw=operating%20system%20support#tab-blade-3-4>

- **Simulate VHDL by Verilator**: You can synthesize vhdl to a verilog netlist using ghdl - - synth argument which generates a synthesized netlist that you can simulate in verilator.

# HDL Synthesizers

| Synthesizer tool | Usage | Open-source |
|-----------------|-------|-------------|
| Xilinx Vivado Synthesis | **Xilinx** FPGAs and SoCs | NO |
| Synopsys Design Compiler | ASIC & FPGA | NO |
| Cadence Genus | ??? | NO |
| Intel Quartus Prime | **Intel** FPGA | NO |
| Yosys | ASIC & FPGA | YES |

### ModelSim different Versions: (Latest Version of ModelSim Pro : 2021) ==> Deprecated ==> **Questa** is the successor

- Free: ModelSim PE(Personal Edition) Student Edition, ModelSim-Altera Starter Edition

- Features, Simulation Speed:
  - ModelSim PE(Personal Edition) Student Edition < ModelSim PE <  ModelSim DE (Deluxe Edition) < ModelSim SE (Special Edition)
  - Assertions, UVM:
    - ModelSim PE, ModelSim DE (Deluxe Edition), ModelSim SE (Special Edition)
  - SystemC: ModelSim SE (Special Edition)

| Version | Description |
|---------|-------------|
| ModelSim Intel FPGA Edition | A version specifically tailored for Intel FPGA development. It integrates with Intel Quartus Prime design tools and provides enhanced support for Intel FPGA devices and IP cores. |
|ModelSim XE| Xilinx Edition
| ModelSim Altera Edition | Previously the official simulation tool for Altera (now Intel) FPGA designs. It offered seamless integration with Altera Quartus II software and supported advanced simulation features for Altera FPGA devices. However, it has been superseded by ModelSim Intel FPGA Edition. he official simulation tool for Altera FPGA designs. It provides advanced simulation and debugging capabilities for larger and complex projects. Integrated with Quartus II software.|
| ModelSim-Altera Starter Edition | A free version of ModelSim provided by Altera (now Intel) for use with their FPGA designs. It offers basic simulation and debugging capabilities for smaller projects.  

[ChatGPT]

- **ModelSim-Altera Starter Edition** software is the same as ModelSim-Altera Edition software except for two areas. ModelSim-Altera Starter Edition’s **simulation performance is lower** than **ModelSim-Altera Edition** and has a **line limit** of 10,000 executable lines compared to the unlimited number of lines allowed in the ModelSim-Altera Edition.

- [**ModelSim ASE starter** supports UVM][https://community.intel.com/t5/Intel-FPGA-Software-Installation/Modelsim-ASE-starter-not-directly-support-UVM/td-p/1288356]

- [ModelSim-Intel® FPGA Edition (includes Starter Edition)][https://www.intel.com/content/www/us/en/software-kit/750666/modelsim-intel-fpgas-standard-edition-software-version-20-1-1.html]

- **ModelSim 10.1d (2011)** supports all SystemVerilog/Verilog features except:

   SystemVerilog assertions
   SystemVerilog coverage
   randomize method
   program blocks
     Dave Rich from Mentor does not recommend the use of program blocks for any user: <http://go.mentor.com/programblocks>

  Out of the above, only the randomize method is used by the UVM library.
  <https://eda-playground.readthedocs.io/en/latest/modelsim-uvm.html>

- Intel: ModelSim® and Questa® Sim versions were previously listed as 10.6, 10.7, etc., but from 2019, they are 2019.1, 2020.1, etc.

# Waveviewers

## closed source

- ViVa
- WaveView
- AvanWaves

## Open-source

- Gwave
- GTKwave

# Verilog/SystemVerilog

- `include vs package
- Each module has its own scope

   `ifndef

   'define

    //Code

   `endif

- xvlog, xelab, xsim - > **uvm in vivado**

- include uvm_macros.svh
- import test, env, … packages to the testbench
- UVM phases -> uvm_component
- SV **Queue** & "**semaphore**" (keyword)
- SV **Event**
- **Fork Join** SV (Multi-threading)
- **'ref'** keyword
- use "modport" and "bind" for the interfaces
- Variable name conventions:
  - -i, _o,_d

- SV coverage
- **"final"** in opposite of **"initial"**
- **+incdir**: `include directive

- **"make help"** is necessary.

| func | task|
| -----|-----|
|**no simulation time control** | **Yes simulation time control** |
|one output | multiple outputs |
|can be used in an expression | not used in expressions |

- **Verible** : open source SystemVerilog parser

- file formats and extensions in Hardware area:
- .emac or .el , .org, .md, .tcl, .ini, .f

- in SV, there is no built-in function to get thread ID when using fork-join

- **Virtual** means it is not associated with any particular datatype.

- variable handler vs real variable (new())

- need to make an optimized testbench in Questa, then simulate

- the **length of variables and literals** must be accute in verilog and SV

- '@' means until first change simulation goes vs Delay (#5 ns)

# Automation

- **TCL** over **.do** files in QuestaSim/ModelSim
  - standalone TCL vs TCL/TK

|TCL| .do file|
|---|---------|
|More General (A scripting language)| specific to ModelSim & Questa |

- CMake vs Make(Makefile)
  - CMake: buildsystem generator ==> compability for various OSes
  - Make: buildsystem ==> limited compability

# Hardware Concepts

- **round-robin arbiter**
- **sanity testing** is a **rapid** and **initial assessment** of the basic functionality of a software system.
- **Wishbone, APB, AXI, Avalon** are **bus** protocols.


# FPGAs

- Advancements in Technology:
  - **FinFET and 3D Stacked FPGAs**: Future FPGAs will leverage FinFET (Fin Field-Effect Transistor) and 3D stacked technologies to increase density, reduce power consumption, and improve performance.
  - **Quantum Computing**: FPGAs might be used as a bridge between classical and quantum computing, enabling the development of hybrid quantum-classical systems.
- New Business Models and Ecosystems:
  - **FPGA-as-a-Service (FaaS)**: Cloud-based FPGA services will emerge, offering on-demand access to FPGA resources, reducing costs, and increasing adoption.
  - **Open-Source FPGA Ecosystems**: Open-source FPGA platforms will become more prevalent, fostering innovation, collaboration, and community-driven development.
