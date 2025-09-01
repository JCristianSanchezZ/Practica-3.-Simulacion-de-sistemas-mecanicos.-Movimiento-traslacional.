tiempo = [0 10];
x0 = [0; 0; 0; 0];

[t, X] = ode45(@dinamica_suspension, tiempo, x0);

figure;
subplot(2,2,1)
plot(t, X(:,1), 'b', 'LineWidth',1); hold on;
title('Posición 1 (Matlab)')
grid on;
ax = gca;
ax.Color = [0.8 0.8 0.8]



subplot(2,2,2)
plot(t, X(:,3), 'g', 'LineWidth',1);
title('Posición 2 (Matlab)')
grid on;
ax = gca;
ax.Color = [0.8 0.8 0.8]



subplot(2,2,3)
plot(t, X(:,2), 'r', 'LineWidth',1);
title('Velocidad 1 (Matlab)')
grid on;
ax = gca;
ax.Color = [0.8 0.8 0.8]



subplot(2,2,4)
plot(t, X(:,4), 'm', 'LineWidth',1);
title('Velocidad 2 (Matlab)')
grid on;
ax = gca;
ax.Color = [0.8 0.8 0.8]

