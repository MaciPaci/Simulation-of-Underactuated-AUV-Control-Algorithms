plot(x_r, y_r)
hold on
plot(x,y,'r')
grid on
% ylim([-200,200])
xlim([0,200])
legend ('Trajektoria referencyjna', 'Trajektoria rzeczywista')
title('Wykres po³o¿enia')
xlabel('po³o¿enie w osi X')
ylabel('po³o¿enie w osi Y')
xlabel('po³o¿enie w osi X [m]')
ylabel('po³o¿enie w osi Y [m]')
saveas(gcf, 'liniowa paliotta.png')

close

plot(t,e_x)
hold on
plot(t,e_y,'r')
grid on
legend ('Uchyb w osi x', 'Uchyb w osi y')
title('Wykres uchybów po³o¿enia')
xlabel('czas [s]')
ylabel('uchyb [m]')
ylim([-10,10]);
saveas(gcf, 'uchyb polozenia liniowa paliotta.png')

close

plot(t,e_psi)
grid on
legend ('Uchyb orientacji')
title('Wykres uchybu orientacji')
xlabel('czas [s]')
ylabel('uchyb [st]')
ylim([-2,2]);
saveas(gcf, 'uchyb orientacji liniowa paliotta.png')

close

plot(t, Tau_u)
grid on
% ylim([-200,200])
% xlim([0,1000])
legend ('Sygna³ steruj¹cy Tau_u')
title('Wykres sygna³u steruj¹cego Tau_u')
xlabel('czas [s]')
ylabel('si³a wymuszaj¹ca [N]')
saveas(gcf, 'Tau_u liniowa paliotta.png')

close

plot(t, Tau_r)
grid on
% ylim([-200,200])
% xlim([0,1000])
legend ('Sygna³ steruj¹cy Tau_r')
title('Wykres sygna³u steruj¹cego Tau_r')
xlabel('czas [s]')
ylabel('moment wymuszaj¹cy [Nm]')
saveas(gcf, 'Tau_r liniowa paliotta.png')

close

u_e=x_r_dot-u;
plot(t, u_e)
grid on
% ylim([-200,200])
% xlim([0,1000])
legend ('Uchyb prêdkoœci u')
title('Wykres uchybu prêdkoœci u')
xlabel('czas [s]')
ylabel('predkoœæ [m/s]')
saveas(gcf, 'u liniowa paliotta.png')


close 

v_e=y_r_dot-v;
plot(t, v_e)
grid on
ylim([-3,3])
% xlim([0,1000])
legend ('Uchyb prêdkoœci v')
title('Wykres uchybu prêdkoœci v')
xlabel('czas [s]')
ylabel('predkoœæ [m/s]')
saveas(gcf, 'v liniowa paliotta.png')

close 

plot(t, r)
grid on
% ylim([-200,200])
% xlim([0,1000])
legend ('Uchyb prêdkoœci r')
title('Wykres uchybu prêdkoœci r')
xlabel('czas [s]')
ylabel('predkoœæ [rad/s]')
saveas(gcf, 'r liniowa paliotta.png')

close