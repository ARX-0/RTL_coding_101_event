module odd_counter (
  input     wire        clk,
  input     wire        reset,
  output    reg[7:0] cnt_o
);
//Write your code here
//Do not delete dafault code
reg [7:0] counter = 8'd0;
always @ (posedge clk)
begin

if(!reset)begin 
counter = counter + 1'b1;
if(counter%2 != 'd0)
begin 
cnt_o = cnt_o + 'd2 ; 
end
end 

else begin 
cnt_o = 'd1;
end

end
endmodule
//////////////////code review (above is the code it typed it had a delay X on the start i dont know why lets see)/////////////////

module odd_counter (
  input     wire        clk,
  input     wire        reset,
  output    reg[7:0] cnt_o
);
//Write your code here
//Do not delete dafault code
reg [7:0] next_count;
always @ (posedge clk or posedge reset)
begin

if(!reset)begin 
cnt_o = next_count ;
end 

else

begin 
cnt_o =8'd1;
end

end

assign next_count = cnt_o + 8'h2;
endmodule
