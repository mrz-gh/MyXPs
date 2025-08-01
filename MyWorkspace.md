# My Workspace

- Terminology

- ">" means better

## Note Taking Apps

### Excalidraw vs Concepts

| Software   | Infinite Canvas | UX (Smoothness) | Open-Source | Searchability                                  | Compatibility |
| ---------- | --------------- | --------------- | ----------- | ---------------------------------------------- | ------------- |
| Concept    | Yes             | Smoother        | No          | Less                                           | ???           |
| Excalidraw | Yes             | Less smooth     | Yes         | Yes, Compatible with Obsidian's General Search | Obsidian      |

#### Markdown vs MS Word vs LibreOffice vs TeX vs Google Docs

| Office Suite | Open-Source | Usage                                                        | Disadvantages                                   | Markup Language vs WYSIWYG |
| ------------ | ----------- | ------------------------------------------------------------ | ----------------------------------------------- | -------------------------- |
| MS Office    | No          | Widely used in corporate settings                            | Paid, proprietary formats                       | WYSIWYG                    |
| LibreOffice  | Yes         | Good for opening/editing .docx                               | Less polished UI compared to MS Office          | WYSIWYG                    |
| Google Docs  | No (Free)   | Easy cloud access, good collaboration                        | Requires internet, no true offline mode         | WYSIWYG                    |
| Markdown     | Yes         | Fast for everyday writing                                    | Requires some learning, lacks WYSIWYG interface | Markup Language            |
| TeX (LaTeX)  | Yes         | Great for complex documents (e.g., research papers, reports) | Steep learning curve                            | Markup Language            |

- .rst vs .md
- .ansi vs .txt
 [Comparison of Office suites (Wikipedia)](https://en.wikipedia.org/wiki/Comparison_of_office_suites)

**Obsidian + Excalidraw Plugin + .md files (VScode is for coding)**
    - Obsidian is not open-source.  
    - Logseq is an AppImage for Linux, so do not run easily and also its Excalidraw plugin is out-of-date.
    - "VScode", "Obsidian", "Logseq" do not search a keyword in PDFs.
    - obsidian can search through multiple pdfs

LateX for linux -> TeX studio (support RTL in opposite to VScode, also better that Overleaf because it is offline, also very easy to install)

- issues of images in latex ???

- I couldn't Dockerize MS office because it requires to be cracked, my office installer has gui installer but gui is not supported by docker. therefore it canceled it.
- The Linux distribution with the largest community is typically considered to be **Ubuntu**.

## Softwares

### OS

- Dual boot: **Ubuntu** (primary) + **Windows 11** (games)
  - Ubuntu 24.04 (Extended): 11.7 GB, Windows 11 Pro (with drivers): 46 GB
  - Why Ubuntu? **Largest Community**
  - CentOS and RuckyLinux are open-source alternatives for RHEL
    - CentOS is about its end of life (EOL)

### IDEs: **QuestaSim** (Commercial), **MatLab** (Commercial)

### Editor: **VScode** (open-source)

- VScode > notepad++ > notepad,  
- Zed
- Cursor AI: propriety
- .vscode
- .idea -> Proprietry and Huge size

### Internet Browser

  1. **Firefox** -> open-source ✅
  2. MS Edge -> ~~open-source~~
    - MS Edge > Google Chrome
      - (Chromium (core of Chrome & Edge) is open-source)

### Version Control: **Git** (GitHub)

### PDF tools

- PDF annotator -> Writing with Pen
- Adobe Acrobat Pro. -> Commercial

### VPN: **V2ray** (open-source)

- Linux V2ray Client: **Nekoray**
- Windows V2ray Client: **v2rayN**

### Audio & Video Player

  1. **VLC player** ✅ -> supports Linux and Windows
  2. Pot player -> only support MS Win [Pot player vs VLC player](https://moviemaker.minitool.com/moviemaker/potplayer-vs-vlc.html)

- WinRAR, TeXstudio, MikTeX, KMSAutoLite, Quilbot, draw.io rather than MS Visio (Proprietary)

- Microsoft apps on your phone and OneDrive are useless. Instead of them, use “Google Drive''.

## Tips

- **OwnCloud** is open source file sync and share software on your servers.

- **Blocking Internet** of Specific Programs.

- Python: **Miniconda**
  - Use Miniconda for python and data science. Miniconda installation requires the Internet.
  - conda vs venv vs pyenv : conda env are globally accessible unlike .venv environment
 `conda create --name new_env --clone old_env`

- Avoid using **duplicate files** because you get confused over time when you forget what is the difference between them. Instead, use **referencing** with **version control** systems like Git.

- **Commenting** is critical, even when you get back to your code, you can understand it more rapidly.
  - use '' for poper nouns in comments

- TODO.md
- Ultimate **'ReadMe'** format:
  - Outline
  - Overview
    - WHY (Goal)
  - Directory Guide

- Do not use '-' and whitespace in identifiers.

- **terminal** cannot show images and tables like pandas styled DataFrames so it is better to use **jupyter** notebooks

- **openpyxl** is a pure Python library that does not rely on the Excel API or require an installed version of Excel. It directly reads and writes Excel files in the .xlsx format by parsing the underlying XML structure defined by the Office Open XML (OOXML) file format specifications.
Excel is a proprietary spreadsheet software

- `Styler.apply` and `.map` are not compatible with non-unique index or columns.

- in TCL, use ; at the end of each line

- There is no free tier for the OpenAI API. All API requests are charged at a rate based on the amount of data you’re using.

## My Skills

- Tensorflow, Pytorch
- EDA tools: Q-flow, Synopsis Design Compiler and PrimeTime PX
- Questa, Quartus, MatLab
- Verification: System verilog assertions, UVM
- Gem5 to work with multiprocessors systems

- DataBase is much more suitable for working with data, not text files and manually sum and work with them

### Dependancy

- Build tools
  - Multilanguage
  - cross-platform
  - learning curve -> sol : ChatGPT, Great Tutorials

- More **portable and readable** source code: Handling file dependancies with **language built-in dependancy features** such as 'include' and 'import' in verilog

---

### Download Manager

- Motrix (open source): speed : > Firefox
  - Speed: IDM > Firefox (the difference is very high, Why ???)

---

- commit ID can be used as suffix identifier of files.

My projects:

- CPU:

  1. ARM Implementations
      - ARMish_MultiCycle: A multi-cycle implementation of an ARM-like CPU.
      - ARM_Pipeline_WithCache_FullForwarding_WithControlHazardHandling: A pipelined ARM CPU with cache, full forwarding, and control hazard handling.

  2. MIPS Implementations

      - MIPS_SingleCycle: A basic single-cycle implementation of a MIPS CPU.

      - MIPS_SingleCycle_MoreInstructions: An extended single-cycle MIPS CPU supporting additional instructions.

      - MIPS_Pipeline_FullForwarding_NoControlHazardHandling: A pipelined MIPS CPU with full forwarding but no control hazard handling.

      - MIPS_Pipeline_FullForwarding_WithControlHazardHandling: A pipelined MIPS CPU with full forwarding and control hazard handling.

- Restoring Division and Non-Restoring Division

- Gate-level:

  - 2-input CMOS NAND

  - CMOS Tri-State Buffer

  - 4- to-1 MUX

  - Tri-State Buffer

  - barrel shifter

  - One’s counter

- Shift-register, D-FF, D-latch, SR-latch, LFSR

- Mealy, Moore machine of sequence detector

- 32-bit floating-point multiplier

- 24-bit sequential multiplier

- Pattern finder using convolution block with Avalon Master and Slave interface

- Gcd VHDL

- CPA, CSK, CLA, PPA

- Residue-7 VHDL

- VAM16 Multiplier

- FIR filter

- ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXfbxbpUQ97Tlxw8_c0hroNOKdzPbPphF0HDZguBEEjBJDx1VyOVJdM05j6_m70Hu1awBTFkTxQ-O5sDkFexAg5oOwsLUz5ZKN5xJwt3Tyzz5EjUPtnxzXX49iskYIrClEAWrx2VOA?key=dl5wJ8gl7otU9RvoL_M3dw)

- Audio player with NIOS II using only software

- FIR filter with custom instruction

- FIR filter accelerator

- Quantized Autoencoder Verilog

- Quantized CNN verilog

- Binarized transformer and pruning