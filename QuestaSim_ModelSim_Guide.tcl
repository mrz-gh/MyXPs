proc init {} {
    ### Deleting previous files from the library 'work'
    if [file exists work] {
        vdel -all
    }
    set workspace_name work


    ### Creates a library in ModelSim (It can be seen through the 'library' tab in ModelSim)
    vlib $workspace_name

    ### First of all, we need to compile the source code of 'UVM-core'
    vlog -work $workspace_name ./uvm-core-2020.3.0/src/uvm_pkg.sv +incdir+./uvm-core-2020.3.0/src

    ### Compile 
    vlog -work $workspace_name ./design.sv
}

proc working_with_project {} {

    project open v0.mpf; # enter the name of project
    project addfolder RTL;
    project addfolder TB;


    project addfile ../../rtl/Alu.v v RTL
    project addfile ../../rtl/Shifter.v v RTL
    project addfile ../tb/alu_if.sv sv TB
    project addfile ../tb/alu_tb.sv sv TB

}

proc init_sim_ModelSim {} {
    ### Compile testbench
    vlog -work $workspace_name -stats=none ./testbench.sv +incdir+./uvm-core-2020.3.0/src


    vsim -work $workspace_name top
    # vsim -c xge_test_top
}

proc init_sim_QuestaSim {} {

    ### Code coverage snippest
    ### NOTE: just using '+cover' with 'vopt' works for me, not others

    set testbench_module_name alu_tb

    project compileall

    vlog -sv ../../rtl/*.sv 

    ### It is necessary to optimize testbench and then simulate it in QuestaSim
    vopt +cover=bcesxf $testbench_module_name -o alu_tb_opt1

    vsim -coverage alu_tb_opt1



    add_desired_signals

    run -all

    restart

}


proc add_desired_signals {} {
    add wave -position insertpoint  \
    sim:/test_sayac_top/clk;
    add wave -position insertpoint  \
    sim:/test_sayac_top/rst;
    add wave -position insertpoint  \
    sim:/test_sayac_top/SAYAC/DataPath/opcode;
    add wave -position insertpoint  \
    sim:/test_sayac_top/SAYAC/DataPath/Instruction;
    add wave -position insertpoint  \
    sim:/test_sayac_top/SAYAC/DataPath/outPC;
    add wave -position insertpoint  \
    sim:/test_sayac_top/SAYAC/Controller/pstate;
} 


proc write_vcd {word number2} {

    set vcdfolder "D:/Education/Undergrad_Proj/Proj/SAYAC/ModelSim/Benchmarks";     # Replace with the actual folder path
    set vcdfilepath [file join $vcdfolder "$word.vcd"];
        

    vcd file $vcdfilepath;
    vcd add -r test_sayac_top/SAYAC/*
    run $number2 ns

    quit -sim; ### must quit simulation to close the vcd file in the simulation environment

}

proc coverage_report {} {
    #### Coverage data saving
    coverage save -assert -directive -cvg -codeAll full.ucdb;

    #### Coverage HTML Report 
    coverage report -html -output covhtmlreportfull -annotate -details -assert -directive -cvg -codeAll -threshL 50 -threshH 90;
}


 



