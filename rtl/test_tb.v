`include "defines.v"
 module test_tb;
 reg reset;
 reg clock;
reg clockn;
 wire Stat;
 
 y86seq y86(clock,reset,clockn,Stat);

initial begin
$dumpfile("y86.vcd");
$dumpvars(0,y86);  
end

always #10
begin
   clock =~clock;
end

initial begin
#0 reset=1;clock=1;
#60 reset=0;

#3000 $finish;
end

//initial   begin
//  $dumpportsall;
//  $dumpfile("y86.vcd");
//  $dumpvars;
//end

// 
//initial begin
//    $vcdpluson();
//end
endmodule




