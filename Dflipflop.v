module d_ff (
    input clk,      // Clock
    input d,        // Data input
    output reg q     // Output (registered)
);
    always @(posedge clk) begin
        q <= d;     // Update output on clock edge
    end
endmodule
