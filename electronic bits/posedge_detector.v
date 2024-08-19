
module pos_edge_det ( input sig,            // Input signal for which positive edge has to be detected
                      input clk,            // Input signal for clock
                      input rstn,
                      output pe);           // Output signal that gives a pulse when a positive edge occurs
 //Write Your Code Here
 reg sig_delay ;

 always @(posedge clk ) begin
    if (!rstn) begin
        sig_delay = 1'b0; // here we set the the delay signal as 0 when the reset signal is togled
    end
    else begin
        sig_delay = sig ;
     end
 end
assign pe = ~sig_delay & sig ;
endmodule 