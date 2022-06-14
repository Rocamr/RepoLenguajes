sumlist[], S).
sumlist([X|Xs],S):-
    S is Xs,
    sumlist(Xs,S).

largopar([]).
largopar([_|Xs]):-
          largopar(Xs),
          W is Xs +1,
          I is W mod 2,
          (I!=0,largopar(Xs);
          disply(Xs),disply(','),largopar(Xs)).

largoIpar([]).
largoIpar([_|Xs]):-
          largoIpar(Xs),
          W is Xs +2,
          I is W mod 2,
          (I=0,largopar(Xs);
          disply(Xs),disply(','),largoIpar(Xs)).
sublist(Xs, Ys):-
          my_append(_, Bs, Ys),
          my_append(Xs, _, Bs).
invierte([],[]) :- my_reverse(A, D).
split([H|T],H,[],T).
split([H|T],U,[H|T2],S) :-
    split(T,U,T2,S).

