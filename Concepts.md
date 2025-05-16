## Computer Boot Sequence:
1. Power on
2. CPU reset vector: first value of PC(program counter) after reset pointing to BIOS/UEFI code 
3. BIOS/UEFI : firmware code that is stored on BIOS chip (can be a ROM or Flash device)
	- POST (Power-On Self Test) is done in the BIOS/UEFI code 
	
![alt text](./figures/OS_Boot_1.png)
![alt text](./figures/OS_Boot_2.png)

SCURE BOOT
FSBL

---
- Callback vs calling a func within another function

electromigration

Solid-state: based on **semiconductor** materials

**power network design** is the analysis and design of **on-chip** [conductor](https://en.wikipedia.org/wiki/Electrical_conductor "Electrical conductor") networks that distribute [electrical power](https://en.wikipedia.org/wiki/Electric_power "Electric power") on a chip.

LDPC encoding and decoding

Federated Learning

---

- .vscode
- .idea

Tcl
set_app_var vs set

CLI (Command-line Interface):

- .cmd

- .bat

- .sh
---
LCD classes:
- IPS
- TFT
- LDPC
--- 

- if vs #ifndif

- define vs const


Data Analysis Methods

Black holes

Docker

What type of frying pan is resilient to metal spoons?

Pot Materials:

- Iron

- Steel

- Stainless steel

- Cast iron

- Teflon




Dependabot

Error-prone

Clock gating

SLAM (Simultaneous localization and mapping)

Unmanned Robots

Adversarial

Newlib vs Linux
Unix - > multi-user OS

superclass vs subclass

Security Deposit vs Mortgage vs Rent

Down payments vs Closing costs

self-check mechanisms
Automation, Modeling, Verification

GitLab

RISC-V compliance refers to the adherence and compatibility of a computer processor or system with the RISC-V instruction set architecture (ISA).

degree conferral

Director vs Coordinator

Build vs compile vs parser vs execution

YAML (YAML Ain't Markup Language) is a human-readable data serialization format. It is often used as an alternative to JSON or XML for configuration files, data serialization, and interchanging data between different systems.


sandbox

An **industry solution** refers to a comprehensive set of software, tools, and services specifically designed and tailored to meet the needs of a particular industry or sector.

ISO/IEC

- QT-based GUI vs MFC(Microsoft Foundation Class)-based GUI
	- Qt is cross-platform unlike MFC 

CRLF vs LF

'with' statement:

- unallocate resource if an exception occurs
- '**enter**()'

weak vs strong typing = type checking: runtime vs compile time

identifier vs text




Nvidia DLSS -> Use AI for upscaling(Frame Gen)
- Rendering
	- Ray Tracing
	- Scanline Rendering


Closed Source, Proprietary, commercial
open-source => free
free =>x open-source
- windscribe 10Gb is free but it is not open source
- MangoDB core is open-source => free to use, But MangoDB + Additional features = commercial
- Free Software Foundation
	- GNU project : open sw project
		- GCC
		- GDB
		- GNU/Linux
		- Gnome




Seed : initialize the whole process of random no generation

- sequence of random number







Here is your content converted into clean and structured **Markdown** format:

---

# Bandwidth Formula and Concepts

The bandwidth of a system (e.g., memory, network, or bus) is calculated based on how much data can be transferred per unit of time.

## 📐 General Formula

**Bandwidth**

$$
\text{Bandwidth} = \frac{\text{Data Transferred}}{\text{Time}}
$$

*(in bytes/sec, GB/s, etc.)*

---

## 🧠 Key Variations by System

### 1. Memory Bandwidth (e.g., DRAM, HBM, GDDR)

**Formula:**

$$
\text{Memory Bandwidth} = \text{Transfer Rate} \times \text{Bus Width} \times \text{Channels}
$$

* **Transfer Rate**: Clock frequency × transfers per clock
  (e.g., DDR5 = 2 transfers/cycle, GDDR6 = 4)
* **Bus Width**: Number of data lines (e.g., 64-bit, 128-bit)
* **Channels**: Number of independent memory channels (e.g., dual-channel, HBM2 stacks)

**Example:**
A DDR4-3200 (3200 MT/s) module with a 64-bit (8-byte) bus and dual-channel:

$$
3200 \times 10^6 \times 8 \times 2 = 51.2 \, \text{GB/s}
$$

---

### 2. Effective Bandwidth (Real-World Performance)

**Formula:**

$$
\text{Effective Bandwidth} = \frac{\text{Actual Data Transferred}}{\text{Total Time (including overheads)}}
$$

* Accounts for latency, protocol overheads (e.g., PCIe headers), and contention.

---

### 3. Network Bandwidth

**Formula:**

$$
\text{Network Bandwidth} = \text{Bit Rate} \times \text{Utilization Factor}
$$

* **Bit Rate**: Raw line speed (e.g., 100 Gbps Ethernet)
* **Utilization**: Efficiency after protocol overhead (\~95% for large packets using TCP/IP)

---

## 📝 Important Notes

* **Units**: Typically in bytes/sec (B/s, GB/s) or bits/sec (bps, Gbps)
* **Conversion**:

  * 1 byte = 8 bits
  * Example: 100 Gbps = 12.5 GB/s
* **Parallelism**:

  * Technologies like **HBM** stack multiple channels vertically for higher throughput.
* **FPGA/Accelerators**:

  * Bandwidth depends on interconnect:

    * PCIe 4.0 x16 ≈ 32 GB/s
    * HBM2 ≈ 256 GB/s per stack

---

## 🔢 Example Calculation (HBM2 Memory)

**HBM2 Stack**: 8 channels × 128-bit bus × 2 Gbps/pin

$$
2 \times 10^9 \times \left(\frac{128}{8}\right) \times 8 = 256 \, \text{GB/s}
$$

---

## ⏱ Bandwidth vs. Latency

* **Bandwidth**: Measures *throughput* (how much data moves)
* **Latency**: Measures *delay* (how long one transfer takes)
* ⚠ High bandwidth ≠ low latency
  *(e.g., GPUs have high bandwidth but may have higher latency than CPUs)*

---

## 🛠 Tools to Measure Bandwidth

* **Memory**:

  * STREAM benchmark
  * Intel Memory Latency Checker (mlc)
* **FPGA**:

  * ChipScope (Xilinx)
  * SignalTap (Intel)
* **Network**:

  * `iperf`
  * `ethr`





# Programmable Tools to Create Digital Block Diagrams (Like Vivado Block Design)

If you're looking for a programmable or scriptable tool to create digital block diagrams (like Vivado's block design) using code/API instead of a GUI, here are the best options:

---

## 1. HDL-Based Tools (Generate Block Diagrams from Code)

These tools allow you to describe hardware in HDL (VHDL/Verilog) and automatically generate block diagrams.

### Vivado Tcl Scripting

Vivado itself supports Tcl scripting to generate block designs programmatically.

**Example:**

```tcl
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0
connect_bd_net [get_bd_pins axi_gpio_0/gpio_io_o] [get_bd_pins processing_system7_0/GPIO_I]
````

You can export a `.tcl` script from an existing Vivado block design and modify it.

---

### Yosys + Graphviz (For Open-Source Synthesis & Visualization)

Yosys (RTL synthesis tool) can generate dot files from Verilog, which can be rendered into block diagrams using Graphviz.

**Example:**

```bash
yosys -p "read_verilog mydesign.v; synth; write_dot -view mydesign.dot"
dot -Tpng mydesign.dot -o mydesign.png
```

Works well for combinational/sequential logic visualization.

---

### Verilog-to-Schematic Tools

* **netlistsvg** – Renders Verilog netlists into interactive schematics.
* **Icarus Verilog + GTKWave** – For waveform-based visualization.

---

## 2. Python-Based Tools (Generate Diagrams Programmatically)

If you want to generate block diagrams using Python, these libraries are useful:

### PyRTL (Python Register Transfer Level)

A Python library for digital design that can generate block diagrams.

**Example:**

```python
import pyrtl
a = pyrtl.Input(8, 'a')
b = pyrtl.Input(8, 'b')
sum = pyrtl.Output(8, 'sum')
sum <<= a + b
pyrtl.output_to_svg(pyrtl.working_block(), "adder.svg")  # Exports block diagram
```

---

### Graphviz (Python Wrapper for DOT Language)

You can define digital blocks and connections in Python and render them.

**Example:**

```python
from graphviz import Digraph
dot = Digraph()
dot.node('A', 'Register')
dot.node('B', 'ALU')
dot.edge('A', 'B', 'data[7:0]')
dot.render('block_diagram.gv', view=True)  # Outputs PDF/PNG
```

---

### Mermaid.js (Via Python or Directly in Markdown)

Text-based diagramming (works in VS Code, Jupyter, etc.).

**Example:**

```mermaid
blockdiagram
    A[Register] -->|data| B(ALU)
    B --> C[Memory]
```

---

## 3. EDA Tools with API Support

### KiCad (Python API for Schematic Generation)

You can script KiCad schematics using Python.

**Example:**

```python
import pcbnew
sch = pcbnew.SCHEMATIC()
sch.AddWire((0, 0), (10, 10))  # Programmatically add components/wires
```

---

### Magic VLSI (For Custom IC Layouts)

Scriptable via Tcl for custom digital layouts.

---

## 4. Custom Solutions (JSON/YAML → Diagram)

If you need a custom flow, you can define your blocks in JSON/YAML and convert them to diagrams using:

* **D3.js** – Interactive web-based diagrams
* **Draw\.io (Diagrams.net)** – Auto-Layout (via XML/JSON)
* **Python + Matplotlib/NetworkX** – For simple block graphs

---

## 🏆 Best Choice?

| Use Case                                | Best Tool             |
| --------------------------------------- | --------------------- |
| FPGA Block Design (Xilinx)              | Vivado Tcl Scripting  |
| RTL → Diagram (Open-Source)             | Yosys + Graphviz      |
| Python-Based Digital Design             | PyRTL                 |
| General Block Diagrams (Code → SVG/PDF) | Graphviz (Python/DOT) |
| Interactive Web Diagrams                | Mermaid.js / D3.js    |



Graphviz - dot language 
SkunkWorks HDL Visualizer 
netlistsvg - verilog netlist to svg
NextPNR can visualize the design (mainly for placement/routing).





# web scraper, AI Web Scraper
Selenium Tried to act like API for Deepseek using chat.deepseek in order to chat instead of me and return the response but it was not OK at all:
problem1: did not work with firefox # Selenium geckodriver: profile missing: your firefox profile cannot be loaded
problem2: worked with Chrome but could create a persistent profile





Selenium vs AI web scraper?
Here’s a detailed comparison between Selenium (a traditional browser automation tool) and an AI web scraper, highlighting their differences, strengths, and best use cases:

1. Core Functionality
Feature
Selenium
AI Web Scraper
Primary Use
Browser automation, testing, and basic scraping
Intelligent data extraction with adaptive learning
Dynamic Content
Can render JavaScript-heavy pages
Handles dynamic content + interprets it contextually
Adaptability
Requires manual updates if site structure changes
Auto-adapts to layout/HTML changes using AI
Data Interpretation
Extracts raw data (needs manual parsing)
Understands semantics (e.g., NLP for sentiment)
Anti-Bot Evasion
Limited (needs custom proxy/CAPTCHA solvers)
Mimics human behavior to bypass blocks


2. Strengths
Selenium
Precision: Ideal for sites with predictable, static structures.
Control: Full browser interaction (clicks, form submissions).
Free & Open-Source: No cost for basic use (Python/Java/C#).
AI Web Scraper
Adaptability: Learns and adjusts to website changes.
Complex Data Extraction: Handles unstructured text, images, and videos.
Efficiency: Reduces manual effort for large-scale scraping.

3. Weaknesses
Selenium
AI Web Scraper
Fragile (breaks if HTML changes)
Higher computational cost
No built-in AI/ML analysis
Overkill for simple sites
Easily detected as a bot
Ethical/legal gray areas (e.g., GDPR)


4. When to Use Which?
Choose Selenium If:
You need to interact with a website (logins, dropdowns, forms).
The target site has a simple, unchanging structure.
You’re on a tight budget (free frameworks available).
Choose an AI Scraper If:
The site uses heavy JavaScript/AJAX or frequently changes layout.
You need to extract insights from unstructured data (e.g., reviews, tweets).
You’re scraping at scale and need anti-blocking features.

5. Hybrid Approach
Many modern scrapers combine both! For example:
Use Selenium to render pages and log in.
Pass the HTML to an AI model (e.g., NLP for text analysis).
Tools like Scrapy + Selenium + TensorFlow enable this.

Popular Alternatives
Selenium Alternatives: Playwright, Puppeteer (lighter but similar).
AI Scraper Alternatives: Diffbot, Apify, Octoparse (low-code AI scrapers).

Final Verdict
For simple, interactive tasks → Selenium.
For large-scale, adaptive scraping → AI Web Scraper.




# Tiling in DNN DSE
- Tile comes from Mapping (not HW architecture).

What does tile mean in the context of DNN DSE?
In the context of Deep Neural Network (DNN) Design Space Exploration (DSE), "tile" refers to a technique used to optimize computation and memory access by partitioning data (e.g., tensors, feature maps, or weight matrices) into smaller, manageable blocks or chunks. Tiling is crucial for improving performance, especially in hardware accelerators like GPUs, TPUs, or custom ASICs/FPGAs.

Why Tiling is Used in DNN DSE:
Memory Hierarchy Optimization
Tiling helps exploit locality of reference by ensuring that frequently accessed data fits into faster memory levels (e.g., cache, registers, or shared memory).
Reduces expensive off-chip DRAM accesses.
Parallelism & Resource Utilization
Enables efficient pipelining and parallel execution (e.g., in systolic arrays or SIMD architectures).
Helps balance workload across compute units.
Reducing Data Movement Overhead
By processing smaller tiles, data transfers between memory and compute units are minimized.
Handling Large Tensors
DNNs often deal with massive tensors that don’t fit in on-chip memory. Tiling breaks them into smaller, processable units.
Types of Tiling in DNNs:

Loop Tiling (Temporal Tiling):
Applied to nested loops in convolution or matrix multiplication (e.g., in GEMM operations).
Example: Tiling loops over input channels, output channels, or image dimensions.

Spatial Tiling:
Partitioning feature maps or weight matrices spatially (e.g., splitting an image into patches).

Channel Tiling:
Splitting input/output channels to fit into limited on-chip memory.

Example in Convolutional Layers:
Suppose you have a large input feature map and a convolution kernel. Instead of processing the entire image at once, you tile it into smaller blocks (e.g., 8x8 tiles) and compute convolutions tile-by-tile, reusing weights efficiently.

Trade-offs in DSE:
Tile Size Selection: Larger tiles improve compute utilization but may increase memory pressure.
Memory vs. Compute Bound: Tiling helps balance between memory bandwidth and compute throughput.
Hardware Constraints: Tile sizes must align with accelerator parameters (e.g., SRAM size, register files).

Conclusion:
In DNN DSE, tiling is a key optimization strategy to improve throughput, energy efficiency, and latency by structuring computations to match hardware capabilities. The choice of tile size and partitioning scheme is often explored during DSE to find the best-performing configuration.





# Endpoint vs API
serverless or server-based API, Edge API
Server-Based:
# Your Express.js API running locally
http://localhost:3000/api/users


Serverless:
# Your AWS Lambda endpoint
https://abc123.execute-api.us-west-2.amazonaws.com/prod/api


Edge:
# Your Cloudflare Worker
https://your-app.workers.dev/api


All three are "Web APIs", but with very different server architectures underneath!
Google Cloud is generally not available for use in Iran, and individuals or entities in Iran are prohibited from accessing or using Google Cloud services.


# DRAM

- DIMM vs. SIMM
- JEDEC DDRx Standards
- GDDR

#### PiDRAM
PiDRAM is the first flexible end-to-end framework that enables system integration studies and evaluation of real Processing-using-Memory techniques. Prototype on a RISC-V rocket chip system implemented on an FPGA. Described in our paper: https://arxiv.org/abs/2111.00082

Source code & scripts for experimental characterization and demonstration of 1) simultaneous many-row activation, 2) up to nine-input majority operations and 3) copying one row's content to up 31 rows in real DDR4 DRAM chips. Described in our DSN'24 paper by Yuksel et al. at https://arxiv.org/abs/2405.06081

### the key issues and trends in DRAM technology scaling
1. the difficulty of scaling DRAM capacity (i.e., density, or cost per bit), bandwidth, and latency at the same time..
2. DRAM technology scaling to smaller nodes adversely affects DRAM reliability.
3. the reliability problems caused by aggressive DRAM technology scaling can lead to new robustness-related (including security and safety problems) vulnerabilities.
4. the power and energy consumption of main memory. DRAM is inherently a power and energy hog, as it consumes energy even when it is not used (e.g., it requires periodic memory refresh [54]), due to its charge-based nature.


⚡ Fascinatingly, many operations envisioned by these
PUD works can already be performed in real unmodi-
fied commercial off-the-shelf (COTS) DRAM chips, **by**
**violating manufacturer-recommended DRAM timing pa-**
**rameters.**


The first major new approach to main memory design
is 3D-stacked memory [91, 355, 358–361, 726]. In a
3D-stacked memory, multiple layers of memory (typi-
cally DRAM in already-existing systems) are stacked
on top of each other, as shown in Figure 13. **These**
**layers are connected together using vertical through-**
**silicon vias (TSVs)** [355, 361]. Using current manufac-
turing process technologies, thousands of TSVs can be
placed within a single 3D-stacked memory chip. As
such, the TSVs provide much greater internal mem-
ory bandwidth than the narrow memory channel. Ex-
amples of 3D-stacked DRAM available commercially
include High-Bandwidth Memory (HBM) [355, 358],
Wide I/O [727], Wide I/O 2 [728], and the Hybrid Mem-
ory Cube (HMC) [360]. Detailed analysis of such 3D-
stacked memories and their effects on modern work-
loads can be found in [19, 80, 354, 355, 361, 489, 729].
Emerging die-stacking and packaging technologies, like
hybrid bonding [323, 362, 363] and monolithic 3D in-
tegration [364–371], can further amplify the benefits
of conventional TSV-based 3D-stacked memory chips
by greatly improving internal bandwidth across layers
using high-density inter-layer vias (ILVs) [364, 370]
or direct wafer-to-wafer connections via Cu–Cu bond-
ing [323, 362, 363, 730], respectively.

✔ **TSVs alone do not increase CPU-to-memory bandwidth, but they enable much higher internal DRAM bandwidth, which indirectly helps.**  
✔ **The real bandwidth improvement comes from wider interfaces (like in HBM), which connect to the CPU using interposers or direct stacking.**




Von-Neumann Energy and Speed bottleneck: data movement ==> Control-intesive Tasks ✅ but Data-Intensive Tasks ❌![[Drawing 2025-04-03 08.42.27.excalidraw]]


📌 Always compare based on first principles and logic because it never changes and if something is inherently suitable for something, it can get mature and predominant. If something is mature and long-lived, it does not mean it is the best and there is no alternative to it. because in this way, there will be no progress and research

### **When Can We Access Data in DRAM?**

The correct order of operations in a **DRAM read cycle** is:

1️⃣ **Row Activation:** The entire row is activated, connecting capacitors to the bit-lines.  
2️⃣ **Sensing:** The sense amplifiers detect and amplify the small charge, holding the row’s data.  
3️⃣ **Data Read:** At this point, the data is **available** to the processor.  
4️⃣ **Precharge (Before the Next Access):** The bit-lines must be reset (precharged) **before a new row can be accessed**.

#### **Key Correction:**

✔ **Data is available after sensing, not after precharge.**  
✔ **Precharge happens only when switching to a different row, not for the same row.**

If I previously said **precharge is needed before reading**, that was incorrect. **Precharge is only needed before accessing a different row**.
:￼￼ Charge storage (capacitor-based) is inherently slower than bistable transistor-based storage (flip-flop or latch).
Would you like a corrected timing diagram to make this clearer? 🚀


Yes, DRAM is slower than SRAM due to fundamental design differences rooted in **first principles of circuit operation**. The main reasons why DRAM is slower than SRAM are:

### **1. Storage Cell Structure**

- **SRAM (Static RAM):** Uses **six transistors (6T)** per bit, forming a **latch-based circuit** that can hold data as long as power is supplied. No need for refresh.
    
- **DRAM (Dynamic RAM):** Uses **one transistor and one capacitor (1T1C)** per bit. The capacitor stores charge, but it leaks over time, requiring periodic **refresh cycles**.
    

📌 **First Principle:** Charge storage (capacitor-based) is inherently slower than bistable transistor-based storage (flip-flop or latch).

### **2. Read/Write Mechanism**

- **SRAM:** Directly accesses stored data in a flip-flop, making read/write operations fast.
    
- **DRAM:** Reads data by sensing tiny charge differences in capacitors. This requires **charge amplification and restoration**, slowing down access time.
    

📌 **First Principle:** Charge sensing and refresh add extra latency in DRAM, unlike SRAM’s direct access.

### **3. Refresh Overhead**

- DRAM capacitors **leak charge over time**, requiring periodic refresh operations (every few milliseconds).
    
- This refresh process **blocks access to memory**, introducing additional latency.
    
- SRAM does not need refresh, making it more responsive.
    

📌 **First Principle:** A volatile charge storage mechanism requires periodic refreshing, increasing latency.

### **4. Access Complexity (Row Activation in DRAM)**

- **SRAM:** Direct access to any bit via its address.
    
- **DRAM:** 📌 **First Principle:** Sequential row activation slows down memory access compared to direct addressing. because of extra precharge step.

### **5. Memory Hierarchy and Location**

- **SRAM** is typically used as **cache memory** (L1, L2, L3) **inside the processor**, reducing access time.
    
- **DRAM** is used as **main memory (outside the CPU chip)**, requiring **data movement across buses**, which adds latency.
    

📌 **First Principle:** Physical distance and off-chip data movement increase access time in DRAM compared to on-chip SRAM. because DRAM technology is different from Conventional CMOS, so they cannot be integerated

### **Conclusion**

DRAM is slower than SRAM **not because of SRAM itself**, but due to fundamental differences in **circuit design, charge storage, and access mechanisms**. SRAM’s **flip-flop storage, direct access, and lack of refresh** make it inherently faster, whereas DRAM’s **capacitor-based storage, refresh cycles, and row activation overhead** introduce latency.

