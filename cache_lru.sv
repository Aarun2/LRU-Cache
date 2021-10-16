module cache_lru 
    #(parameter  DEPTH = 7, parameter  TAG_BITS = 30, parameter  NUM_BLOCKS = 4,
      parameter  BLOCK_SIZE_BYTES = 8)
    (clk, rst_n, rd, wr, addr, data);

    localparam DATA_BITS = TAG_BITS + (BLOCK_SIZE_BYTES * NUM_BLOCKS * 8);
    localparam ADDR_BITS = TAG_BITS+$clog2(NUM_BLOCKS);

    input clk, rst_n, rd, wr;
    input [ADDR_BITS-1:0] addr; // todo try thi
    output [(BLOCK_SIZE_BYTES*8)-1:0] data;

    logic [DATA_BITS-1:0] storage [DEPTH-1:0];
    logic [$clog2(DEPTH):0] next_read_ind, read_ind;

    // what is the next ind to read from //
    always_ff @(posedge clk, negedge rst_n)
        if (!rst_n)
            read_ind <= DEPTH + 1;
        else if ()
            read_ind <= next_read_ind;

    // is there a tag match //
    always_comb
        for (int i = 0; i < DEPTH; i++) begin
            if (storage[i][DATA_BITS-1:DATA_BITS-TAG_BITS] == addr[ADDR_BITS-1:ADDR_BITS-TAG_BITS])
                next_read_ind = i;
        end



endmodule