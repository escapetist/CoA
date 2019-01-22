function  [sum, carry]= fulladd (a,b,c)
        sum=doxor(doxor(a, b), c);
        carry=door(doand(a, b), doand(c, doxor(a,b)));
end