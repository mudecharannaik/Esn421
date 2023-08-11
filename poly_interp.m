N= 5;
x= linspace(1,10,N);
y=randi(10,[1,N]);
y = y.';
% prepare G matrix  - Dimension (N+1) x (N+1)
%    [x0^0  x0^1  x1^2 ..... x1^N]
%    |x1^0  x1^1  x1^2 ..... x1^N|
%    |x2^0  x2^1  x2^2 ..... x2^N|
%G = |x3^0  x3^1  x3^2 ..... x3^N|
%    |:  :   :     :     :    :  |
%    [xN^0  xN^1  xN^2 ..... xN^N]
G=zeros(N,N);
for i = 1:N
    for j = 1:N
        G(i,j) = x(i)^(j-1);
    end
end
m = inv(G) * y;

xi = linspace(x(1),x(end),1000);

xi = xi.';
yi = zeros(1000,1);
for j=1:N
    yi = yi+m(j)*(xi.^(j-1))
end
plot(xi,yi)
hold on
plot(x,y,'o','markerFacecolor','y')
xlabel('X')
ylabel('Y')
title('Polynomial Interpolation')



