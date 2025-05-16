# Neuromorphic Computing

**Neuromorphic = Brain-inspired computing**

Neuromorphic computing refers to systems and architectures inspired by the structure and function of the human brain.

---

## Table of Contents

1. [Types of Neuromorphic Computing](#types-of-neuromorphic-computing)

   * [Processing-in-Memory (PIM)](#processing-in-memory-pim)
   * [Spiking Neural Networks (SNNs)](#spiking-neural-networks-snns)
2. [Neuromorphic Technologies](#different-neuromorphic-technologies)
3. [Processing-in-Memory (PIM)](#processing-in-memory-pim)

   * [What is PIM?](#what-is-pim)
   * [Key Concepts](#key-concepts-of-pim)
   * [Types](#types-of-pim)
   * [Applications](#applications-of-pim)
   * [Advantages](#advantages-of-pim)
   * [Challenges](#challenges-of-pim)
   * [Examples](#examples-of-pim-technologies)
   * [Researching PIM Using FPGAs](#researching-pim-using-fpgas)
4. [Spiking Neural Networks (SNNs)](#spiking-neural-networks-snns)

   * [Terminology](#common-terms)
   * [Devices](#resistive-memory-and-memristors)
   * [Challenges](#challenges-in-snn-training)
   * [Future Primitives](#possible-future-computational-primitives)
   * [Applications](#applications-of-snns)

---

## Types of Neuromorphic Computing

* **PIM** – Processing-in-Memory
* **Spiking Neural Networks (SNNs)** – Event-driven neural models

---

## Different Neuromorphic Technologies

![Different Neuromorphic Technologies](./figures/Screenshot%20from%202024-10-07%2021-04-58.png)

### Resistive Memory and Memristors

* **RRAM** is good for binary storage with fast switching
* **Memristors** allow continuous resistance modulation, ideal for brain-like computing

Terms like **resistive switches**, **resistive switching devices**, and **memristors** are used interchangeably, with emphasis on dynamic behavior.

### Possible Future Computational Primitives

1. Memristors
2. Reservoirs
3. Quantum neuromorphic systems

---

## Processing-in-Memory (PIM)

### What is PIM?

Processing-in-Memory (PIM) integrates computation capabilities directly into memory (RAM or storage), reducing data movement between CPUs/GPUs and memory, and improving performance and energy efficiency.

---

### Key Concepts of PIM

1. **Data-Centric Processing** – Computation happens where the data resides.
2. **Parallelism** – Multiple memory units can process data simultaneously.
3. **Reduced Latency & Energy Use** – Less data movement = less power and delay.

---

### Types of PIM

![PIM Diagram](./figures/Pasted%20image%2020250403105135.png)

---

### Applications of PIM

* AI/ML Acceleration
* Big Data Analytics
* High-Performance Computing (HPC)

---

### Advantages of PIM

✔ Higher Bandwidth
✔ Lower Power Consumption
✔ Improved Performance

---

### Challenges of PIM

❌ Complex Design
❌ Software Support and Compatibility

---

### Examples of PIM Technologies

* **Samsung HBM-PIM**
* **UPMEM**
* **Memristor-based PIM**

PIM helps overcome the "memory wall" in modern computing.

---

## Researching PIM Using FPGAs

### Why Use FPGAs for PIM Research?

* **Reconfigurability** – Rapid testing of near-memory, in-memory, or hybrid architectures
* **Hardware Customization** – Custom compute logic inside/near memory models
* **Real-World Testing** – High-bandwidth memory-equipped FPGAs mimic PIM behavior
* **Cost-Effective** – Much cheaper than ASIC tape-out

---

### FPGA-Based PIM Approaches

#### 1. Near-Memory Processing (FPGA + External Memory)

Attach FPGA logic close to memory (e.g., DDR4, HBM).
**Use Cases**: Database acceleration, streaming analytics

#### 2. In-Memory Computing (Using FPGA BRAM/DRAM Models)

Perform computations within FPGA memory blocks.
**Use Cases**: Bit-serial logic in BRAM, memristor simulation

#### 3. Hybrid Architectures

Mix of on-FPGA logic + off-chip memory with computation.
**Use Cases**: ML inference, graph processing, filtering

---

### Key Research Areas

* Memory-centric architectures
* Custom programming models for PIM
* Energy-efficient design
* Evaluating real-world workloads (ML, databases, HPC)

---

### Existing Projects and Examples

* **PRIME** (ReRAM-based PIM for DNNs – ISCA 2016)
* **FloatPIM** (FPGA-accelerated DNN training – ISCA 2019)
* **DRISA** (Reconfigurable PIM in DRAM – MICRO 2017)
* **Liquid Silicon** (Manchester University – RRAM PIM)

---

### Challenges and Considerations

* Limited memory bandwidth on low-end FPGAs
* High resource usage for compute logic
* Custom compilers/runtimes often required

---

### Getting Started with FPGA-Based PIM

* **Hardware:** Xilinx Alveo U280, U50, Intel Stratix 10 MX
* **Tools:** Vivado, Vitis, Quartus, Verilog, HLS
* **Simulators:** DRAMSim2, Gem5 for PIM modeling
* **Benchmarks:** Compare GEMM, SPMV on CPU vs. FPGA-PIM

---

### Recommended Reading

* **PRIME** – UCSD's ReRAM PIM paper
* **ComputeDRAM** – Off-the-shelf DRAM as compute
* **PiMulator** – Open-source co-simulation framework
* **Energy-Efficient PIM with FPGAs** – DATE 2021

> Use [IEEE Xplore](https://ieeexplore.ieee.org), [arXiv](https://arxiv.org), and [GitHub](https://github.com) to find implementations and papers.

---

## Spiking Neural Networks (SNNs)

### Common Terms

| Common Term         | Technical Term                            |
| ------------------- | ----------------------------------------- |
| body                | soma                                      |
| spike               | action potential (AP)                     |
| response            | post synaptic potential (PSP)             |
| excitatory response | excitatory post synaptic potential (EPSP) |
| inhibitory response | inhibitory post synaptic potential (IPSP) |
| upstream neuron     | pre-synaptic neuron                       |
| downstream neuron   | post-synaptic neuron                      |
| resistive memory    | resistive-switching memory                |

---

### Challenges in SNN Training

* Lack of robust training algorithms comparable to ANNs
* Gradient-based training methods are underdeveloped
* ANN-to-SNN conversion is not always accurate or optimal

---

### Applications of SNNs

#### Event-Based Vision

* DVS sensors + SNNs for detection, classification, tracking
* Datasets: N-MNIST, CIFAR10-DVS

#### Audio Processing

* Voice activity detection, keyword spotting, digit recognition
* Cochlea-inspired spike encodings

#### Time-Series Analysis

* EEG, EMG, ECoG signal classification
* Natural language and speech processing

#### Robotics and Edge Computing

* Low-power edge processing in autonomous robots
* Real-time learning and adaptation

#### Pattern Recognition

* STDP-based local learning
* Image classification (MNIST, CIFAR-10, ImageNet)

#### Neuromorphic Olfaction

* Inspired by biological olfaction
* Layered spike-based networks for odor classification


It's important to note that while SNNs hold great promise for these applications due to their inherent properties, ongoing research is crucial to overcome challenges such as training deep SNNs, achieving comparable accuracy to ANNs on all tasks, and developing efficient hardware platforms to fully exploit their potential. The development of learning to learn methods, as discussed in our previous conversation, could further enhance the adaptability and efficiency of SNNs in various real-world applications, especially those requiring online learning and adaptation on edge devices.
