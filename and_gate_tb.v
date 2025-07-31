module and_gate_tb;
    reg a, b;
    wire y;
    
    // Instantiate the AND gate
    and_gate uut (.a(a), .b(b), .y(y));
    
    // Initialize VCD dumping
    initial begin
        $dumpfile("and_gate.vcd");  // Output VCD file
        $dumpvars(0, and_gate_tb);   // Dump all signals in the testbench
    end
    
    // Stimulus
    initial begin
        $monitor("Time = %0t: a = %b, b = %b, y = %b", $time, a, b, y);
        
        // Test all input combinations
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        
        $finish;
    end
endmodule
