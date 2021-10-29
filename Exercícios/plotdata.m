% Este e um script para fazer um gráfico da função y = sin(alfa*t)
% O valor de alfa precisa existir no espaço de trabalho antes
% de se chamar este script
t = 0:0.01:1;
y = sin(alfa*t);
plot(t,y);
xlabel ('tempo(s)');
ylabel('y(t) = sin(\alpha t)');
grid on;