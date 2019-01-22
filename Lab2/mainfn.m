disp('please input the values of a and b respectively (4 bit)')
for i=1:4
    a(i) = input(' ');
end
for i=1:4
    b(i) = input(' ');
end
c=0;
x = [0 0 0 0];
for i = 1:-1:4
    if a(i) == 1
        x(i) = x(i)+b(i);
    end
    shift((&c),x,b);
end
disp(b)
carry = 0;
cin = 0;
for i =4:-1:1
    [sum,carry] = adder(a(i),b(i),carry);
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
subplot(3,1,1);
stem(a,'r');
subplot(3,1,2);
stem(b,'b');
subplot(3,1,3);
stem(s,'g');
fprintf("%d",carry);