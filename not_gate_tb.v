module not_gate_tb;
    reg a;
    wire y;
    
    // Instantiate the NOT gate
    not_gate uut (
        .a(a),
        .y(y)
    );
    
    initial begin
        // Create waveform dump
        $dumpfile("not_gate_wave.vcd");
        $dumpvars(0, not_gate_tb);
        
        // Test sequence
        a = 0;
        #10;
        a = 1;
        #10;
        a = 0;
        #10;
        a = 1;
        #10;
        $finish;
    end
    
    initial begin
        $monitor("Time = %0t: a = %b, y = %b", $time, a, y);
    end
endmodule
