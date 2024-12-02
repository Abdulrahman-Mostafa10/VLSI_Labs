class my_coverage extends uvm_subscriber #(my_transaction);
    `uvm_component_utils(my_coverage)

    my_transaction tr;
    covergroup cg;
        coverpoint tr.enable {
            bins enable_on = {1};
            bins enable_off = {0};
        }

        coverpoint tr.up_down {
            bins up_counting = {1};
            bins down_counting = {0};
        }

        coverpoint tr.reset {
            bins reset_active = {1};
            bins reset_inactive = {0};
        }

        coverpoint tr.count {
            bins all_values[] = {[0:15]};
        }

        coverpoint tr.count {
        bins fifteen2zero    = (15=>0);
        bins zero2fifteen     = (0=>15);
   }
    endgroup

    function new(string name, uvm_component parent);
        super.new(name, parent);
        cg = new();
    endfunction

    virtual function void write(input TransactionItem t);
        tr = t;
        cg.sample();
    endfunction:write
    virtual function void report_phase(uvm_phase phase);
     `uvm_info("DEBUG",$sformatf("Coverage for = %6.2f%%\n",cg.get_coverage()),UVM_NONE)
    endfunction
  
endclass : my_coverage