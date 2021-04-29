subplot(3,1,1)
plot(x_r, y_r)
hold on
plot(x,y)
grid on
xlim([0,1000])
legend ('Trajektoria referencyjna', 'Trajektoria rzeczywista')
title('Wykres po這瞠nia')
xlabel('po這瞠nie w osi X')
ylabel('po這瞠nie w osi Y')
xlabel('po這瞠nie w osi X [m]')
ylabel('po這瞠nie w osi Y [m]')


subplot(3,1,2)
plot(t,e(:,1))
hold on
plot(t,e(:,2))
grid on
legend ('Uchyb w osi x', 'Uchyb w osi y')
title('Wykres uchybu po這瞠nia')
xlabel('czas [s]')
ylabel('uchyb [m]')

subplot(3,1,3)
plot(t,e(:,3))
grid on
legend ('Uchyb orientacji')
title('Wykres uchybu orientacji')
xlabel('czas [s]')
ylabel('uchyb [st]')
ylim([-3,3]);
