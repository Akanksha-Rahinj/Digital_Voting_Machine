module voting_machine(
    input clk,
    input reset,
    input vote_a,
    input vote_b,
    output reg [3:0] count_a,
    output reg [3:0] count_b
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        count_a <= 0;
        count_b <= 0;
    end
    else begin
        if (vote_a)
            count_a <= count_a + 1;
        if (vote_b)
            count_b <= count_b + 1;
    end
end

endmodule