%Restricciones
padre(joseArcadioBuendia,rebecaBuendia).
padre(ursulaIguaran,rebecaBuendia).
padre(joseArcadioBuendia,joseArcadioBuendia1).
padre(ursulaIguaran,joseArcadioBuendia1).
padre(joseArcadioBuendia,aurelianoBuendia).
padre(ursulaIguaran,aurelianoBuendia).
padre(joseArcadioBuendia,amarantaBuendia).
padre(ursulaIguaran,amarantaBuendia).
padre(joseArcadioBuendia1,arcadioBuendia).
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
hijo(X,Y):- padre(Y,X).
hermano(X,Y):- padre(Z, X),padre(Z, Y).
abuelo(X,Y):- padre(X,Z),padre(Z,Y).
nieto(X,Y):- abuelo(Y,X).
tio(X,Y):- padre(Z, Y),hermano(Z, X).
sobrino(X,Y):- tio(Y,X).
primo(X, Y):- padre(Z, X),tio(Z, Y).

casados(X,Y):- padre(X,Z),padre(Y,Z).
feliz(X):- casados(X,_).

familiarde(A,B) :- padre(A,B), A\==B.
familiarde(A,B) :- hermano(A,B), A\==B.
familiarde(A,B) :- tio(A,B), A\==B.
familiarde(A,B) :- primo(A,B), A\==B.
familiarde(A,B) :- abuelo(A,B), A\==B.
familiarde(A,B) :- nieto(A,B), A\==B.

familiaresDe(X,L):- findall(B,familiarde(X,B),L).
