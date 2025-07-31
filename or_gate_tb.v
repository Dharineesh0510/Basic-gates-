module or_gate_tb;
    reg a, b;
    wire y;
    
    // Instantiate the OR gate
    or_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );
    
    initial begin
        // Create waveform dump
        $dumpfile("or_gate_wave.vcd");
        $dumpvars(0, or_gate_tb);
        
        // Test all input combinations
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        
        $finish;
    end
    
    initial begin
        $monitor("Time = %0t: a = %b, b = %b, y = %b", $time, a, b, y);
    end
endmodule
