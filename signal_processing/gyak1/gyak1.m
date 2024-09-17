%% NUMMOD GYAK
X = [1 2 3 4 5];
Y = [6 7 8 9 10];

for x  = 1:10
    disp(x)
end

format long;
1e-100;
a = 1e-20; b = 1; a + b;

a + b - b;


sum(1./factorial([0:20]));

cosh(20) - sinh(20);




x = 20;
A = [ -x/2, -1; x *exp(x), exp(x)];
b = A * [1,1]';
A \ b;

c = 1;
x(c);
l  = [1,1,2,3,4,1,2];
length(l)
l(7)
 l(8) = 8
l = [l,9]

size(A)
fliplr(l)
flipud(A)

sort(l)

[mml, mind] = max(l)

eig(A)




disp(A)
;

x = linspace(-1,1,5);

 %
A = [1,2;3,4;5,6]
[n,m] = size(A)
B = A(1:2,:)
B(:,2)
B
diag(B)
x
diag(x)
diag(x,-1)
zeros(2,3)
eye(3,3)
ones(4,4)
rand(2,2)
randi(10,3,4)
 % Első feladat - Vektor feltöltésének ideje
%  ROSSZ MO

format long
hossz = 1000;
tic;
T = [];
for j = 1:1:hossz
    T(j) = 1;
end
ido1 = toc

% JÓ MO
tic;


tic;
hossz = 1000
T = zeros(1,hossz);
for j = 1:1:hossz
    T(j) = 1;
end
ido2=toc

% Jó Jó MO
tic;
T = [1:hossz];
ido3 = toc;

 % Második feladat - Adjunk össze számokat 1-20ig ciklus nélkül!

sum(1:20)

 % Harmadik feladat - vegyük ki a B diagját és csináljunk belőle diag mátrixot
diag(diag(B))

 %
x = -1 + 2 * rand(1,10)
[mmax,maxind] = max(x)
[mmin, minind] = min(x)
x(minind) = mmax
x(maxind) = mmin
 %
[kk,ko]=ossz_szor(2,3)

iffun('2')

pp = poly([1,2,3,4])
polyval(pp,[-2])
roots(pp)
 %
x = [0, 1, 2, 4, 3, 5];
y = [1, -1, 6, 2, 1, 4];

% Sort the x values and rearrange y according to x's order
[x_sorted, ind] = sort(x);
y_sorted = y(ind);

% Plot the points and the line in an ordered manner
plot(x_sorted, y_sorted, 'md')  % Plot the points
hold on
plot(x_sorted, y_sorted, 'r-')  % Plot the connecting line
hold off

grid on  % Turn on grid for better visualization
 %
x = linspace(0,10,20);
y = sin(pi*x);
plot(x,y)
plot(x,y,'b-', x,y,'*')

 %
x = linspace(0,10,100);
y = sin(pi*x);
plot(x,y,'b-', x,y,'*')

%% GYAK 1
%%
% 1.2 calculate 100!

factorial_recursive(12)
factorial(3)
ff = @(x) factorial(x);
ff(5)

%% 2) Feladat

fibonacci(10)
%% 3) Feladat

x = linspace(-10,10,10000)
fv = poly([0,0])
y = polyval(fv,x)

plot(x,y)
plot(exp(x))
plot(x,sin(x))
plot(x,cos(x))
plot()


%% 3) Feladat

% Define the parameter t
t = linspace(0, 4*pi, 1000);

% Circle (2D)
r = 1; % radius
x_circle = r * cos(t);
y_circle = r * sin(t);

% Spiral (2D)
x_spiral = t .* cos(t);
y_spiral = t .* sin(t);

% Helix (3D)
x_helix = cos(t);
y_helix = sin(t);
z_helix = t;

% Plotting the Circle
figure;
subplot(1, 3, 1);
plot(x_circle, y_circle);
title('Circle');
xlabel('x'); ylabel('y');
axis equal;
grid on; % 2D grid

% Plotting the Spiral
subplot(1, 3, 2);
plot(x_spiral, y_spiral);
title('Spiral');
xlabel('x'); ylabel('y');
axis equal;
grid on; % 2D grid

% Plotting the Helix (3D)
subplot(1, 3, 3);
plot3(x_helix, y_helix, z_helix);
title('Helix');
xlabel('x'); ylabel('y'); zlabel('z');
axis equal;
grid on; % 3D grid

%% 4)

% Define the grid for x and y
[x, y] = meshgrid(linspace(-2, 2, 100));

% Paraboloid
z_paraboloid = x.^2 + y.^2;

% Gaussian function
sigma = 1;
z_gaussian = exp(-(x.^2 + y.^2) / (2 * sigma^2));

% Plot Paraboloid
figure;
subplot(2, 2, 1);
surf(x, y, z_paraboloid);
title('Paraboloid');
xlabel('x'); ylabel('y'); zlabel('z');
grid on;
axis equal;

% Plot Gaussian surface
subplot(2, 2, 2);
surf(x, y, z_gaussian);
title('Gaussian Surface');
xlabel('x'); ylabel('y'); zlabel('z');
grid on;
axis equal;

% Sphere
[theta, phi] = meshgrid(linspace(0, pi, 50), linspace(0, 2*pi, 50));
r = 3;
x_sphere = r * sin(theta) .* cos(phi);
y_sphere = r * sin(theta) .* sin(phi);
z_sphere = r * cos(theta);

% Plot Sphere
subplot(2, 2, 3);
surf(x_sphere, y_sphere, z_sphere);
title('Sphere');
xlabel('x'); ylabel('y'); zlabel('z');
grid on;
axis equal;

% Torus
R = 3; % Major radius
r = 1; % Minor radius
[theta, phi] = meshgrid(linspace(0, 2*pi, 50), linspace(0, 2*pi, 50));
x_torus = (R + r * cos(theta)) .* cos(phi);
y_torus = (R + r * cos(theta)) .* sin(phi);
z_torus = r * sin(theta);

% Plot Torus
subplot(2, 2, 4);
surf(x_torus, y_torus, z_torus);
title('Torus');
xlabel('x'); ylabel('y'); zlabel('z');
grid on;
axis equal;



%% 5) Bisection method




f = @(x) sin(x) - log(x);

x = bisection(f, 1, 3, 1e-4);
t = linspace(0,2*pi);
hold on
plot(t, min(t), 'b')
plot(t, log(t), 'r')
plot(x, min(x), 'ko')
rectangle('Position', [1,0,2, log(3)])
grid on



%{
function x = bisection(f, a, b, eps)
    ya = f(a);
    yb = f(b);
    err = (b - a) / 2;
    while err > eps
        x = (a + b)/2;
        y = f(x);
        if y * ya > 0
            a = x;
        elseif y * yb > 0
            b = x;
        else 
            break;
        end
        err = err / 2;
    end
    x = (a + b) / 2;
end
%}
%% 6)

N = 10; % matrix size
M = 10; % number of iterations
A = randi(10, N, N); % NxN random integer matrix
A = (A + A') / 2; % symmetric transform
x = 2 * rand(N, 1) - 1; % random starting point
x = x / norm(x, 2); % normalization
lambda = zeros(1, N); % eigenvalue estimates
for i = 1:M
x0 = x;
x = A * x; % power iteration step
lambda(i) = x' * x0; % Rayleigh quotient
x = x / norm(x, 2); % normalization
end
lambda0 = max(abs(eig(A))); % MATLAB eigenvalue estimate
hold on
plot(lambda, 'b')
plot(1:M, lambda0 * ones(1, M), 'r--')

%% 7)

% Parameters for the original line y = mx + b
m = 2;   % Slope of the line
b = 3;   % Intercept of the line

% Generate random x values
num_points = 100;
x = linspace(0, 10, num_points);  % Random x values between 0 and 10

% Generate corresponding y values with random noise
noise = randn(1, num_points);  % Random noise to add to y values
y = m*x + b + noise;           % y = mx + b + noise

% Perform linear regression (fit a line to the data)
coefficients = polyfit(x, y, 1);  % 1 indicates we are fitting a line (degree 1)

% Get the fitted y values using the regression line
y_fit = polyval(coefficients, x);

% Plot the random points and the fitted line
figure;
scatter(x, y, 'b', 'filled');    % Scatter plot of random points
hold on;
plot(x, y_fit, 'r', 'LineWidth', 2);  % Plot the best-fitting line
hold off;

% Label the plot
xlabel('x');
ylabel('y');
title('Best-Fitting Line Using Linear Regression');
legend('Random Points', 'Best-Fit Line');
grid on;




















%% AGAIN
factorial(5)
factor(5)


%% 

fibonacci2(6)
%{
function oo = fibonacci2(ii)

    if ii < 3
        oo = 1
    else
        a = 0; b = 1;
        for i = 1 : ii
              c = a + b
              a = b
              b = c
        end
        oo = b
    end
end
%}


%%
x = linspace(-3,3,100)
y = polyval(poly([0,0]),x)



figure;
fff(1,x,y, 'PARABOLA');

y = exp(x)
fff(2,x,y,"EXPONENCIALIS")

y = sin(x)
fff(3,x,y,'SINUS')

%{
function fff(num,x,y, z) 
subplot(1,3,num) , plot(x,y,'b-'), xlabel('x'), ylabel('y'), title(z),axis equal, grid on;
end
%}
%%


% Define the parameter t
t = linspace(0, 4*pi, 1000);

% Circle (2D)
r = 1; % radius
x_circle = r * cos(t);
y_circle = r * sin(t);

% Spiral (2D)
x_spiral = t .* cos(t);
y_spiral = t .* sin(t);

% Helix (3D)
x_helix = cos(t);
y_helix = sin(t);
z_helix = t;

% Plotting the Circle
figure;
subplot(1, 3, 1);
plot(x_circle, y_circle);
title('Circle');
xlabel('x'); ylabel('y');
axis equal;
grid on; % 2D grid

% Plotting the Spiral
subplot(1, 3, 2);
plot(x_spiral, y_spiral);
title('Spiral');
xlabel('x'); ylabel('y');
axis equal;
grid on; % 2D grid


subplot(1,3,3);

% Plotting the Helix (3D)
subplot(1, 3, 3);
plot3(x_helix, y_helix, z_helix);
title('Helix');
xlabel('x'); ylabel('y'); zlabel('z');
axis equal;
grid on; % 3D grid



%% 
N = 10; M = 10;

A = randi(10,N,N);

A = A + A';
x = 2 * rand(N,1) -1;

x = x / norm(x,2);

lambda = zeros(1,N);

for i = 1:M
    x0 = x;
    x = A*x
    lambda(i) = x' *x0
    x = x/ norm(x,2);
end

lambda0 = max(abs(eig(A)))
hold on;
plot(lambda, 'b')
plot(1:M, lambda0 *ones(1, M ), 'r-')
%%


A = randi(10,10,10);
A = A + A'
x = rand(10,1) - 1
x = x./ norm(x,2)
lambda = zeros(1,10);

for i = 1:10
    x0 = x;
    x = A *x;
    lambda(i)  = x' *x0;
    x = x ./norm(x,2);
end

lambda0 = max(abs(eig(A)));

hold on 
plot(lambda,'b')
plot(1:10, lambda0*ones(1,10), 'r--')



%%


N = 100
c = [2,1]
x = rand(N,1)
y = c(2) + c(1)* x + rand(N,1)
A = vander(x)
cf = pinv(A) * y

hold on
plot(x,y,'b.')
plot([0 1], c(2) + c(1) * [0 1], 'k--')
plot([0 1], cf(2) + cf(1) * [0 1], 'r')
legend('Points', 'Original line', 'Fitted line')
grid on






