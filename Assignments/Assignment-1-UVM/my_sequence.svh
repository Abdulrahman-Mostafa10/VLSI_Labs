class my_transaction extends uvm_sequence_item;

  `uvm_object_utils(my_transaction)

  rand bit reset;
  rand bit enable;
  rand bit up_down;
  bit[3:0] counter;

  constraint c_reset {
    reset dist {1 := 70, 0 := 30}; 
  }

  constraint c_enable {
    enable dist {1 := 90, 0 := 10};
  }

  constraint c_up_down {
    up_down dist {0 := 60, 1 := 40};
  }
  function new (string name = "");
    super.new(name);
  endfunction

endclass: my_transaction

class my_sequence extends uvm_sequence#(my_transaction);

  `uvm_object_utils(my_sequence)
  integer i;

  function new (string name = "");
    super.new(name);
  endfunction

  task body;
	req = my_transaction::type_id::create("req");
    for (i = 0; i < 50; i = i + 1) begin
      start_item(req);
      
      if (!req.randomize()) begin
      `uvm_error("SEQ", "Randomization failed")
    end

      finish_item(req);
    end
  endtask: body

endclass: my_sequence
