
module mux_tb;
    reg [3:0] data_in;
    reg [1:0] select;
    wire out;
    
    mux_4to1 dut(data_in, select, out);
    
    initial begin
        
        $dumpfile("waves.vcd");
        $dumpvars(0, mux_tb);  
       
        data_in = 4'b0000; select = 2'b00;
        #10 data_in = 4'b1010;
        #10 select = 2'b01;
        #10 select = 2'b10;
        #10 $finish;
    end
endmodule
