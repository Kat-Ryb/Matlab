% Dane do punktów początkowych

% Rozmieszczenie punktów:
%
%   A   D    F
%   B        G
%   C   E    H

A = [1,3];
B = [1.1, 2.5];
C = [0.9, 1.1];

D = [2.1, 3.1];
E = [1, 0.9];

F = [2.9, 3];
G = [3, 2.2];
H = [3.1, 1]; 

% Lewy bok - wyznaczanie średniego x z punktów

xl = ( A(1) + B(1) + C(1) )/3

% Górny bok

yg = ( A(2) + D(2) + F(2) )/3

% Dolny bok

yd = ( C(2) + E(2) + H(2) )/3

% Prawy bok

xp = ( F(1) + G(1) + H(1) )/3

% Wyznaczanie wartości granicznych

y = xl:0.1:xp;

x = yd:0.1:yg;

% Rysowanie linii
plot(xl , y, 'o-r');
hold on;
plot( x, yg, 'o-r');
hold on;
plot (x, yd, 'o-r');
hold on;
plot (xp, y, 'o-r');
hold on;

% Rysowanie punktów

plot(A(1), A(2), 'o-b');
hold on;
plot(B(1), B(2), 'o-b');
hold on;
plot(C(1), C(2), 'o-b');
hold on;
plot(D(1), D(2), 'o-b');
hold on;
plot(E(1), E(2), 'o-b');
hold on;
plot(F(1), F(2), 'o-b');
hold on;
plot(G(1), G(2), 'o-b');
hold on;
plot(H(1), H(2), 'o-b');
