disp('please input the values of a and b respectively (4 bit)')
for i=1:4
    a(i) = input(' ');
end
for i=1:4
    b(i) = input(' ');
    if b(i) == 0
        b(i) = 1;
    else
        b(i) = 0;
    end
    disp(b)
end
carry = 1;
for i =4:-1:1
    [sum,carry] = adder(b(i),0,carry);
    b(i) = sum;
end
disp(b)
carry = 0;
cin = 0;
for i =4:-1:1
    [sum,carry] = adder(a(i),b(i),carry);
    [sum,carry] = adder(a(i),b(i),cin);
    s(i) = sum;
end
if carry == 0
    for i=1:4
        if s(i) ==0
            s(i) = 1;
        else
            s(i) = 0;
        end
    end
    carry = 1;
    for i =4:-1:1
        [sum,carry] = adder(b(i),0,carry);
    b(i) = sum;
    end
    cin = carry;
end
fprintf("%d ",s);
fprintf("\n");
subplot(3,3,1);
stem(a,'r');
subplot(3,3,2);
stem(b,'b');
subplot(3,1,2);
stem(s,'g');
fprintf("%d",carry);