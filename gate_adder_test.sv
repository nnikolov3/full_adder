module gate_adder_test;
reg a;
reg b;
reg ci;
wire sum;
wire co;
  
gate_adder uut (.a(a),.b(b),.ci(ci),.sum(sum),.co(co) ); 
initial begin

#10 a=0; b=0 ;ci=0;

#10 a=0; b=0; ci=1;

#10 a=0; b=1; ci=0;

#10 a=0; b=1; ci=1;

#10 a=1; b=0; ci=0;

#10 a=1; b=0; ci=1;

#10 a=1; b=1; ci=0;

#10 a=1; b=1; ci=1;

#10$stop;

end
  
endmodule