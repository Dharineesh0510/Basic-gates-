

module tb_d_ff;
    // Declare variables
    reg clk, d;
    wire q;
    
    // Instantiate DFF
    d_ff uut (.clk(clk), .d(d), .q(q));
    
    // Generate clock (50% duty cycle, period=20ns)
    initial begin
        clk = 0;
        forever #10 clk = ~clk;  // Toggle every 10ns
    end
    
    // Generate test stimuli
    initial begin
        // Initialize signals
        d = 0; 
        
        // Stimuli timing (aligned with clock edges)
        #15 d = 1;  // Change before first clock edge (15ns)
        #20 d = 0;  // Hold for 20ns (35ns total)
        #10 d = 1;  // Change after clock edge (45ns total)
        #5  $finish; // End simulation at 50ns
    end
    
    // Generate VCD file for GTKWave
    initial begin
        $dumpfile("dff_waveform.vcd");  // Output waveform file
        $dumpvars(0, tb_d_ff);          // Dump all variables
    end
    
    // Monitor results in console
    initial begin
        $monitor("Time=%0t: clk=%b, d=%b, q=%b", $time, clk, d, q);
    end
endmodule
