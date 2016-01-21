function [y] = sine_sum1( n, A, x )
y=0;
for k=1:n
	b = k * A(1, k);
	y = y + b*(1/k*(sin(x*k*2*pi)));
end
end

