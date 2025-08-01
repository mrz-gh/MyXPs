# 📚 Table of Contents

1. [Computer Boot Sequence](#computer-boot-sequence)
2. [OS](#os)
3. [Compiler](#compiler)
4. [Git](#git)
5. [System Design](#system-design)
6. [Tradtional ANN](#tradtional-ann)
7. [RISC-V](#risc-v)
8. [why async active-low reset](#why-async-active-low-reset-)
9. [Bandwidth Formula and Concepts](#bandwidth-formula-and-concepts)
10. [code-based Digital Design Schematic Tools](#code-based-digital-design-schematic-tools)
11. [Endpoint vs API](#endpoint-vs-api)
12. [DRAM](#dram)
13. [malware & Attack Types](#malware--attack-types)
14. [Network (Necessary in Iran)](#network-necessary-in-iran)
15. [SystemC](#systemc)
16. [Writing to Memristors](#writing-to-memristors)
17. [USB](#usb)

## Computer Boot Sequence

1. PoR (Power-on Reset)
2. CPU reset vector: first value of PC(program counter) after reset, pointing to FSBL (First stage bootloader)
3. FSBL example: BIOS/UEFI : firmware code that is stored on BIOS chip (can be a ROM or Flash device)
    - POST (Power-On Self Test) is done in the BIOS/UEFI code
4. ...

---

## OS

- tickless kernel
- SECURE BOOT
- DTS
  - Interrupt Map Configuration Explanation

- **Software Interrupt vs Syscall**
- **MABI stands for "Machine ABI" (Application Binary Interface)**
- **filesystems**
  - RAM filesystem
  - **primary partition vs logical drive**

### Linux

- Unix - > multi-user OS
- **fstb entry**
- **Creating Soft Links Ubuntu**

---

#### Compiler

- **Compiler vs interpreter vs JIT compiler**
- Build vs compile vs parser vs execution

- **C Standard library, newlib, glibc**
  - Newlib vs Linux
- **volatile keyword do in C**
  - useful when Interrupt + Compiler Optimization flags

- GTEXT in Assembly
- Callback vs calling a func within another function
- **Software Debugger vs Hardware Debugger**
- weak vs strong typing
- runtime vs compile time

- if vs #ifndif

- define vs const

- identifier vs text

- superclass vs subclass

---

#### Git

- Complete Repo Cloning --> with all previous commits

- "nightly release" --> automatically built and released every night (or at regular intervals, often daily)

- GitLab

- Dependabot

- Git Submodule

---

#### System Design

- When designing, plan its test too.
- Regression testing and verification is crucial before every commit. regression testing really matters and must be automatic.
- **sanity testing** is a **rapid** and **initial assessment** of the basic functionality of a software system.

---
Optimization Models:

- White-box
- Black-box
- Heuristics

---

#### Tradtional ANN

##### K-Means

The K-Means algorithm is a popular unsupervised machine learning technique used for clustering data. It groups data points into K clusters, where each data point belongs to the cluster with the nearest centroid (mean of the cluster).

How K-Means Works
Choose K: Decide how many clusters (K) you want.

Initialize Centroids: Randomly select K data points as initial centroids.

Assign Clusters: Assign each data point to the nearest centroid.

Update Centroids: Calculate the new centroids as the mean of all points in each cluster.

Repeat: Repeat steps 3 and 4 until centroids no longer change significantly (convergence) or a max number of iterations is reached.

- Federated Learning

- Quantization:
  - ReBNet
  - LSQ, LSQ+

- Optimizer vs Loss Func
- Attention mask
- Require_grad
- Pytorch vs Tensorflow
- Prune
- Topk
- ANNS (Approximate Nearest Neighbor Search)
- Hyperdimensional Computing (HDC)
- latent text-to-image diffusion

- **Training LLM on FPGA - > the communication bottleneck in distributed training and inference on FPGAs - > sol of NVIDIA is NVlink**

Weight/Input/Output/… stationary (An abstraction that helps a lot in mapping and DNN Reuse and analysis) ⇒ Weight/… Reuse:

- DNN DSE: Mapping and Architecture (Memory Hierarchy )
  - DOSA, CoS  - IF spatial tiling ⇒ Spatial Reuse : Reuse in the Network of PEsA,
  - Timeloop and Accelergy (NVIDIA Tutorial)
  - LoMa Time
  - Nested Loop repersentation
  - Tiling
    - IF spatial tiling ⇒ Spatial Reuse : Reuse in the Network of PEs
    - IF temporal tiling ⇒  Temporal Reuse: Reuse in memory Hierarchy (less upper memory access)
    - Tile comes from Mapping (not HW architecture).
  
![alt_text](./figures/Pasted%20image%2020250616095304.png)

##### LLM

- Ollama does not work properly with external downloaded GGUF models (Ex. DeepSeek-R1-Distill-Qwen-7B-Q4_K_M.gguf from Huggingface) ⇒ zip .ollama folder

- Embeddings (Meaning & Positional, ...), Attention (Query - Key - Value), Feed Forward Network  
    Visualizing transformers and attention | Talk for TNG Big Tech Day '24

- RAG vs CAG, agentic RAG

- LlamaIndex, Elastic Search

- Langchain, Ollama

- LLM Context size

- LLM chat GUI: streamlit, Gradio

- MCP, A2A
- **dotenv (.env)**

- [https://github.com/NarimanN2/ollama-playground](https://github.com/NarimanN2/ollama-playground) →Very interesting and diverse for working with Ollama and good for beginners
- **n8n** is not fully free and also its local version is very bad with online LLMs and hard to work with. And its online version just have a free trail and then priced.
- [https://github.com/lfnovo/open-notebook](https://github.com/lfnovo/open-notebook) → Takes too much time with Ollama, streamlit, langchain, python, surrealdb, dockerized → Google NotebookLM is a lot faster but not very intelligent as I expected

###### RAG

- document_loaders

- Ollama deepseek-r1 embedding is awful, or there is not embedding, or ...

- Vector Store: Vector Database(Chroma, qdrant) and InMemoryVectorStore

- Persistant Memory
- **XP**:
  - localGPT-Vision is an end-to-end vision-based Retrieval-Augmented Generation (RAG) system
  - PrivateGPT is a service that wraps a set of AI RAG primitives in a comprehensive set of APIs providing a private, secure, customizable and easy to use GenAI development framework.
  - - [https://github.com/pixegami/rag-tutorial-v2.git](https://github.com/pixegami/rag-tutorial-v2.git)

Tip: Deepseek API and OpenAI API are not free but Google Gemini API is free for experimental models.

**XP: Ollama local large models are very slow, but small models that are fast are not good at all. (for my computer). So I decided to use APIs but are too expensive compared to free use on their site. Then I decided to use Scrapers to automate but It is not applicable because of CAPTCHA and etc.**  

**Also, I decided to develop a Multi-Provider AI Chatbot with Model Prioritization that if a LLM model fails or run out of usage, it switches to another (Switching and Prioritizing over LLM models automatically). But as I said before, the LLM models' API are not free, and ...**

**At the end, I ended up using open-webui with local offline LLMs using Ollama.**

##### web scraper, AI Web Scraper

Selenium Tried to act like API for Deepseek using chat.deepseek in order to chat instead of me and return the response but it was not OK at all:
problem1: did not work with firefox # Selenium geckodriver: profile missing: your firefox profile cannot be loaded
problem2: worked with Chrome but could create a persistent profile

---

- GigaLib
  - not free, but it has the latest papers even yesterday-published papers
- FreeTube is not smooth and it is just for Desktop

- **Web2 vs Web3**

- **SPICE (Simulation Program with Integrated Circuit Emphasis) Berkeley, A industry standard tool in the  for circuit simulation.**

---

#### RISC-V

- **PLIC in RISC-V, clint**
- RISC-V compliance refers to the adherence and compatibility of a computer processor or system with the RISC-V instruction set architecture (ISA).

---

#### why async active-low reset ?

- Design Standards of Many design and synthesis tools

- Synchronization: Asynchronous resets are often preferred because they can immediately reset the system regardless of the clock signal. This is crucial for initializing registers and bringing the system to a known state at power-up or during error recovery. A posedge reset, being synchronous, would require the reset signal to align with the clock edge, potentially delaying the reset action and complicating the design.

- Clock gating

❌ Tcq​ **is not a function of how early or stable** the input data is before the clock edge.  
✅ It **only depends on the internal characteristics** of the flip-flop and its operating environment.

---

- electromigration

- Solid-state: based on **semiconductor** materials

- **power network design** is the analysis and design of **on-chip** conductor networks that distribute electrical power on a chip.

##### Camera

- DCMI vs MIPI
- The frame rate is controlled by adjusting the sensor's clock settings( PLL (Phase-Locked Loop) configuration), and exposure settings.

- J-Link debug probe

- SmartFusion is a family of microcontroller-based programmable logic devices (PLDs) developed by Microsemi, now part of Microchip Technology
- Libre-SOC project
- LDPC encoding and decoding

LCD classes:

- IPS
- TFT
- LDPC

**quadrature decoder**
LED Shared Cathode Explained

---
What type of frying pan is resilient to metal spoons ? Teflon

Pot Materials:

- Iron

- Steel

- Stainless steel

- Cast iron

---

- Unmanned Robots
- SLAM (Simultaneous localization and mapping)

Security Deposit vs Mortgage vs Rent

Down payments vs Closing costs

degree conferral

Director vs Coordinator

- sandbox
- Docker vs Virtual Machines vs Kubernates

ISO/IEC

- QT-based GUI vs MFC(Microsoft Foundation Class)-based GUI
  - Qt is cross-platform unlike MFC

CRLF vs LF

- Nvidia DLSS -> Use AI for upscaling(Frame Gen)
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

- Seed : initialize the whole process of random number sequence generation

---

## Bandwidth Formula and Concepts

The bandwidth of a system (e.g., memory, network, or bus) is calculated based on how much data can be transferred per unit of time.

## 📐 General Formula

Bandwidth

$$
\text{Bandwidth} = \frac{\text{Data Transferred}}{\text{Time}}
$$

(in bytes/sec, GB/s, etc.)

## 🧠 Key Variations by System

### 1. Memory Bandwidth (e.g., DRAM, HBM, GDDR)

**Formula:**

$$
\text{Memory Bandwidth} = \text{Transfer Rate} \times \text{Bus Width} \times \text{Channels}
$$

- **Transfer Rate**: Clock frequency × transfers per clock
  (e.g., DDR5 = 2 transfers/cycle, GDDR6 = 4)
- **Bus Width**: Number of data lines (e.g., 64-bit, 128-bit)
- **Channels**: Number of independent memory channels (e.g., dual-channel, HBM2 stacks)

**Example:**
A DDR4-3200 (3200 MT/s) module with a 64-bit (8-byte) bus and dual-channel:

$$
3200 \times 10^6 \times 8 \times 2 = 51.2 \, \text{GB/s}
$$

### 2. Effective Bandwidth (Real-World Performance)

**Formula:**

$$
\text{Effective Bandwidth} = \frac{\text{Actual Data Transferred}}{\text{Total Time (including overheads)}}
$$

- Accounts for latency, protocol overheads (e.g., PCIe headers), and contention.

### 3. Network Bandwidth

**Formula:**

$$
\text{Network Bandwidth} = \text{Bit Rate} \times \text{Utilization Factor}
$$

- **Bit Rate**: Raw line speed (e.g., 100 Gbps Ethernet)
- **Utilization**: Efficiency after protocol overhead (\~95% for large packets using TCP/IP)

## ⏱ Bandwidth vs. Latency

- **Bandwidth**: Measures *throughput* (how much data moves)
- **Latency**: Measures *delay* (how long one transfer takes)
- ⚠ High bandwidth ≠ low latency
  *(e.g., GPUs have high bandwidth but may have higher latency than CPUs)*

---

### code-based Digital Design Schematic Tools

I want text-based tool (e.g. code-based) that creates blocks with ports and then connect these ports in a very smooth manner, just by writing connect this port to that port.
Following Options:

- **RTL schematic in Vivado** , Vivado Tcl Scripting
  - the best connection process.
  - blocks are not customizable and there must be a corresponding HDL src file for every block.
- **schemdraw**
  - NOT smooth and automatic connection
- Pyrtl
- D3
- Mermaid
- WaveDrom
- Drawio
- Graphviz - dot language (Yosys + Graphviz)
- SkunkWorks HDL Visualizer
- netlistsvg - verilog netlist to svg
- NextPNR can visualize the design (mainly for placement/routing).

---

## Endpoint vs API

serverless or server-based API, Edge API

Server-Based:

- Your Express.js API running locally

Serverless:

- Your AWS Lambda endpoint

Edge:

- Your Cloudflare Worker

All three are "Web APIs", but with very different server architectures underneath!

- Google Services (e.g. gemini, cloud, ...) are under sanctions because of Iran.

---

## DRAM

- Off-the-shelf DRAM vs Custom DRAM (e.g. GDDR) vs eDRAM (Embedded DRAM) vs HBM
- DIMM vs. SIMM
- JEDEC DDRx Standards
- GDDR

### PiDRAM

PiDRAM is the first flexible end-to-end framework that enables system integration studies and evaluation of real Processing-using-Memory techniques. Prototype on a RISC-V rocket chip system implemented on an FPGA. Described in our paper: <https://arxiv.org/abs/2111.00082>

Source code & scripts for experimental characterization and demonstration of 1) simultaneous many-row activation, 2) up to nine-input majority operations and 3) copying one row's content to up 31 rows in real DDR4 DRAM chips. Described in our DSN'24 paper by Yuksel et al. at <https://arxiv.org/abs/2405.06081>

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

---

## malware & Attack Types

| Feature / Type        | **Virus**                                  | **Trojan**                                       | **Hardware Trojan**                                  | **Side-Channel Attack**                                  |
| --------------------- | ------------------------------------------ | ------------------------------------------------ | ---------------------------------------------------- | -------------------------------------------------------- |
| **Definition**        | Malicious code that replicates and spreads | Malicious software disguised as legitimate       | Malicious circuitry added to hardware                | Attack using physical signals to extract information     |
| **Infection method**  | Embeds in files, programs, or OS           | User is tricked into installing it               | Inserted during design/fabrication/supply chain      | Observes power, timing, EM, or cache behavior            |
| **Replication**       | ✅ Yes                                      | ❌ No                                             | ❌ No                                                 | ❌ No                                                     |
| **Activation**        | When infected file runs                    | When user runs the disguised program             | When a hidden condition is met in hardware           | When attacker measures physical side effects             |
| **Primary target**    | Software                                   | Software                                         | Hardware (ICs, FPGAs, SoCs)                          | Any system (hardware or software) performing computation |
| **Common payloads**   | File corruption, spreading to others       | Keylogging, backdoors, downloading other malware | Data leakage, logic tampering, kill switch           | Key extraction, PIN recovery, algorithm leakage          |
| **Detection**         | Antivirus tools, file integrity checks     | Heuristic scanning, behavioral analysis          | Side-channel, layout inspection, formal verification | Power/timing analysis, signal monitoring                 |
| **Stealth technique** | Hides in files or OS                       | Appears as useful software                       | Tiny logic blocks, triggered under rare conditions   | Exploits unintentional signals—hard to detect            |
| **Risk level**        | 🔺 Moderate to High                        | 🔺 Moderate to High                              | 🔺🔺 High (especially in critical systems)           | 🔺🔺 High (especially in cryptographic contexts)         |

- Error-prone
- Adversarial attack

---

## Network (Necessary in Iran)

| Feature       | Sockets                                           | HTTP                               | FTP                                   |
| ------------- | ------------------------------------------------- | ---------------------------------- | ------------------------------------- |
| Purpose       | General-purpose process-to-process communication  | Web data transfer                  | File transfer                         |
| Level         | Low-level (networking)                            | Application-level                  | Application-level                     |
| Protocol Type | Connection-oriented (TCP) or connectionless (UDP) | Connection-oriented                | Connection-oriented                   |
| Usage         | Flexible, customizable                            | Web browsing, data retrieval       | File upload/download, file management |
| Security      | Depends on implementation                         | Uses HTTPS for secure transmission | Uses encryption and authentication    |
| Data Format   | Raw data, customizable                            | Text, HTML, images, videos, etc.   | Files                                 |
| Common Ports  | TCP: 80, 443; UDP: 53, 123                        | TCP: 80, 443                       | TCP: 20 (data), 21 (control)          |

- vpn
  1. Hide from ISP,..
  2. Tunneling into a remote network

- DNS Filter
- Warp
- fast and stable Network in Iran
  - Warp with Irancell & Rightel : do not work
  - Irancell (Modem) is unstable and slow in Kashmar compared to IR-MCI

- ROCKYOU dictionary is for cracking passwords
- Password crackers like john the ripper cracker in Kali linux uses dict attack (e.g ROCKYOU dict) and brute-force and mutations of them.
  - so, long (12- long) and complex passwords can take them years to crack

۲. طول اقلیدسی و دترمینان
در فضاهای اقلیدسی:

ماتریس‌های ارتوگونال (مثل دوران اقلیدسی) هم دترمینانشان ±1 است و طول اقلیدسی را حفظ می‌کنند.

اما:

دوران هیپربولیک با اینکه دترمینانش ۱ است، ارتوگونال نیست و در نتیجه طول اقلیدسی را حفظ نمی‌کند.

نتیجه:
دترمینان ۱ به ما فقط می‌گوید که نگاشت، حجم (یا مساحت) ناحیه‌ای را حفظ می‌کند. اما:

افزایش طول اقلیدسی بردار پس از اعمال دوران هیپربولیک، ناشی از مقادیر ویژه (eigenvalues) و مقیاس‌گذاری غیرایزومتریک ماتریس است، نه از دترمینان.

- Cyclic Redundancy Check (CRC) is a widely used technique for detecting errors in digital data.

- Remina supports rdp to connect to windows servers

### Gateway

Gateway: A device or server that connects two different networks and manages traffic between them.

| Scenario                                                            | What the Gateway Does                                                                   |
| ------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| Your home PC connects to the Internet                               | Your **router** is the gateway between your local network and the Internet              |
| A server inside a restricted country connects to an external server | That **local server** is the gateway from the local network to the open global Internet |
| In cloud setups                                                     | A **jump server** or **bastion host** acts as a gateway for SSH or data tunneling       |

### SystemC

SystemC does not have a feature to write one line and sc_trace every signal of a module and you should write every signal in another line.

also, sc_trace does not show enum type signals that can be used in FSMs.

In Vivado, the name of the Phase-Locked Loop (PLL) IP core is **"PLL"** or **"MMCME2\_ADV"** depending on the device family and use case.

For most modern designs targeting AMD (Xilinx) devices:

- **MMCM (Mixed-Mode Clock Manager)**: Used for clock management, including PLL functionalities. It is available under the IP catalog as "Clocking Wizard."
- **Clocking Wizard**: A wrapper that simplifies the configuration of MMCMs or PLLs for generating various clock outputs based on your requirements.

To instantiate a PLL using Vivado IP:

1. Open the IP Catalog.
2. Search for **Clocking Wizard**.
3. Configure the PLL or MMCM settings as needed for your design.

### Writing to Memristors

Set Operation (Program): To set a memristor to a low-resistance state (LRS), a positive voltage greater than the set threshold voltage is applied to the device. This process is often called programming or writing.

Reset Operation (Erase): To reset a memristor to a high-resistance state (HRS), a negative voltage greater than the reset threshold voltage is applied. This is often referred to as erasing or resetting.

Memristors, as a class of resistive switching devices, are often categorized based on the physical mechanism used for switching. These mechanisms typically involve ion movement, phase changes, or changes in electronic states.

### USB

Yes, USB can be used as an interface for JTAG and UART, but with specific adaptations. This is achieved through USB-to-JTAG and USB-to-UART adapters

USB(Universal Serial Bus) is a standard technology that allows electronic devices to communicate, and **supply power** to each other through a single cable type

### Reducing the feature length (or the physical dimensions) of transistors in semiconductor manufacturing provides several benefits

1. **Increased Speed:** Shorter channels reduce the distance that electrons need to travel between the source and drain, enabling faster switching speeds. This boosts the overall performance of circuits and allows processors to run at higher clock speeds.

2. **Lower Power Consumption:** Smaller transistors require less power to switch on and off, which helps reduce overall power consumption. Lower power requirements make devices more energy-efficient and can help extend battery life in portable electronics.

3. **Higher Density:** Smaller transistors allow more components to be packed into a given area, increasing the number of transistors on a chip. This higher density enables more complex and capable circuits within the same chip size, leading to more powerful and feature-rich devices.

4. **Cost Efficiency:** While the initial costs of developing smaller feature sizes are high, the ability to produce more chips per silicon wafer can eventually reduce manufacturing costs per transistor, making it cost-effective in high-volume production.

These benefits are the main drivers behind Moore's Law, which observes that the number of transistors on a chip doubles roughly every two years.

- **Achieving same-cycle SRAM access is generally limited to small memory blocks and requires precise timing control. For larger, general-purpose SRAM, even the fastest designs typically incur a one-cycle latency due to the physical delays in address decoding and data line activation.**

---

| Feature             | Dynamic Dataflow                | Von Neumann                    |
| ------------------- | ------------------------------- | ------------------------------ |
| Execution Model     | Data-driven, asynchronous       | Instruction-driven, sequential |
| Memory Architecture | Distributed, token-based        | Centralized, shared            |
| Parallelism         | Implicit, high                  | Limited, explicit              |
| Control Flow        | Decentralized, dynamic          | Centralized, sequential        |
| Efficiency          | Suited for parallel workloads   | Suited for sequential tasks    |
| Bottlenecks         | Token management overhead       | Memory bandwidth (bottleneck)  |
| Use Cases           | High-performance, parallel apps | General-purpose computing      |

---

- CGRA
- Unified virtual memory
- petri net
- Half duplex SPI vs Full duplex SPI

my own small language model

IRDS

- VLC player support EAC3 Audio Encoding unlike MX player for andriod

- torrent, qbittorrent, streamio, uTorrent
  - magnet link, mirror link

adding a platform (NoC like) to GEM5 is not much of use because it just handles connecting the paltform to bus and it does not help you to build the NoC faster.

- Groq streaming registers

- Cocotb does support hierarchical naming

- Exploit

- Epilespsy vs Seizure

H-bomb = Fission bomb (trigger) + Fusion reaction (main blast)

Oppenheimer helped invent fission bombs.

Teller and Ulam were key to the fusion-based H-bomb.

Dynamic Programming (DP) is an optimization technique used to solve problems by breaking them down into overlapping subproblems, solving each subproblem once, and storing the results to avoid redundant computations.

- DP vs Recursive

- Crypto is good for foreign payment to websites and others.

## English

| Phrase                                             | Example                                                       |
| -------------------------------------------------- | ------------------------------------------------------------- |
| **Multiply**                                       | "Multiply 6 by 3 to get 18."                                  |
| **Times**                                          | "6 times 3 is 18."                                            |
| **The product of**                                 | "The product of 6 and 3 is 18."                               |
| **Multiplied by**                                  | "6 multiplied by 3 equals 18."                                |
| **Increased by a factor of**                       | "The value was increased by a factor of 3."                   |
| **Scaled by**                                      | "The vector was scaled by 2."                                 |
| **Double / Triple / Quadruple** *(for 2x, 3x, 4x)* | "We need to double the amount."                               |
| **Each** *(in context of groups)*                  | "There are 4 bags, each with 5 apples." (→ $4 \times 5 = 20$) |
