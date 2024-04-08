# My Workspace
## Note

infinitive canvas: **Concepts**

> #### Excalidraw vs Concepts
> 
> Concept is smoother (better UX)
>
> Excalidraw 
> - free and open-source but it is not mature yet.
> - Searchability
> - Compatible with Obsidian



> #### Markdown vs MS Word vs LibreOffice vs TeX vs gdoc
> 
> - MS Word is closed source and not free 
> - LibreOffice is good for opening word documents
> - gdoc is free but not open-source. Also, you should get online to save the document completely
> - Markdown is open-source and free
> - TeX is open-source and free too. But it is very good for research papers and complex docs
>
> LibreOffice for working with .docx from outside
>
> Markdown for every-day use
>
> TeX for complex docs (e.g. papers, reports, etc.)
>


## Management

- My Journals: Google Drive (**Easier to access** than **.md** files on the **phone**)



## Softwares
- Version Control: Git, GitHub

- IDEs: VScode, Visual Studio Community, ModelSim, QuestaSim (not free), MatLab (not free) 

- PDF tools:
  - PDF annotator -> Writing with Pen
  - Adobe Acrobat Pro. -> Not free

- VPN: Geph, NetMod
  - linux: Windscribe, Geph

- WinRAR, Potplayer, TeXstudio, MikTeX, KMSAutoLite, Git, Grammarly, IDM (not free), draw.io rather than visio, Spotify



- Microsoft apps on your phone and OneDrive are useless. Instead of them, use “Google Drive''.

## Tips
- Set proxy of **IDM** to **System Proxy**.

- **Blocking Internet** of Specific Programs.



- Python: **Miniconda**
	- Use Miniconda for python and data science. Miniconda installation requires the Internet.
	

- Avoid using **duplicate files** because you get confused over time when you forget what is the difference between them. Instead, use **referencing** with **version control** systems like Git. 


- **Commenting** is critical, even when you get back to your code, you can understand it more rapidly.
  - use '' for poper nouns in comments

- TODO.md
- Ultimate **'ReadMe'** format:
  - Outline
  - Overview
    - Goal/Motivation of the project
  - Directory Guide



- Do not use '-' and whitespace in identifiers.



- terminal cannot show images and tables like pandas styled DataFrames so it is better to use jupyter notebooks



- openpyxl is a pure Python library that does not rely on the Excel API or require an installed version of Excel. It directly reads and writes Excel files in the .xlsx format by parsing the underlying XML structure defined by the Office Open XML (OOXML) file format specifications.
Excel is a proprietary spreadsheet software

- `Styler.apply` and `.map` are not compatible with non-unique index or columns.

- in TCL, use ; at the end of each line


- Matplotlib was downloaded with MCI (Irancell was very unstable)


## My Skills

- Tensorflow, pytorch
- EDA tools: Q-flow, Synopsis Design Compiler and PrimeTime PX
- Altera, Quartus, MatLab
- Verification: System verilog assertions, UVM
- Gem5 to work with multiprocessors systems





- DataBase is much more suitable for working with data, not text files and manually sum and work with them


## HDL simulator

| Simulator | UVM support | Mixed-HDL Simulation | Cracked | Open-source |
|---------|-------------|------------|------------|---------|
| Cadence Xcelium (xrun) | |  | YES (https://downloadly.ir/software/engineering-specialized/xcelium/)| NO |
| Cadence Incisive |  | | NO| NO |
| Mentor Graphics Questa (vsim) | YES | YES | YES | NO
| Synopsys VCS (vcs) | YES | YES | NO | NO |
|Aldec Active-HDL |  | YES | YES | NO
| Aldec Riviera-PRO (riviera) | YES | | YES but it is v2014 | NO |
| Xilinx Vivado Simulator | YES | YES | YES | NO |






- **Questa*-Intel® FPGA** -> **not support Ubuntu LTS 22.04** ==> solution: **RHEL** 
https://www.intel.com/content/www/us/en/support/programmable/support-resources/design-software/os-support.html?wapkw=operating%20system%20support#tab-blade-3-4



- **Simulate VHDL by Verilator**: You can synthesize vhdl to a verilog netlist using ghdl - - synth argument which generates a synthesized netlist that you can simulate in verilator.



### ModelSim different Versions

Here's a comparison table showcasing some of the different versions of ModelSim, a popular simulation and debugging tool for digital designs:

| Version | Description |
|---------|-------------|
| ModelSim PE (Personal Edition) Student Edition | A free version targeted towards students and learners. It provides a limited feature set but is suitable for small-scale projects and educational purposes. |
| ModelSim DE (Deluxe Edition) | The Design Edition of ModelSim, which offers advanced capabilities for design verification and debugging. It supports industry-standard hardware description languages (HDLs) such as VHDL and Verilog and provides advanced debugging features. the **assertions** as a new feature |
| ModelSim SE (Special Edition) | The Simulation Edition of ModelSim, which includes all the features of ModelSim DE and adds support for additional languages like SystemC and SystemVerilog. It is typically used for complex system-level simulations and verification. |
| ModelSim PE | The Personal Edition of ModelSim, which is a low-cost version targeting individual engineers and small teams. It offers a comprehensive feature set for simulation and debugging and supports various HDLs and verification methodologies. |
| ModelSim Intel FPGA Edition | A version specifically tailored for Intel FPGA development. It integrates with Intel Quartus Prime design tools and provides enhanced support for Intel FPGA devices and IP cores. |
|ModelSim XE| Xilinx Edition 
| ModelSim Altera Edition | Previously the official simulation tool for Altera (now Intel) FPGA designs. It offered seamless integration with Altera Quartus II software and supported advanced simulation features for Altera FPGA devices. However, it has been superseded by ModelSim Intel FPGA Edition. he official simulation tool for Altera FPGA designs. It provides advanced simulation and debugging capabilities for larger and complex projects. Integrated with Quartus II software.|
| ModelSim-Altera Starter Edition | A free version of ModelSim provided by Altera (now Intel) for use with their FPGA designs. It offers basic simulation and debugging capabilities for smaller projects.  


[ChatGPT]


- **ModelSim-Altera Starter Edition** software is the same as ModelSim-Altera Edition software except for two areas. ModelSim-Altera Starter Edition’s **simulation performance is lower** than **ModelSim-Altera Edition** and has a **line limit** of 10,000 executable lines compared to the unlimited number of lines allowed in the ModelSim-Altera Edition. 

- [Modelsim ASE starter not directly support UVM][https://community.intel.com/t5/Intel-FPGA-Software-Installation/Modelsim-ASE-starter-not-directly-support-UVM/td-p/1288356]

- [ModelSim-Intel® FPGA Edition (includes Starter Edition)][https://www.intel.com/content/www/us/en/software-kit/750666/modelsim-intel-fpgas-standard-edition-software-version-20-1-1.html]

- **ModelSim SE and ModelSim PE** are the versions that support (**UVM**);

- **ModelSim 10.1d (2011)** supports all SystemVerilog/Verilog features except:

      SystemVerilog assertions
      SystemVerilog coverage
      randomize method
      program blocks
          Dave Rich from Mentor does not recomment the use of program blocks for any user: http://go.mentor.com/programblocks

    Out of the above, only the randomize method is used by the UVM library.
    https://eda-playground.readthedocs.io/en/latest/modelsim-uvm.html




## HDL Synthesizers

- Xilinx Vivado Synthesis -> Xilinx FPGAs and Xilinx SoCs
- Synopsys Design Compiler -> ASIC & FPGA
- Cadence Genus 
- Intel Quartus Prime -> Intel FPGA
- Yosys -> ASIC, FPGA, ...










Why English ???

