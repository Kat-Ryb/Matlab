a=0;
b=100;
N=1000;
ls={'-r','--b',':k'}

x=linspace(a,b,N);

figure(1);
clf;
for nu=0;2
    f=@(x)besselj(nu,x);
    y=f(x);
    plot(x,y,ls{nu+1});
    hold all;
    for i=2:N
        try
            xL=x(i-1);
            xR=x(i);
            z=fzero(f,[xL,xR]);
            plot(z,f(z),'*m');
        catch
            %plan B
        end
    end
end
z=0:0.1:20;
J=zeros(5,201);

grid on;
legend('J_0','J_1','J_2','Location','Beat')
title('Bessel Functions of the First Kind')
xlabel('z','interpreter','latex')
ylabel('SJ_\nu(z)S','interpreter','latex')