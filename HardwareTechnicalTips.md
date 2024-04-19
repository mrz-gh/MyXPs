
# Verilog/SystemVerilog
-   `include vs package
-   Each module has its own scope

>`ifndef
>
>'define
>
> //Code
>
>`endif

-   xvlog, xelab, xsim - > uvm in vivado





### ModelSim different Versions: (Latest Version of ModelSim Pro : 2021) ==> Deprecated ==> **Questa** is the successor


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
