%Restricciones
padre(joseArcadioBuendia,rebecaBuendia).
padre(ursulaIguaran,rebecaBuendia).
padre(joseArcadioBuendia,joseArcadioBuendia).
padre(ursulaIguaran,joseArcadioBuendia).
padre(joseArcadioBuendia,aurelianoBuendia).
padre(ursulaIguaran,aurelianoBuendia).
padre(joseArcadioBuendia,amarantaBuendia).
padre(ursulaIguaran,amarantaBuendia).
padre(joseArcadioBuendia,aarcadioBuendia).
padre(pilarTernera,arcadioBuendia).
padre(aurelianoBuendia,aurelianoJoseBuendia).
padre(pilarTernera,aurelianoJoseBuendia).
padre(arcadioBuendia,remediosBuendia).
padre(santaSofiaDeLaPiedad,remediosBuendia).
padre(arcadioBuendia,joseArcadioSegundo).
padre(santaSofiaDeLaPiedad,joseArcadioSegundo).
padre(arcadioBuendia,aurelianoSegundo).
padre(santaSofiaDeLaPiedad,aurelianoSegundo).
padre(aurelianoSegundo,amarantaUrsula).
padre(fernandaDelCarpio,amarantaUrsula).
padre(aurelianoSegundo,joseArcadio).
padre(fernandaDelCarpio,joseArcadio).
padre(aurelianoSegundo,renataRemedios).
padre(fernandaDelCarpio,renataRemedios).
padre(mauricioBabilonia,aurelianoBabilonia).
padre(renataRemedios,aurelianoBabilonia).
padre(aurelianoBabilonia,aureliano).
padre(amarantaUrsula,aureliano).
%Relaciones
nieto(X,Y):-padre(Y,C),padre(C,X),-mujer(Y).
tia(X,Y):-(padre(C,Y);madre(C,Y)),hermano(C,X),mujer(X).
primohermano(X,Y):-(padre(C,X);madre(C,X)),(padre(Z,Y);madre(Z,Y)),hermano(C,Z).
abuelapaterna(X,Y):-padre(C,Y),-mujer(C),madre(X,C).
bisabuelo(X,Y):-padre(X,C),(padre(C,Z);madre(C,Z)),(padre(Z,Y);madre(Z,Y)),-mujer(X).
casados(X,Y):padre(X,Z),padre(Y,Z).
felices(X):casados(X,Y).
esHermano(X, Y): Padre(Z, X), Padre(Z, Y).
esTio(X, Y): Padre(Z, Y), esHermano(Z, X).
esPrimo(X, Y): Padre(Z, X), esTio(Z, Y).
esAbuelo(X, Y): Padre (X, Z), Padre(Z, Y).

