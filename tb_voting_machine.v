module tb_voting_machine;

reg clk;
reg reset;
reg vote_a;
reg vote_b;
wire [3:0] count_a;
wire [3:0] count_b;

voting_machine uut (
    .clk(clk),
    .reset(reset),
    .vote_a(vote_a),
    .vote_b(vote_b),
    .count_a(count_a),
    .count_b(count_b)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    $dumpfile("vote.vcd");
    $dumpvars(0, tb_voting_machine);

    reset = 1; vote_a = 0; vote_b = 0;
    #10 reset = 0;

    #10 vote_a = 1; #10 vote_a = 0;
    #10 vote_b = 1; #10 vote_b = 0;
    #10 vote_a = 1; #10 vote_a = 0;

    #50 $finish;
end

endmodule