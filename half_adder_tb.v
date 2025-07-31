module tb_half_adder;
    
    reg a;
    reg b;
    
    
    wire sum;
    wire carry;
    
    
    half_adder uut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );
    
    initial begin
        
        $dumpfile("half_adder_wave.vcd");  
        $dumpvars(0, tb_half_adder);       
       
        $display("\nHalf Adder Testbench");
        $display("-------------------");
        $display("Time\ta\tb\t|\tsum\tcarry");
        $display("-------------------------------");
        
      
        a=0; b=0; #10; $display("%4t\t%b\t%b\t|\t%b\t%b", $time, a, b, sum, carry);
        a=0; b=1; #10; $display("%4t\t%b\t%b\t|\t%b\t%b", $time, a, b, sum, carry);
        a=1; b=0; #10; $display("%4t\t%b\t%b\t|\t%b\t%b", $time, a, b, sum, carry);
        a=1; b=1; #10; $display("%4t\t%b\t%b\t|\t%b\t%b", $time, a, b, sum, carry);
        
        #10 $display("\nSimulation completed");
        $finish;
    end
endmodule
