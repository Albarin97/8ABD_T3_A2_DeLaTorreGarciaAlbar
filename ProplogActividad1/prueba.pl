hombre(florencio).
hombre(vicente).
hombre(jaime).
hombre(gustavo).
hombre(marco).
hombre(albarM).
hombre(clemente)
hombre(albar).
hombre(jaimeH).
hombre(diego).
hombre(angel).
hombre(clementito).

mujer(rafaela).
mujer(carmen).
mujer(isabel).
mujer(liz).
mujer(trine).
mujer(monica).
mujer(marlen).
mujer(itzel).
mujer(yelitza).
mujer(yovana).
mujer(nayeli).
mujer(kasandra).
mujer(mayte).
mujer(sofia).
mujer(gali).
mujer(miriam).

esposo(florencio, rafaela).
esposo(vicente, carmen)
esposo(jaime, isabel).
esposo(gustavo, liz).
esposo(marco, trine).
esposo(albarM, monica).
esposo(clemente, marlen).

esposa(rafaela, florencia).
esposa(carmen, vicente).
esposa(isabel, jaime).
esposa(liz, gustavo).
esposa(trine, marco).
esposa(monica, albarM).
esposa(marlen, clemente).

hijo(jaime, florencio).
hijo(gustavo, florencio).
hijo(marco, florencio).
hijo(albarM, florencio).
hijo(jaime, rafaela).
hijo(gustavo, rafaela).
hijo(marco, rafaela).
hijo(albarM, rafaela).
hijo(clemente, vicente).
hijo(clemente, carmen).

hijo(albar, jaime).
hijo(albar, isabel).
hijo(jaimeH, jaime).
hijo(jaimeH, isabel).
hijo(diego, marco).
hijo(diego, trine).
hijo(angel, gustavo).
hijo(angel, liz).
hijo(clementito, clemente).
hijo(clementito, marlen).

hija(isabel, vicente).
hija(isabel, carmen).
hija(itzel, jaime).
hija(itzel, isabel).
hija(yelitza, jaime).
hija(yelitza, isabel).



padre(X, Y):-hombre(X), hijo(Y, X).
abuelo(X):-hombre(X), hijo(Z, Y), hijo(Y,X).
abuela(X):-mujer(X), hijo(Z, Y), hijo(Y,X).
persona(X):-hombre(X).
persona(X):-mujer(X).
nieto(X):-hombre(X), hijo(X, Y), hijo(Y, Z).
nieto(X):-hombre(X), hijo(X, Y), hijo(Y, Z).
hermanos(X, Y):-hijo(X, Z), hijo(Y, Z).
hermanas(X, Y):-hija(X, Z), hija(Y, Z).
pareja(X, Y):-hombre(X), mujer(Y), hijo(Z, X), hijo(Z, Y).
