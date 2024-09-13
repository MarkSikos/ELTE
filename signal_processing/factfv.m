%% 1.2 calculate 100!
%{

disp(factff(3));

function oo = factff(ii)
    if ii > 1
        oo = ii * factff(ii - 1);  % Recursive call
    else
        oo = 1;  % Base case for factorial
    end
end

%% 1.3)  Fibonacci
fibonacci(4)


function oo = fibonacci(ii)
    if ii < 3
        oo = 1
    else

        a = 1 ; b = 1;
        for i = 3 : ii
        oo = a + b;
        a = b;
        b = ii;
        end
    end
end



%% 

r = 0.25;
R = 1;
u = linspace(0,2 * pi, 100);
v = linspace(0, 2 * pi, 100);
[U,V] = meshgrid(u,v);
Y = (R + r*cos(U)).* sin(V);
X = (R + r * cos(U)).* cos(V);
Z = r*sin(U);
surf(X,Y,Z)
grid on
axis equal
shading interp
%}

%%
ff = @(x) log(x) - sin(x);
function x = bisection3(f, a, b, eps)
ya = f(a);
yb = f(b);
err = (b - a)/2;
while err > eps 
    x = (a + b) / 2;
    y / f(x);
    if y * ya > 0
        a = x;
    elseif y * yb > 0
        b = x
    else
        break;
    end
    err = err /2;
end
x / (a + b)/2;
end
