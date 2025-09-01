% Simulación del péndulo invertido
function dx = dinamica_suspension(t,x)

    m1 = 290;
    m2 = 59;
    b1 = 1000;
    k1 = 16182;
    k2 = 19000;
    f = 0;
    z1 = 0.05*sin(0.5*pi*t);
    z2 = 0.05*sin(20*pi*t);


    dx = zeros(4,1);

    dx(1) = x(2);

    dx(2) = (1/m1)*(-b1*x(2) + b1*x(4) - k1*x(1) + k1*x(3) + f);

    dx(3) = x(4);

    dx(4) = (1/m2)*(b1*x(2) - b1*x(4) + k1*x(1) - (k1 + k2)*x(3) - f + k2*z1);
end
