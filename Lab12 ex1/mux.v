module mux
(
	input [31:0] in1, in2, in3,
	input [6:0] func,
	output reg [31:0] out
);
always@(in1, in2, in3, out) begin
	case(func)
		6'b100000: begin
			out <= in1;
		end
		6'b100010: begin
			out <= in2;
		end
		6'b000010: begin
			out <= in3;
		end
	endcase
end
endmodule
