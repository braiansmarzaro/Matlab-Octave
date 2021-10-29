%Deivid Braian Smarzaro 2020119520058
% Exercício da Lista 1 de Linguagem de Programação

% Exercicio 01-Gerar um vetor x de números pares de 0 a 50.
x=0:2:50
% Exercicio 02-Gerar um vetor x de números múltiplos de 5 de 0 a 90.
x=[0:5:90]
% Exercicio 03-Gere um vetor x de 5000 pontos com valores entre 0 e 2*pi.
x= linspace(0,2*pi,5000)
% Exercicio 04-Gere uma matriz 2x2 constituída por zeros.
matzeros  = zeros(2,2)
% Exercicio 05- Construa um vetor constituído pelos números pares de 0 a 10 
%seguido pelos números ímpares de 0 a 10.
x3 = [0:2:10 1:2:10]

% Exercicio 06-Sendo x = [2.1 -2 3] e y = [0 -1 3], escreva o vetor resultante 
%das seguintes operações:
% i) x+y 
x = [2.1 -2 3]
y = [0 -1 3]

% ii) x-y 
disp(x-y)
% iii) 3*x 
disp(3*x)
%iv) x.*y
disp(x.*y)
% v) x./y
disp(x./y)
% vi) y.^2 
disp(y.^2)
% vii) x.^y
disp(x.^y)
%% Exercicio 07- Faça um gráfico de y[n]=sin(pi n/12)2 e z[n]=cos(pi n/12)^2 
%para -30 <= n <= 30 na mesma figura. O gráfico de y[n] deverá ficar em azul e o
%de z[n] em vermelho.
n=-30:30
y=sin(pi*n/12).^2
z=cos(pi*n/12).^2
plot(n,y,'b')
hold on
plot(n,z,'r')
title ('y(azul) e z(vermelho) por n')
% Exercicio 08- (a) Digite o script plotdata da página anterior e gere os 
%gráficos dos exemplos subsequentes.


%(b) Reescreva o script plotdata visto acima de forma que ele seja uma função 
%que recebe a variável alfa. Ou seja, escreva uma função que faça um gráfico da 
%função y(t) = sin(alfa*t) no intervalo 0 <= t <= 1 e alfa é um parâmetro 
%escolhido pelo usuário.
function plotdataf(alfa)
%Chama a função plotdata passando alfa como parâmetro
t = 0:0.01:1;
y = sin(alfa*t);
plot(t,y);
xlabel ('tempo(s)');
ylabel('y(t) = sin(\alpha t)');
grid on;
end

hold off %Apaga os graficos anteriores
plotdataf(2) %chama a função criada acima
% Exercicio 09- Gere um vetor de 100 valores aleatórios com distribuição 
%uniforme no intervalo [0,1]
cemrand=rand(100,1)


%% Exercicio 10- Escreva uma sequência de comandos do Matlab que forneça um 
%vetor contendo 100 valores aleatórios uniformemente distribuídos no intervalo 
%-1 a 1 e que faça um gráfico deste sinal.
a=-1; %start point
b=1; %end point
r = (b-a).*rand(1,100) + a
plot(r)
%% Exercicio 11-Escreva uma sequência de comandos Matlab que gere um gráfico do 
%sinal onde r[n] é um vetor de números aleatórios com distribuição 
%uniforme entre -1 e 1.

%Faça 0 <= n <= 99. (Dica: use o comando rand).
a=-1 %start point
b=1 %end point
r = (b-a).*rand(1,100) + a;
%num = round(99.*rand(1,1));
n=0:99
x = cos(pi*n/8)+r(n+1)
plot(x)
% Exercicio 12 - Escreva uma função Matlab chamada pulso2graf cujas entradas 
%sejam dois números inteiros a e b com a < b . 
% A função deverá fazer o gráfico de um pulso com amplitude 2 
%no intervalo a<= n <= b . O gráfico deve começar em a - 2 e terminar em b + 2 .
function pulso2graf(a,b)
  n=a:2:b
  stem(n,ones(length(n),1).*2)
  xlim([a-2 b+2])
end
pulso2graf(2,8)