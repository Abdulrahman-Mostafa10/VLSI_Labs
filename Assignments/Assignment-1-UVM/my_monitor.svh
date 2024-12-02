class my_monitor extends uvm_monitor;
  `uvm_component_utils(my_monitor)
  virtual dut_if dut_vif;
  uvm_analysis_port #(my_transaction) mon_port;
  
  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    if(!uvm_config_db#(virtual dut_if)::get(this, "", "dut_vif", dut_vif)) 		begin
      `uvm_error("", "uvm_config_db::get failed")
    end
    mon_port = new("mon_port", this);
  endfunction
  
  task run_phase(uvm_phase phase);
    my_transaction pkt;
    bit[3:0] count_prev = 4'bxxxx;
    
    forever begin
      @(posedge dut_vif.clock)
        pkt = my_transaction::type_id::create("pkt");
        pkt.counter = dut_vif.counter;
        pkt.reset = dut_vif.reset;
        pkt.enable = dut_vif.enable;
        pkt.up_down = dut_vif.up_down;
        
      if (dut_vif.counter !== count_prev) begin
        `uvm_info("MY_MONITOR", $sformatf(" at posedge Captured counter=%0d at reset=%b enable=%b up_down=%b", pkt.counter, pkt.reset, pkt.enable,       
        pkt.up_down),UVM_LOW)
      end
        
        mon_port.write(pkt);
        count_prev = dut_vif.counter;
    end
  endtask
endclass: my_monitor