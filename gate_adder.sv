// Code your design here
//Nikolay Nikolov
//Project 1
module gate_adder
(input  wire a, b, ci,
 output wire sum, co
);

//wires
wire not_a, not_b, not_ci, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
//***************************
//Inverters
not inverter0 (not_a,a);
not inverter1 (not_b,b);
not inverter2 (not_ci,ci);
//***************************
//Gates for sum
//cin(a'b' + ab);
and g1	(n1,not_a, not_b);
and g2	(n2, a, b);
or  g3	(n3, n1,n2);

//sum ***********************
//cin'(a'b +ab');
and g4	(n4, not_a, b);
and g5	(n5, a, not_b);
or  g6  (n6, n4, n5);

// cin(a'b' + ab)+cin'(a'b +ab');
and g7	(n7, ci, n3);
and g8	(n8, not_ci, n6);
or  g9	(sum, n7, n8);
//****************************

// carry out*****************
//A B + A C-IN + B C-IN (A + A’)
and g10	(n10, a, b);
and g11	(n11, a, ci);
and g12	(n12, b, ci);
or  g13	(co, n10,n11,n12);
//****************************
endmodule:gate_adder
