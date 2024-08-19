module neg_edge_det ( input sig,            // Input signal for which positive edge has to be detected
                      input clk,            // Input signal for clock
                      input rstn,
                      output ne);           // Output signal that gives a pulse when a positive edge occurs
//Write Your Code Here 
//Do not remove default code        

reg delay ;

always @(posedge clk) begin
    if (!rstn) begin
        delay = 1'b0;  // THE DELAY SIGNAL IS SET TO 0 IF RESET IS TOGGLED
    end
    else begin 
        delay = sig ; // REPLICATE WITH ONLY 1 UNIT OF DELAY THATS IT 
     end
end
assign ne = ~sig & delay;
endmodule 