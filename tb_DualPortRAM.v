module dual_port_memory_tb;
  // Parameters
  parameter DATA_WIDTH = 32;
  parameter ADDR_WIDTH = 8;
  reg clk;
  reg wr_en, rd_en;
  reg [ADDR_WIDTH-1:0] wr_addr, rd_addr;
  reg [DATA_WIDTH-1:0] wr_data;
  wire [DATA_WIDTH-1:0] rd_data;

  dual_port_memory #(
    .DATA_WIDTH(DATA_WIDTH),
    .ADDR_WIDTH(ADDR_WIDTH)
  ) DUT (
    .clk(clk),
    .wr_en(wr_en),
    .rd_en(rd_en),
    .wr_addr(wr_addr),
    .rd_addr(rd_addr),
    .wr_data(wr_data),
    .rd_data(rd_data)
  );

  // Clock generation
  always #5 clk = ~clk;
  
  initial begin
    clk = 0;
    wr_en = 0;
    rd_en = 0;
    wr_addr = 0;
    rd_addr = 0;
    wr_data = 0;
  
  end
  initial begin
    // Write data to memory
    wr_en = 1;
    wr_addr = 3; // Example address
    wr_data = 10; // Example data
    #10;
    wr_en = 0;

    // Read data from memory
    rd_en = 1;
    rd_addr = 3; // Same address as written
    #10;
    rd_en = 0;
  end
  
  initial begin 
  $dumpfile("dump.vcd");
  $dumpvars();
  #30
  $finish; 
  end
 
endmodule