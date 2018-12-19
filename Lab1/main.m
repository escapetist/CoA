disp('please input the values of a and b respectively (4 bit)')
for i=1:4
    a(i) = input(' ');
end
for i=1:4
    b(i) = input(' ');
end
cin = 0;
for i =4:-1:1
    [sum,carry] = adder(a(i),b(i),cin);
    s(i) = sum;
    cin = carry;
end
   display(s);
   display(carry)
   
