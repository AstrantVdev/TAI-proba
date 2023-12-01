a = [0.5 0.1 0.1; 0.2 0.6 0.2; 0.3 0.3 0.7];
b = [0.36;0.4;0.24];
c = a*b;
d = zeros(20,1);
e = zeros(20,1);
f = zeros(20,1);
hold on

for n = 1:1.0:22
    d(n,1) = c(1,1);
    e(n,1) = c(2,1);
    f(n,1) = c(3,1);
    b = c;  
    c = a*b;
    grid on
end
plot(e,'o','MarkerSize',4,'MarkerFaceColor', 'r' )
plot(d, 'o','MarkerSize',4,'MarkerFaceColor', 'b')
plot(f, 'o','MarkerSize',4,'MarkerFaceColor', 'g')
axis([0 n 0 1])
xlabel('année')
ylabel('pourcentage')
legend('Cht','Ch','Rs')
axis ([1 24 0 0.6]);

grid on;
hold off
