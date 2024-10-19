interface dut_if;
  logic clock;
  logic [3:0] in0;
  logic [3:0] out0;
endinterface

`include "uvm_macros.svh"

module dut(dut_if dif);
  import uvm_pkg::*;
  always @(posedge dif.clock) begin
    dif.out0 = dif.in0 + 3;
    
      `uvm_info("DUT",
                $sformatf("Received bcd=%4b, excess3=%4b",
                          dif.in0, dif.out0), UVM_MEDIUM)
  end
endmodule