class my_driver extends uvm_driver #(my_transaction);

  `uvm_component_utils(my_driver)

  virtual dut_if dut_vif;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    if(!uvm_config_db#(virtual dut_if)::get(this, "", "dut_vif", dut_vif)) 		begin
      `uvm_error("", "uvm_config_db::get failed")
    end
  endfunction 

  task run_phase(uvm_phase phase);
    @(posedge dut_vif.clock);
    dut_vif.reset = 1;
    
    forever begin
      seq_item_port.get_next_item(req);
      @(negedge dut_vif.clock);
      
      dut_vif.reset  = req.reset;
      dut_vif.enable = req.enable;
      dut_vif.up_down = req.up_down;
      @(negedge dut_vif.clock);
      @(negedge dut_vif.clock);
      @(negedge dut_vif.clock);
      `uvm_info("MY_DRIVER", $sformatf(" at negedge sent counter=%0d at reset=%b enable=%b up_down=%b", req.counter, req.reset, req.enable,       
        req.up_down),UVM_LOW)       

      seq_item_port.item_done();
    end
  endtask

endclass: my_driver
