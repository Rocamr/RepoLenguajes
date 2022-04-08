hombre(arthur).
hombre(bill).
hombre(louis).
hombre(teddy).
hombre(percy).
hombre(george).
hombre(fred).
hombre(harry).
hombre(james).
hombre(albus).
hombre(ron).
hombre(hugo).
mujer(molly).
mujer(fleur).
mujer(victoire).
mujer(dominique).
mujer(audrey).
mujer(lucy).
mujer(molly).
mujer(angelina).
mujer(roxanne).
mujer(ginny).
mujer(lily).
mujer(hermione).
mujer(rose).
femenino(petra).
femenino(carmen).
femenino(maria).
femenino(rosa).
femenino(ana).
femenino(cande).
madre(petra, juan).
madre(petra, rosa).
madre(carmen, pedro).
madre(maria, ana).
madre(maria, enrique).
madre(rosa, raul).
madre(rosa, alfonso).
madre(rosa, cande).
masculino(angel).
masculino(pepe).
masculino(juan).
masculino(pedro).
masculino(enrique).
masculino(raul).
masculino(alfonso).
padre(angel, juan).
padre(angel, rosa).
padre(pepe, pedro).
padre(juan, ana).
padre(juan, enrique).
padre(pedro, raul).
padre(pedro, alfonso).
padre(pedro, cande).
pareja(arthur,molly).
pareja(molly,arthur).
pareja(bill,fleur).
pareja(fleur,bill).
pareja(percy,audrey).
pareja(audrey,percy).
pareja(george,angelina).
pareja(angelina,george).
pareja(ginny,harry).
pareja(harry,ginny).
pareja(ron,hermione).
pareja(hermione,ron).
pareja(victoire,teddy).

pareja(teddy,victoire).
progenitor(X, Y) :- padre(X, Y).
progenitor(X, Y) :- madre(X, Y).
hermanos(X,Y):-progenitor(Z,X),progenitor(Z,Y), not(X==Y).
hermano(X,Y):-hombre(X),hermanos(X,Y).
hermana(X,Y):-mujer(X),hermanos(X,Y).
cuñados(X,Y):-((pareja(X,Z),hermanos(Z,Y));(pareja(Y,Z),hermanos(Z,X))).
cuñado(X,Y):-cuñados(X,Y),hombre(X).
cuñada(X,Y):-cuñados(X,Y),mujer(X).

abuelo(X, Y) :- padre(X, Z), progenitor(Z, Y).
abuela(X, Y) :- madre(X, Z), progenitor(Z, Y).
tio(X,Y):-progenitor(Z,Y),(hermano(X,Z);cuñado(X,Z)).
tia(X,Y):-progenitor(Z,Y),(hermana(X,Z);cuñada(X,Z)).
