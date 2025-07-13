module tb_encoder_4to2;
  reg [3:0] in;
  wire [1:0] out;
  encoder_4to2 uut (.in(in), .out(out));
  
  initial begin
    $dumpfile("encoder_4to2.vcd");
    $dumpvars;
    $monitor("Time = %0t | in = %b | out = %b", $time, in, out);
    in = 4'b0001; #10;
    in = 4'b0010; #10;
    in = 4'b0100; #10;
    in = 4'b1000; #10;
    in = 4'b0000; #10;
    
    $finish;
  end
endmodule
