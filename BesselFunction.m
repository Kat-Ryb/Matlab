z=0:0.1:20;
J=zeros(5,201);
for i=0:2
    J(i+1,:)=besselj(i,z);
    
end
plot(z,J)
grid on;
legend('J_0','J_1','J_2','Location','Beat')
title('Bessel Functions of the First Kind')
xlabel('z','interpreter','latex')
ylabel('SJ_\nu(z)S','interpreter','latex')