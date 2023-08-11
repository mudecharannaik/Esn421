N = 5;
x = linspace(1,10,N); 
y = randi(10,[1,N]);

x1 = [x.^0; x.^1; x.^2; x.^3; x.^4]
x1T = x1.'% x1 transpose
G = x1T % G = x1_transpose
% d = G m;

d = y
d_I = y.'
G_I = inv(G)
m = G_I * d_I
