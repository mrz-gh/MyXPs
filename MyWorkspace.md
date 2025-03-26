# My Workspace



### Terminology:
  - ">" means better

## Note Taking Apps

#### Excalidraw vs Concepts

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

LateX for linux -> TeX studio (support RTL in opposite to VScode, also better that Overleaf because it is offline, also very easy to install)

- I couldn't Dockerize MS office because it requires to be cracked, my office installer has gui installer but gui is not supported by docker. therefore it canceled it.
- The Linux distribution with the largest community is typically considered to be **Ubuntu**.
## Softwares

##### OS:
  - Dual boot: **Ubuntu** (primary) + **Windows 11** (games)
    - Ubuntu 24.04 (Extended): 11.7 GB, Windows 11 Pro (with drivers): 46 GB
    - Why Ubuntu? **Largest Community**
    - CentOS and RuckyLinux are open-source alternatives for RHEL
      - CentOS is about its end of life (EOL)
 
##### IDEs: **QuestaSim** (Commercial), **MatLab** (Commercial)
##### Editor: **VScode** (open-source)
  - VScode > notepad++ > notepad,  

##### Internet Browser:
  1. **Firefox** -> open-source
  2. MS Edge -> ~~open-source~~
    - MS Edge > Google Chrome
      - (Chromium (core of Chrome & Edge) is open-source)

##### Version Control: **Git** (GitHub)

##### PDF tools:
  - PDF annotator -> Writing with Pen
  - Adobe Acrobat Pro. -> Commercial

##### VPN: **V2ray** (open-source)
  - Linux V2ray Client: **Nekoray**
  - Windows V2ray Client: **v2rayN**

##### Audio & Video Player:
  1. **VLC player** -> supports Linux and Windows
  2. Pot player -> only support MS Win [Pot player vs VLC player](https://moviemaker.minitool.com/moviemaker/potplayer-vs-vlc.html)

- WinRAR, TeXstudio, MikTeX, KMSAutoLite, Quilbot, draw.io rather than MS Visio (Commercial)

- Microsoft apps on your phone and OneDrive are useless. Instead of them, use “Google Drive''.

## Tips

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

## Automation

- CLI tools > GUI tools

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
Why English ???

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

vpn
		1.Hide from ISP,..
		2.Tunneling into a remote network

- DNS Filter
- Warp
- fast and stable Network in Iran
  - Warp with Irancell & Rightel : do not work 
  - Irancell (Modem) is unstable and slow in Kashmar compared to IR-MCI



- commit ID can be used as suffix identifier of files.