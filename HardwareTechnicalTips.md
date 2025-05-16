# 📚 Table of Contents

1. [Open-source Communities](#open-source-community)
2. [TOOLs](#TOOLs)
	1. [🛠️ Simulation & Modeling Tools](#tools)
	   - [Simulators Overview](#simulators)
	   - [NoC Simulators](#simulators)
	   - [Memory Simulators](#simulators)
	   - [DNN & Accelerator Simulators](#simulators)
	   - [Energy & Mapping Tools](#simulators)
	1. [🧾 HDL Comparison Table (2025)](#-hdl-comparison-table-2025)
	   - [Feature Comparison](#-hdl-comparison-table-2025)
	   - [Best Use Highlights](#-hdl-comparison-table-2025)
	1. [🔬 HDL Simulators](#hdl-simulators)
	2. [⚙️ HDL Synthesizers](#hdl-synthesizers)
	3. [👁️ Waveform Viewers](#wave-viewers)
	   - [Closed-source](#closed-source)
	   - [Open-source](#open-source)
	1. [📘 Verilog / SystemVerilog Notes](#verilogsystemverilog-tips)
	2. [Automation](#automation)
3. [Hardware Concepts](#hardware-concepts)
   - [Bus Protocols](#bus-protocols)
   - [AMBA Bus Evolution Overview](#amba-bus-evolution-overview)
4. [FPGAs](#fpgas)
5. [Material Technologies](#material-technologies)



# Open-source Community

- <https://github.com/openhwgroup>
- <https://github.com/pulp-platform>
- Siemens Verification Academy (Free for Students)
- <https://github.com/chipsalliance>
- <https://github.com/lowRISC>
- <https://github.com/riscv>
- <https://github.com/uobdv/Design-Verification>

# TOOLs 

## Simulators

| **Tool / Simulator** | Domain                 | Focus / Target                                     | Timing Accuracy              | Extensibility | Suitable for Groq?              | Notes                                                        |
| -------------------- | ---------------------- | -------------------------------------------------- | ---------------------------- | ------------- | ------------------------------- | ------------------------------------------------------------ |
| **gem5**             | Full-system arch       | CPU, cache, DRAM, NoC, SoC                         | Functional to cycle-accurate | Very High     | Yes                             | Industry-standard for full-stack simulation                  |
| **GPGPU-Sim**        | GPU                    | SIMT architecture, CUDA stack                      | High                         | Medium        | Indirectly                      | Good for reference, not static VLIW                          |
| **OpenASIP**         | ASIP/VLIW              | Custom static VLIW processor w/ compiler           | Cycle-accurate               | High          | Yes                             | Ideal for Groq-style wide-issue statically scheduled cores   |
| **PyMTL**            | RTL Modeling           | Python-based RTL design & simulation               | RTL-level                    | Very High     | Yes                             | Great for tile prototyping (compute or SRAM)                 |
| **Noxim**            | NoC                    | Mesh/Torus NoC w/ packet-level simulation          | Cycle-accurate               | Medium-High   | Yes                             | Systolic array and memory tile modeling                      |
| **Garnet (gem5)**    | NoC (gem5 Ruby)        | On-chip network with coherence support             | High                         | Medium (C++)  | Yes                             | Inside gem5 Ruby; uses flits and virtual networks            |
| **OpenSoC**          | NoC                    | SystemC-based, customizable NoC generator          | Cycle-accurate               | Medium        | Yes                             | Flexible, tile-programmable and suitable for streaming tiles |
| **DRAMSys**          | Memory                 | Detailed DRAM/LPDDR timing and interface           | High                         | Medium        | Yes                             | Use for SRAM/DRAM cycle-accurate timing with external tiles  |
| **BookSim**          | NoC                    | Router + topology simulator                        | Cycle-accurate               | Medium        | Indirectly                      | Good for traffic & topology testing (not tile-level)         |
| **Accel-Sim**        | GPU accelerator        | NVIDIA-like accelerator simulation (SMs, memory)   | High                         | Medium        | Partially                       | Valuable for GPU-style workloads, less static compute        |
| **DNNsim**           | DNN accelerator        | Layer-wise dataflow simulator for DNNs             | Medium (abstracted)          | Medium        | Yes (for high-level validation) | Useful for performance eval of dataflow architectures        |
| **Vortex**           | RISC-V GPU             | Open-source RISC-V-based GPU                       | Medium-High                  | High          | Partially                       | Can adapt to Groq-like tiles with work                       |
| **FireSim**          | FPGA-accelerated RTL   | FPGA-accelerated simulation of RISC-V SoCs         | Cycle-accurate (on FPGA)     | Medium-High   | Yes (for physical timing)       | Scales simulation with FPGA acceleration (via Chisel)        |
| **Gemmini**          | DNN accelerator        | RISC-V systolic array generator (RoCC, TileLink)   | RTL-level                    | High          | Yes (inspired by Groq)          | Good for studying hardware-level systolic compute            |
| **Accelergy**        | Energy Estimation      | Annotated YAML + tech library + energy modeling    | Not a simulator              | High          | Yes                             | Combine with Timeloop to estimate power/energy               |
| **Timeloop**         | DNN loop mapping       | DNN dataflow schedule optimizer & memory mapping   | Not a simulator              | High          | Yes                             | Design space exploration for DNN accelerators                |
| **SimBA**            | DNN accelerator        | Dataflow-based MAC array + SRAM banking            | High (MAC-tile accurate)     | Medium        | Yes                             | Captures array, SRAM, and interconnect timing                |
| **MAERI**            | DNN accelerator        | Flexible MAC array w/ dynamic reconfiguration      | High                         | Medium-High   | Yes                             | Good for exploring compute tiling & reuse strategies         |
| **TVM + Ethos-U**    | Compiler + accelerator | Software stack for ML operators on Arm Ethos-U NPU | Functional + Perf Est.       | Medium        | Partially                       | SW stack to test scheduling and HW interface                 |

---

## 🧾 HDL Comparison Table (2025)

|Feature|**PyRTL**|**Migen**|**Amaranth**|**Chisel**|**SpinalHDL**|
|---|---|---|---|---|---|
|**Host Language**|Python|Python|Python|Scala|Scala|
|**License**|MIT|BSD|BSD|Apache 2.0|LGPLv3|
|**Design Purpose**|Education, prototyping|SoCs, custom pipelines|FPGA/ASIC RTL & tooling|Parameterized IP, SoC design|Industrial-quality RTL/SoCs|
|**Target Users**|Beginners, teachers|Advanced Python HDL users|FPGA devs, formal/verification|Researchers, IP developers|RTL engineers, industry teams|
|**Intermediate IR**|Python graphs|Custom IR|Custom IR + Yosys integration|FIRRTL|No IR, direct Verilog/VHDL|
|**Simulator Support**|Built-in (Python)|Built-in, Icarus, Verilator|Built-in, Verilator, GHDL|Treadle (Scala), Verilator, external|SpinalSim, Verilator, GHDL|
|**Verilog Output**|Basic|Full|High quality|Yes (via FIRRTL)|High quality|
|**VHDL Output**|❌|❌|❌|❌|✅ Yes|
|**Clock Domain Handling**|Minimal|Basic|Good (multi-clock support)|Good|Excellent|
|**FSM Support**|Basic|Advanced|Advanced|Advanced|Advanced|
|**Formal Verification**|❌|Limited|✅ Tight Yosys integration|Manual|Manual (via Verilog)|
|**Hierarchy Support**|❌|Yes|Yes|Yes|Yes|
|**Toolchain Integration**|None|Custom (LiteX)|Yosys, SymbiFlow, Nextpnr|FIRRTL, Rocket Chip, Chipyard|Vivado, Quartus, ASIC flows|
|**Readability of Generated Code**|Medium|Good|Excellent|Medium (depends on FIRRTL)|Excellent|
|**Waveform Dumping**|✅|✅|✅|✅|✅|
|**Maturity**|Stable, limited use|Mature but mostly inactive|Active and growing|Mature and growing|Mature and growing|
|**Community Size**|Small|Small-medium|Medium (increasing)|Large (academic, SiFive, Intel)|Medium (FPGA/ASIC professionals)|
|**Documentation Quality**|Educational|Sparse|Good, modern|Improving|Good|
|**Popular Projects**|N/A|LiteX, MiSoC|USB cores, HDMI, FPGA platforms|Rocket Chip, BOOM, Chipyard|VexRiscv, Murax, others|

🔍 Highlights

✅ **Best for Education & Learning**
- **PyRTL**: Easiest on-ramp for teaching concepts, but not for real hardware targets.
    
✅ **Best for Custom SoC Design in Python**
- **Migen**: Powerful for those familiar with Python, but largely replaced by Amaranth.

✅ **Best Modern Python HDL**
- **Amaranth**: Actively developed, well-documented, used in open-source FPGA tools, with formal verification and synthesis support.

✅ **Best for Parameterized SoC & Research**
- **Chisel**: Ideal for building IP generators, RISC-V CPUs, and SoCs, used in many academic projects.

✅ **Best Industrial HDL with High Productivity**
- **SpinalHDL**: Best mix of abstraction and RTL control, highly readable output, supports both Verilog and VHDL.
    

### HDL simulators

| Tool                     | SV-UVM Support | Mixed-HDL | Cracked / Open Source |
| ------------------------ | -------------- | --------- | --------------------- |
| Cadence Xcelium          | ???            | ???       | Cracked               |
| Cadence Incisive         | ???            | ???       | ❌                     |
| Questa (Mentor Graphics) | ✅              | ✅         | ✅ (Cracked)           |
| Synopsys VCS             | ✅              | ✅         | ❌                     |
| Aldec Active-HDL         | ???            | ✅         | ✅                     |
| Aldec Riviera-PRO        | ✅              | ???       | ✅ (v2014)             |
| Xilinx Vivado Simulator  | ✅              | ✅         | ✅                     |
| Verilator                | Not fully      | ???       | ✅ Open-source         |
| Icarus Verilog           | Not fully      | ???       | ✅ Open-source         |

- **Questa*-Intel® FPGA**-> support **Ubuntu** besides **RHEL**, **100% Binary-compatible OSes** with RHEL, SUSE* SLE
<https://www.intel.com/content/www/us/en/support/programmable/support-resources/design-software/os-support.html?wapkw=operating%20system%20support#tab-blade-3-4>

- **Simulate VHDL by Verilator**: You can synthesize vhdl to a verilog netlist using ghdl - - synth argument which generates a synthesized netlist that you can simulate in verilator.

## HDL Synthesizers

| Synthesizer tool | Usage | Open-source |
|-----------------|-------|-------------|
| Xilinx Vivado Synthesis | **Xilinx** FPGAs and SoCs | NO |
| Synopsys Design Compiler | ASIC & FPGA | NO |
| Cadence Genus | ??? | NO |
| Intel Quartus Prime | **Intel** FPGA | NO |
| Yosys | ASIC & FPGA | YES |

#### Wave Viewers

##### closed source
- ViVa
- WaveView
- AvanWaves
##### Open-source

- Gwave
- GTKwave

## Verilog/SystemVerilog Tips

- `include vs package
- Each module has to be defined just once using

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

## Automation

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

###### Bus protocols:

| Bus                            | Open Source?  | Complexity | Best For                      |
| ------------------------------ | ------------- | ---------- | ----------------------------- |
| Wishbone                       | ✅             | Low        | Simple SoCs, FPGAs            |
| AXI (part of AMBA) (via Litex) | ✅ (impl)      | Medium     | FPGA, embedded SoCs           |
| TileLink                       | ✅             | High       | RISC-V SoCs, coherent memory  |
| AHB/APB (part of AMBA)         | ❌ (ARM)       | Medium     | Industry standard, less DIY   |
| OpenSoC NoC                    | ✅             | High       | Many-core chips, research     |
| Avalon                         | ❌ (spec only) | Medium     | Intel (Altera) FPGAs, Nios II |

### AMBA Bus Evolution Overview
| Protocol | Primary Use Case                             | Key Features                                    |
| -------- | -------------------------------------------- | ----------------------------------------------- |
| **AXI**  | High-speed memory and peripheral connections | High throughput, pipelining, burst transfers    |
| **AHB**  | High-performance system interconnect         | Moderate complexity, pipelined, shared bus      |
| **APB**  | Low-speed peripherals                        | Simple, non-pipelined, low power                |
| **ACE**  | Cache-coherent multi-core systems            | Extensions for AXI to support coherence         |
| **CHI**  | High-end multi-processor systems             | Coherent, scalable, cluster-based communication |
| **ATB**  | Debugging and tracing                        | Captures trace data for system analysis         |
| **ASB**  | Legacy systems                               | Replaced by AHB and AXI in modern designs       |


###### ISA
- AMD, Intel - > x86 ISA
- SiFive -> RISC-V
- MIPS
- PowerPC

Buffer - Cache - RAM

## Device Technologies 


![alt_text](./figures/Pasted%20image%2020250424201441.png)

**Wafer Bonding:**

![alt_text](./figures/Pasted%20image%2020250424201246.png)
### Chiplets vs Monolithic Chip

 ✅ Heterogeneous Integration

- You can build different chiplets with different technologies or process nodes (e.g., 5nm CPU + 7nm I/O + 16nm analog).  
- This is much harder with a monolithic die, which uses a single process node.  
💡 Example: AMD uses TSMC 5nm for compute chiplets, and 6nm or 12nm for I/O chiplets in EPYC CPUs.

 ⚔️ Scalability & Flexibility
✅ In monolithic chips, different modules (like CPU, GPU, memory controllers) can be designed in parallel.
But chiplets still win in manufacturing scalability:
- Monolithic chips scale poorly in terms of area because:  
- There's a reticle limit (~800 mm²).  
- As chip area grows, yield drops exponentially.  

Chiplets scale better economically → e.g., AMD builds 64-core EPYC CPUs from 8-core chiplets (modular replication).  


![alt_text](./figures/Pasted%20image%2020250424195425.png)
### 3D-integeration:
- **TSV-based Stacking**
- M3D (Monolithic 3D-staking)
- 2.5 D

 1️⃣ How is Monolithic 3D Integration Different from TSV-based Stacking?


| Feature           | TSV-Based 3D Stacking (HBM, Wide I/O)            | Monolithic 3D Integration (M3D)                                |
| ----------------- | ------------------------------------------------ | -------------------------------------------------------------- |
| Stacking Method   | Separate dies stacked & connected via TSVs       | Transistor layers grown sequentially on the same wafer         |
| Interconnect Type | TSVs (large & power-hungry)                      | High-density Inter-Layer Vias (ILVs)                           |
| Layer Bonding     | Die-to-die bonding                               | Wafer-to-wafer bonding                                         |
| Density           | Limited by TSV size (~1–10 µm)                   | Much higher density (ILVs < 100 nm)                            |
| Performance       | High bandwidth, but TSVs add delay & energy cost | Lower latency, higher bandwidth due to ultra-dense connections |
| Power Efficiency  | Improved vs. 2D but still power-hungry           | Extremely low energy consumption                               |
| Use Cases         | GPUs, AI accelerators, high-bandwidth DRAM       | Future CPUs, AI chips, neuromorphic computing                  |

  
3️⃣ Key Differences Between Bumps & Microbumps

| Feature          | Bump                        | Microbump                                           |
| ---------------- | --------------------------- | --------------------------------------------------- |
| Size             | 50–150 µm                   | 10–30 µm                                            |
| Application      | Flip-chip CPU/GPU, 2.5D ICs | 3D-stacked DRAM, chiplets                           |
| Density          | Lower                       | Much higher (more per area)                         |
| Power Efficiency | Higher resistance           | Lower resistance, better for low-power applications |

✔ Chiplet Design = A modular approach to CPU/GPU design (uses smaller dies instead of one big chip).

✔ 2.5D Integration = A packaging method where multiple chips are placed on a silicon **interposer** for high-speed communication.

So:

✅ Chiplets are not connected via traditional PCB.
✅ Chiplets use silicon **interposers, EMIBs, or advanced substrates** for fast and dense interconnects.

![alt_text](./figures/Pasted%20image%2020250424194214.png)

![alt_text](./figures/Pasted%20image%2020250424194846.png)

![alt_text](./figures/Pasted%20image%2020250424195347.png)

# FPGAs
FPGA vendors: Intel, Xilinx, Microchip, ...
### Trends
- Advancements in Technology:
  - **FinFET and 3D Stacked FPGAs**: Future FPGAs will leverage FinFET (Fin Field-Effect Transistor) and 3D stacked technologies to increase density, reduce power consumption, and improve performance.
  - **Quantum Computing**: FPGAs might be used as a bridge between classical and quantum computing, enabling the development of hybrid quantum-classical systems.
- New Business Models and Ecosystems:
  - **FPGA-as-a-Service (FaaS)**: Cloud-based FPGA services will emerge, offering on-demand access to FPGA resources, reducing costs, and increasing adoption.
  - **Open-Source FPGA Ecosystems**: Open-source FPGA platforms will become more prevalent, fostering innovation, collaboration, and community-driven development.


#### Generations of Xilinx Zynq FPGA
##### **Zynq-7000 (First Generation):**
- Introduced the concept of integrating ARM Cortex-A processors with FPGA logic.
- Focused on embedded systems and general-purpose applications.

##### **Zynq UltraScale+ MPSoC (Second Generation):**
- ###### **Key Components of an MPSoC**
   - **Application Processors:** High-performance cores (e.g., ARM Cortex-A53) for running operating systems like Linux and handling complex tasks.
   - **Real-Time Processors:** Real-time cores (e.g., ARM Cortex-R5) for deterministic and time-critical operations.
   - **Specialized Accelerators:** Dedicated hardware for tasks such as AI/ML inference, video encoding/decoding, or digital signal processing (DSP).

##### **Versal ACAP (Advanced Compute Acceleration Platform):**
- Built on the foundation of Zynq, Versal integrates AI engines, DSP engines, and adaptable engines for next-generation compute-intensive workloads.

---


- The Xilinx SDK (Software Development Kit) was the integrated development environment (IDE) for software development targeting Xilinx devices ==> replaced by **Vitis** Unified Software Platform.


# Material Technologies

| Technology                     | First Principle(s)                                                                                                                                                                                                                                                     | Key Advantage(s) Derived from Principle(s)                                                                                                                                                                                                                                                                                                                                               | Key Limitation(s) Derived from Principle(s)                                                                                                                                                                                                                                                                                                                                     | Best Applications (Deduced from Principles)                                                                                                                                                                                                                                                                                                                                                                                                 |
| ------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Quantum Computing              | Quantum Mechanics: Superposition (existing in multiple states at once), Entanglement (correlated fates of particles), Interference (wave-like combination of states). Uses Qubits.                                                                                     | Massive Parallel Exploration: Can explore exponentially large computational spaces simultaneously for specific algorithms. Ability to model quantum systems directly.                                                                                                                                                                                                                    | Fragility (Decoherence): Quantum states are easily disturbed by the environment. Error Correction: Extremely complex and resource-intensive. No Universal Speedup: Only faster for specific problem types (e.g., those with periodic structures or requiring quantum simulation). Measurement Problem: Reading out the answer collapses superposition.                          | 1. Simulating Quantum Systems: Directly mimics the underlying physics (Materials Science, Chemistry, Drug Discovery).<br><br>2. Problems with Hidden Periodic Structures: E.g., Factoring large numbers (Cryptography - Shor's Algorithm).<br><br>3. Certain Optimization & Search Problems: Where superposition allows simultaneous evaluation of many possibilities (e.g., specific ML, logistics).                                       |
| Von-Neumann CMOS Computing     | Semiconductor Physics (CMOS Transistors): Controlling electron flow in silicon to create binary switches (ON/OFF states). Von Neumann Architecture: Separate Processing Unit (CPU) and Memory Unit, connected by a bus; sequential instruction fetching and execution. | Universality & Programmability: Can compute any computable function (Turing complete). Maturity & Scalability: Decades of refinement, immense infrastructure, reliable, cost-effective manufacturing (Moore's Law legacy). Deterministic Operation: Reliable, predictable behavior.                                                                                                      | Von Neumann Bottleneck: Performance limited by data transfer speed and energy cost between CPU and Memory. Sequential Execution: Parallelism must be explicitly managed in software/hardware, not inherent for single-core. Power Consumption/Heat: Transistor switching consumes power and generates heat, limiting density/speed.                                             | 1. General-Purpose Computing: Desktops, servers, mobile devices running diverse applications.<br><br>2. Legacy Software: Vast existing codebase relies on this architecture.<br><br>3. Control Systems: Where sequential logic and reliability are paramount.<br><br>4. Tasks Not Limited by Memory Bandwidth: Many traditional computational tasks.                                                                                        |
| Non-Von-Neumann CMOS Computing | Semiconductor Physics (CMOS Transistors): Still uses CMOS transistors. Architectural Innovation: Modifies/eliminates the strict separation of processing and memory (e.g., Processing-in-Memory, dataflow, systolic arrays, neuromorphic structures).                  | Reduced Data Movement: Performing computation closer to or within memory drastically cuts energy use and latency for data-intensive tasks. Massive Parallelism: Architectures often tailored for highly parallel operations (e.g., matrix multiplication).                                                                                                                               | Specialization: Often optimized for specific computational patterns (e.g., AI workloads), less flexible for general tasks. Programming Complexity: May require different programming models or tools. Still CMOS Limits: Ultimately constrained by CMOS transistor physics (power, heat at scale).                                                                              | 1. AI/ML Acceleration (Inference & Training): Exploits parallelism and reduced data movement for tensor operations.<br><br>2. Real-time Data Processing: Efficiently handles large streams from sensors (Edge AI, Signal Processing).<br><br>3. Graph Analytics: Processes highly connected data structures more efficiently by reducing random memory access costs.                                                                        |
| Photonic Computing             | Electromagnetism (Photon Behavior): Using photons (light particles/waves) for information representation and processing. Principles include high speed propagation, low loss transmission (in fiber), wave interference, wavelength division multiplexing (WDM).       | Extreme Speed & Bandwidth: Information travels at/near light speed. WDM allows massive parallelism in a single channel. Low Energy for Data Transmission: Photons consume very little energy to travel long distances compared to electrons in copper. Potential for Analog Computation: Wave properties can perform certain mathematical functions (e.g., Fourier Transform) naturally. | Weak Photon Interaction: Difficult to make photons interact strongly to create efficient logic gates (unlike transistors). Size & Integration: Photonic components are generally larger than transistors; integrating optics and electronics efficiently is challenging. Limited Logic Implementation: Creating complex, general-purpose logic comparable to CMOS is difficult. | 1. High-Speed Communication/Interconnects: Replacing electrical wires within chips, between chips, and in data centers/networks.<br><br>2. Specialized Co-Processors: Accelerating specific math-intensive tasks suited to optics (e.g., matrix multiplication, FFTs, reservoir computing).<br><br>3. Telecommunications: Signal processing directly in the optical domain.                                                                 |
| Emerging Material Computing    | Novel Material Physics: Exploiting unique physical phenomena not dominant in silicon (e.g., resistance switching in memristors, phase changes in PCM, electron spin in spintronics, unique transport in 2D materials/nanotubes).                                       | New Functionalities: Enables capabilities like non-volatile analog memory states (memristors for neuromorphic), inherent non-volatility (MRAM, PCM, RRAM). Potential for Extreme Density/Efficiency: May overcome CMOS scaling limits via 3D stacking or fundamentally lower-energy switching mechanisms. In-Memory Computation: Some devices naturally blend memory and processing.     | Immaturity & Variability: Manufacturing challenges, material consistency, reliability, and endurance issues. Integration Complexity: Integrating novel materials/devices with established CMOS processes. Lack of Standard Architectures/Tools: Design and programming models are still under development.                                                                      | 1. Neuromorphic Computing: Memristors mimic biological synapses for brain-inspired AI hardware.<br><br>2. Dense, Fast, Non-Volatile Memory: Replacing/augmenting DRAM and Flash (MRAM, RRAM, PCM).<br><br>3. Ultra-Low Power Devices: Leveraging unique physics for specific applications like sensors or edge devices.<br><br>4. Beyond-CMOS Logic (Future): Potential path to continue computational scaling if CMOS limits are hit hard. |

Conclusion:

The best application for each technology stems directly from its underlying physical principles and architectural design:

- Quantum Computing: Exploits quantum mechanics for problems with inherent quantum structure or requiring exploration of vast possibilities, currently niche but potentially revolutionary for science, optimization, and cryptography.
    
- Von-Neumann CMOS: Leverages mature semiconductor switching and a universal architecture for the vast majority of general-purpose computing tasks where flexibility, cost-effectiveness, and a massive software ecosystem are key.
    
- Non-Von-Neumann CMOS: Mitigates the data movement bottleneck of the Von Neumann architecture using CMOS transistors, making it ideal for specific, highly parallel, data-intensive tasks like AI/ML where energy efficiency and throughput are critical.
    
- Photonic Computing: Utilizes the speed and bandwidth of light, making it best suited for high-speed data communication (interconnects) and potentially for specialized computational accelerators where light propagation or wave properties offer an advantage.
    
- Emerging Material Computing: Exploits novel physics beyond standard silicon, targeting applications that directly benefit from these unique properties, such as brain-like computing (neuromorphic), dense non-volatile memory, or ultra-low power operation, potentially offering a path beyond CMOS limitations.
    

The future likely involves heterogeneous computing, where systems integrate multiple technologies (e.g., a CMOS CPU, Non-Von Neumann AI accelerators, Photonic interconnects, and perhaps access to Quantum resources) to leverage the best tool for each specific job.


