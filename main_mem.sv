module main_mem
    #(parameter ADDR_BITS = 32, parameter  WORD_SIZE_BYTES = 8)
    ();
    input clk, rst_n;

    localparam WORD_SIZE_BITS = WORD_SIZE_BYTES * 8;
    localparam DEPTH = 2 ** ADDR_BITS;

    logic [WORD_SIZE_BITS-1:0] storage [DEPTH-1:0];

    


endmodule