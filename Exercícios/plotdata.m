% Este e um script para fazer um gr�fico da fun��o y = sin(alfa*t)
% O valor de alfa precisa existir no espa�o de trabalho antes
% de se chamar este script
t = 0:0.01:1;
y = sin(alfa*t);
plot(t,y);
xlabel ('tempo(s)');
ylabel('y(t) = sin(\alpha t)');
grid on;