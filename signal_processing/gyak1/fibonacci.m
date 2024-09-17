function [oo] = fibonacci(ii)
    % Fibonacci sort implementáló fv
    a = 0;
    b = 1; 
    if ii == 0, oo = a, 
    else 
        for  i = 1:ii,
            c = a + b;
            a = b;
            b = c;
        end;
        oo = b;
    end;

end

