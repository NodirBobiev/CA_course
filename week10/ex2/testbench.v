module testbench;

// input and output test signals
reg a, b, ci;

wire sum, carry;

// creating the instance of the module we want to test
half_adder ha(a, b, ci, sum, carry);

initial
begin
a = 1'b0;
b = 1'b1;
ci = 1'b0;
#5; // pause (5 units of delay )
a = 1'b1;
b = 1'b1;
ci = 1'b0;
#5; // pause (5 units of delay )
a = 1'b0;
b = 1'b1;
ci = 1'b1;
#5; // pause (5 units of delay )
a = 1'b1;
b = 1'b0;
ci = 1'b0;
#5; // pause (5 units of delay )
a = 1'b0;
b = 1'b0;
ci = 1'b1;
#5; // pause (5 units of delay )
a = 1'b1;
b = 1'b0;
ci = 1'b1;
#5; // pause (5 units of delay )
a = 1'b1;
b = 1'b1;
ci = 1'b1;
#5; // pause (5 units of delay )
a = 1'b0;
b = 1'b0;
ci = 1'b0;
#5; // pause (5 units of delay )

end

// print signal values on every change
initial
$monitor("a= %b b = %b sum = %b carry = %b", a, b, sum, carry);

initial
$dumpvars;

endmodule