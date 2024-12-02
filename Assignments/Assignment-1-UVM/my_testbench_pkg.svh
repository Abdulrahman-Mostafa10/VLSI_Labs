package my_testbench_pkg;
  import uvm_pkg::*;
  
  `include "my_sequence.svh"
  `include "my_driver.svh"
  `include "my_monitor.svh"
  `include "my_scoreboard.svh"
//   `include "my_coverage.svh"

  
  class my_agent extends uvm_agent;
    `uvm_component_utils(my_agent)
    
    my_driver driver;
    my_monitor monitor;
    uvm_sequencer#(my_transaction) sequencer;
    my_scoreboard scoreboard;
//     my_coverage coverage;
    function new(string name, uvm_component parent);
      super.new(name, parent);
    endfunction
    
    function void build_phase(uvm_phase phase);
      driver = my_driver ::type_id::create("driver", this);
      monitor = my_monitor::type_id::create("monitor", this);
      sequencer =
        uvm_sequencer#(my_transaction)::type_id::create("sequencer", this);
      scoreboard = my_scoreboard::type_id::create("scoreboard", this);
      
//           coverage= my_coverage::type_id::create("cvg",this);

    endfunction    
    
    function void connect_phase(uvm_phase phase);
      driver.seq_item_port.connect(sequencer.seq_item_export);
      monitor.mon_port.connect(scoreboard.ap_imp);
    endfunction
    
    task run_phase(uvm_phase phase);
      phase.raise_objection(this);
      begin
        my_sequence seq;
        seq = my_sequence::type_id::create("seq");
        seq.start(sequencer);
      end
      phase.drop_objection(this);
    endtask

  endclass
  
  class my_env extends uvm_env;
    `uvm_component_utils(my_env)
    
    my_agent agent;

    function new(string name, uvm_component parent);
      super.new(name, parent);
    endfunction
    
    function void build_phase(uvm_phase phase);
      agent = my_agent::type_id::create("agent", this);
    endfunction

  endclass
  
  class my_test extends uvm_test;
    `uvm_component_utils(my_test)
    
    my_env env;

    function new(string name, uvm_component parent);
      super.new(name, parent);
    endfunction
    
    function void build_phase(uvm_phase phase);
      env = my_env::type_id::create("env", this);
    endfunction
    
    task run_phase(uvm_phase phase);
      phase.raise_objection(this);
      #10;
      phase.drop_objection(this);
    endtask

  endclass
  
endpackage