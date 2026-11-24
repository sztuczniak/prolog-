# prolog
Poziom podstawowy 
1. 
prolog:
ostatni(X, [X]).
ostatni(X, [_, H|T]) :- ostatni(X, [H|T]).
interpreter:
ostatni(X, [a, b, c, d]).
X = d.
2.
p:
suma([], 0).
suma([H|T], S) :- suma(T, S1), S is S1 + H.
i:
suma([4, 7, 2, 5], S).
S = 18.
Średniozawaanzowany
p:
usun_wszystkie(_, [], []).
usun_wszystkie(X, [X|T], W) :- usun_wszystkie(X, T, W).
usun_wszystkie(X, [H|T], [H|W]) :- X \= H, usun_wszystkie(X, T, W).
i:
usun_wszystkie(2, [1, 2, 3, 2, 4, 2], W).
W = [1, 3, 4].
2. 
p:
polacz([], L, L).
polacz([H|T], L, [H|R]) :- polacz(T, L, R).
i:
polacz([1, 2], [3, 4, 5], L).
L = [1, 2, 3, 4, 5].
Zawaansowany: 
1. 
p:
polacz([], L, L).
polacz([H|T], L, [H|R]) :- polacz(T, L, R).
splaszcz([], []).
splaszcz([H|T], W) :-
splaszcz(H, FH),
spłaszcz(T, FT),
polacz(FH, FT, W).
splaszcz(X, [X]) :- \+ is_list(X).
i:
splaszcz([1, [2, [3, 4], 5], [], 6], W).
W = [1, 2, 3, 4, 5, 6].







