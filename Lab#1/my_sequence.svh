class my_transaction extends uvm_sequence_item;

  `uvm_object_utils(my_transaction)

  int in0;
  int out0;

  function new (string name = "");
    super.new(name);
  endfunction

endclass: my_transaction

class my_sequence extends uvm_sequence#(my_transaction);

  `uvm_object_utils(my_sequence)

  function new (string name = "");
    super.new(name);
  endfunction

  task body;
     int i;
    for (i = 0; i < 10; i=i+1) begin
      req = my_transaction::type_id::create("req");
      start_item(req);
      req.in0 = i;
      finish_item(req);
    end
  endtask: body
  
endclass: my_sequence