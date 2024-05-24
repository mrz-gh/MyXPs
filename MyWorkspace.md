Last Update: May 1

# My Workspace

One of my core beliefs:
  everything is relative =>
  Compare & Contrast based on technical features (not vague features) =>
  Need tables to do that

## Note Taking Apps

infinitive canvas: **Concepts**

>### Excalidraw vs Concepts
>
> Software | UX (being smooth) | open-source | Searchability | Compatibility |
> ----------|------------|-----------|----------|--------|
> Concept | Smoother | No | less | | ??? |
> Excalidraw | less smooth | YES | YES & Compatible with General Search of **Obsidian** |  Obsidian |

> #### Markdown vs MS Word vs LibreOffice vs TeX vs gdoc
>
> Office suite | open-source | Usage | Disadv |Markup Language vs WYSIWYG
> -------------|-------------|-------| ------- | --------
> MS office    |  NO         |       |         | WYSIWYG |
> LibreOffice  |  YES        | good for opening office documents (.docx) | | WYSIWYG
> gdoc(google doc) | NO (free) |My Journals: Google Drive (**Easier to access** than **.md** files on the **phone**)      | No offline | WYSIWYG |
> Markdown     |  YES        | fast creation (every-day use) | | Markup Language |
> TeX          |  YES        | complex docs(research papers, report, etc.) | |Markup Language
>

> [Comparison of Office suites (Wikipedia)](https://en.wikipedia.org/wiki/Comparison_of_office_suites)

## Softwares

- Internet Browser: Firefox -> open-source
                    - Google Chrome & MS Edge -> x open-source (Chromium (core of Chrome & Edge) is open-source)

- Version Control: Git (GitHub)

- IDEs: VScode(open-source), QuestaSim (Commercial), MatLab (Commercial)

- PDF tools:
  - PDF annotator -> Writing with Pen
  - Adobe Acrobat Pro. -> Commercial

- VPN: V2ray (open-source)
  - linux: V2ray Client: Nekoray

- Audio & Video Player: VLC player -> supports linux and Windows
  - Pot player -> only support MS Win [Pot player vs VLC player](https://moviemaker.minitool.com/moviemaker/potplayer-vs-vlc.html)

- WinRAR, TeXstudio, MikTeX, KMSAutoLite, Quilbot, draw.io rather than MS Visio (Commercial)

- Microsoft apps on your phone and OneDrive are useless. Instead of them, use “Google Drive''.

- Callback vs calling a func within another function
- CentOS and RuckyLinux are open-source alternatives for RHEL
  - CentOS is about its end of life (EOL)

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
    - WHY (Goal)
  - Directory Guide

- Do not use '-' and whitespace in identifiers.

- **terminal** cannot show images and tables like pandas styled DataFrames so it is better to use **jupyter** notebooks

- **openpyxl** is a pure Python library that does not rely on the Excel API or require an installed version of Excel. It directly reads and writes Excel files in the .xlsx format by parsing the underlying XML structure defined by the Office Open XML (OOXML) file format specifications.
Excel is a proprietary spreadsheet software

- `Styler.apply` and `.map` are not compatible with non-unique index or columns.

- in TCL, use ; at the end of each line

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

- Speed: IDM > Firefox (the difference is very high, Why ???)
- Motrix (open source ) speed ???

---
Why English ???

## Network (Necessary in Iran)

Here's a comparison of the three:

| Feature | Sockets | HTTP | FTP |
| ------ | ------ | ------ | ------ |
| Purpose | General-purpose process-to-process communication | Web data transfer | File transfer |
| Level | Low-level (networking) | Application-level | Application-level |
| Protocol Type | Connection-oriented (TCP) or connectionless (UDP) | Connection-oriented | Connection-oriented |
| Usage | Flexible, customizable | Web browsing, data retrieval | File upload/download, file management |
| Security | Depends on implementation | Uses HTTPS for secure transmission | Uses encryption and authentication |
| Data Format | Raw data, customizable | Text, HTML, images, videos, etc. | Files |
| Common Ports | TCP: 80, 443; UDP: 53, 123 | TCP: 80, 443 | TCP: 20 (data), 21 (control) |
