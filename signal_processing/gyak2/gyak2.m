%{
fs = 8000
len = 1
t = linspace(0,len,len*fs+ 1);
t(end) = [];
s1 = sin(pi*2*440 * t);
s2 = sin(t *550*pi*2);
s3 = sin(pi*t*660*2);
ss = s1 + s2 + s3;
sound(ss,fs);
%}

%{
MATLAB-ban minden by default egy matrix az 1 is egy 1X1 matrix.
by default minden double
scalar/diacic multiple of two vectors

%}

x = [1 2 3]';
y = [1 2 3];

x = linspace(1,10,10);
x(1:2:10); % olyan mint numpyban csak annyi a különbség hogy középen van a lépésköz

dlmwrite('A.txt',x) % -> kiírja az eredményt !!! Nem szép, de működik !!
z = dlmread('A.txt')
% prod -> sokkal gyorsabb mint egy for loop !!!
% ha lehet beépített fv-eket használjunk



f = @(n) sqrt(2 *pi *n) * (n/exp(1))^n;

f(55)

%{
function x = fibo(n)
x = [0,1] * [0,1;1,1] ^ (n-1) * [0;1];
end

% O(log(n))

x = linspace(-2,2,100);
y = sin(pi*x) / (pi*x)
xlabel("X")
ylabel("Y")
figure
plot(x,y)
title("parabola")
grid on
axis equal
%}


x = linspace(-3,3,100);
y = linspace(-3,3,100);
[X,Y] = meshgrid(x,y);
z = exp(X + Y)
surf(X,Y,z);

grid on

