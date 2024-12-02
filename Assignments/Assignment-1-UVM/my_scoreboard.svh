class my_scoreboard extends uvm_scoreboard;

  `uvm_component_utils(my_scoreboard)
  uvm_analysis_imp #(my_transaction, my_scoreboard) ap_imp;

  int expected_counter = 0; 
  bit reset_state = 0;   
  bit enable_state = 0;  
  bit up_down_state = 0;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    ap_imp = new ("ap_imp", this);
  endfunction

  virtual function void write(my_transaction pkt);
    if (reset_state) begin
      if(up_down_state)
        expected_counter = 0;
      else
        expected_counter = 15;
        
    end else if (enable_state) begin
      if (up_down_state) begin
        if (expected_counter == 15) begin
          expected_counter = 0;
          end else begin
          expected_counter=expected_counter+1;
          end
      end else begin
        if (expected_counter == 0) begin
          expected_counter = 15;
          end else begin
          expected_counter=expected_counter-1;
          end 
      end
    end 
    
    if (pkt.counter !== expected_counter) begin
      `uvm_error("SCOREBOARD", $sformatf("Mismatch detected: DUT counter=%0d, Expected counter=%0d at reset=%0d",
                 pkt.counter, expected_counter,pkt.reset))
//     end else begin
//       `uvm_info("SCOREBOARD", $sformatf("Match: DUT counter=%0d, Expected counter=%0d at reset=%0d",
//                  pkt.counter, expected_counter,pkt.reset), UVM_LOW)
    end

    reset_state = pkt.reset;
    enable_state = pkt.enable;
    up_down_state = pkt.up_down;
  endfunction

endclass : my_scoreboard
