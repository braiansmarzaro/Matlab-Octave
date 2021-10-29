%Deivid Braian Smarzaro 2020119520058
% Exerc�cio da Lista 1 de Linguagem de Programa��o

% Exercicio 01-Gerar um vetor x de n�meros pares de 0 a 50.
x=0:2:50
% Exercicio 02-Gerar um vetor x de n�meros m�ltiplos de 5 de 0 a 90.
x=[0:5:90]
% Exercicio 03-Gere um vetor x de 5000 pontos com valores entre 0 e 2*pi.
x= linspace(0,2*pi,5000)
% Exercicio 04-Gere uma matriz 2x2 constitu�da por zeros.
matzeros  = zeros(2,2)
% Exercicio 05- Construa um vetor constitu�do pelos n�meros pares de 0 a 10 
%seguido pelos n�meros �mpares de 0 a 10.
x3 = [0:2:10 1:2:10]

% Exercicio 06-Sendo x = [2.1 -2 3] e y = [0 -1 3], escreva o vetor resultante 
%das seguintes opera��es:
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
%% Exercicio 07- Fa�a um gr�fico de y[n]=sin(pi n/12)2 e z[n]=cos(pi n/12)^2 
%para -30 <= n <= 30 na mesma figura. O gr�fico de y[n] dever� ficar em azul e o
%de z[n] em vermelho.
n=-30:30
y=sin(pi*n/12).^2
z=cos(pi*n/12).^2
plot(n,y,'b')
hold on
plot(n,z,'r')
title ('y(azul) e z(vermelho) por n')
% Exercicio 08- (a) Digite o script plotdata da p�gina anterior e gere os 
%gr�ficos dos exemplos subsequentes.


%(b) Reescreva o script plotdata visto acima de forma que ele seja uma fun��o 
%que recebe a vari�vel alfa. Ou seja, escreva uma fun��o que fa�a um gr�fico da 
%fun��o y(t) = sin(alfa*t) no intervalo 0 <= t <= 1 e alfa � um par�metro 
%escolhido pelo usu�rio.
function plotdataf(alfa)
%Chama a fun��o plotdata passando alfa como par�metro
t = 0:0.01:1;
y = sin(alfa*t);
plot(t,y);
xlabel ('tempo(s)');
ylabel('y(t) = sin(\alpha t)');
grid on;
end

hold off %Apaga os graficos anteriores
plotdataf(2) %chama a fun��o criada acima
% Exercicio 09- Gere um vetor de 100 valores aleat�rios com distribui��o 
%uniforme no intervalo [0,1]
cemrand=rand(100,1)


%% Exercicio 10- Escreva uma sequ�ncia de comandos do Matlab que forne�a um 
%vetor contendo 100 valores aleat�rios uniformemente distribu�dos no intervalo 
%-1 a 1 e que fa�a um gr�fico deste sinal.
a=-1; %start point
b=1; %end point
r = (b-a).*rand(1,100) + a
plot(r)
%% Exercicio 11-Escreva uma sequ�ncia de comandos Matlab que gere um gr�fico do 
%sinal onde r[n] � um vetor de n�meros aleat�rios com distribui��o 
%uniforme entre -1 e 1.

%Fa�a 0 <= n <= 99. (Dica: use o comando rand).
a=-1 %start point
b=1 %end point
r = (b-a).*rand(1,100) + a;
%num = round(99.*rand(1,1));
n=0:99
x = cos(pi*n/8)+r(n+1)
plot(x)
% Exercicio 12 - Escreva uma fun��o Matlab chamada pulso2graf cujas entradas 
%sejam dois n�meros inteiros a e b com a < b . 
% A fun��o dever� fazer o gr�fico de um pulso com amplitude 2 
%no intervalo a<= n <= b . O gr�fico deve come�ar em a - 2 e terminar em b + 2 .
function pulso2graf(a,b)
  n=a:2:b
  stem(n,ones(length(n),1).*2)
  xlim([a-2 b+2])
end
pulso2graf(2,8)