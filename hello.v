module hello;

  initial begin
    $display("Hello, World!");
    $display("This is my first Verilog program!");
    #10 $finish;   
  end

endmodule
