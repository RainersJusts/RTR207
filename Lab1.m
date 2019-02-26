
Vm = [1 3 5 5.5 9];
Im = [10 25 55 60 190;
      12 24 26 32.9 51; 
      8 19 21 31.2 48]*1e-3;
  
Imv = mean(Im);

V = min(Vm):0.01:max(Vm);
C = polyfit(Vm, Imv, 2);
I = polyval(C, V); % C(1)*V.^2+C(2)*V.^1+C(3)*V.^0;

plot(Vm, Imv, "k*",V, I)
xlabel('U, V')
ylabel('I, A')
title("Voltampēru raksturlīkne")
grid on

% Secinājumi - tika izvēlēti punkti, kurus varēja aprakstīt ar 2.kārtas
% polinomu