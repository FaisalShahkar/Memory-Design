module dual_port_memory #(parameter DATA_WIDTH = 32, parameter ADDR_WIDTH = 8) (
    input wire clk,
    input wire wr_en,//write enable for Port A
    input wire rd_en,//Read enable for Port B  
    input wire [ADDR_WIDTH-1:0] wr_addr,//write Address input for Port A
    input wire [ADDR_WIDTH-1:0] rd_addr,//read Address input for Port B
    input wire [DATA_WIDTH-1:0] wr_data,//write data port A
    output reg [DATA_WIDTH-1:0] rd_data//read data port B
);

  reg [DATA_WIDTH-1:0] mem [2^ADDR_WIDTH-1:0]; //32x8 memory size
 // Read operation for Port B
always @(posedge clk) 
  begin
    if (rd_en) 
      begin
        rd_data <= mem[rd_addr];
      end
end
  
 // Write operation for Port A 
always @(posedge clk) 
  begin
    if (wr_en) 
      begin
      	mem[wr_addr] <= wr_data;
      end
end
endmodule
