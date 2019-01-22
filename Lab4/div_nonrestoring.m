%n = input('enter number of bits');
for i=1:4
A(i) = 0;
end
disp(A)

disp('enter dividend');
for i=1:4
    Q(i) = input(' ');
end
Q
disp('enter divisor');
for i=1:4
    M(i) = input(' ');
end
M
for i=1:4
    N(i) = doxor(M(i),1);
end
carry = 1;
for i = 4:-1:1
    [N(i),carry] = fulladd(N(i),A(i),carry);
end
for i=1:4
    carry =0;
    if A(1) == 1
        Q(4) = 0;
        carry = 0;
        for i = 4:-1:1
            [A(i),carry] = fulladd(A(i),M(i),carry);
        end
    else
        for i = 4:-1:1
            [A(i),carry] = fulladd(N(i),A(i),carry);
        end
    end
    for i =2:4
        A(i-1)=A(i);
    end
    A(4) = Q(1);
    for i = 2:4
        Q(i-1)=Q(i);
    end
    Q(4) = 1;
    A
    Q
end



