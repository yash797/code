%Simulate Shannon fano/ Huffman code using MATLAB/Octave. Determine Efficiency and redundancy for the given Source Coding technique.

clear all;
clc;
pkg load communications;

list_symb = [1 2 3 4 ];
list_proba = [0.5 0.25 0.125 0.125];
dict = shannonfanodict(list_symb,list_proba); 
disp(dict)
%dict = shannonfanodict(list_symb,list_proba,0,true);
%disp(dict);

inputSig = [3 3 1 1 1 2 3 3 4];
code = shannonfanoenco(inputSig,dict); 
disp(code);

clear all;
pkg load communications
disp("Hello World");

list_symb = [1 2 3 4 ];
p = [0.5, 0.25,0.125,0.125];

dict = huffmandict(list_symb,p); 
disp(dict)
%dict = huffmandict(list_symb,p,0,true);
%disp(dict);
inputSig = [1 2 3 3];
code = huffmanenco(inputSig,dict);
disp(code);

