function [] = RightShiftMultiplication(M,Q,n)
    n=input('number of bits:');
    for i = 1:n
        M(i)=input('multiplicand:');
    end
    for i = 1:n
        Q(i)=input('multiplier:');
    end
    for i=1:n
        A(i)=0;
    end
    for i=1:n  
      C=0;
        if (Q(n)==1)
            carry=0;
            for i=n:-1:1
                [A(i) , carry] = fulladder(A(i), M(i), carry);
            end
            C=carry;
        end
        for i = n:-1:2
            Q(i)=Q(i-1);
        end

        Q(1)=A(n);

        for i = n:-1:2
            A(i)=A(i-1);
        end
        A(1)=C;
    end
   A
   Q
end