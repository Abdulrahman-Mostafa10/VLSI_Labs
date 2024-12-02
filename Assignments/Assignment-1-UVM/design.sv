
interface dut_if;
  logic clock;
  logic reset;
  logic enable;
  logic up_down;
  logic [3:0] counter;
endinterface

`include "uvm_macros.svh"

module dut(dut_if dif);
  import uvm_pkg::*;
  always @(posedge dif.clock)
    begin
      if (dif.reset) begin
        if (dif.up_down) begin
                dif.counter <= 4'b0000;
            end else begin
                dif.counter <= 4'b1111;
            end
        end else begin
          if (dif.enable) begin
            if (dif.up_down) begin
              if (dif.counter != 4'b1111) begin
                        dif.counter <= dif.counter + 1;
                    end else begin
                        dif.counter <= 4'b0000; 
                    end
                end else begin
                  if (dif.counter != 4'b0000) begin
                        dif.counter <= dif.counter - 1;
                    end else begin
                        dif.counter <= 4'b1111; 
                    end
                end
            end else begin
                dif.counter <= dif.counter; 
            end
        end
      
    end
endmodule
