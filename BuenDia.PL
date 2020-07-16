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
nieto(X,Y):- padre(Y,C), padre(C,X).
casados(X,Y):- padre(X,Z),padre(Y,Z).
felices(X):- casados(X,_).
esHermano(X, Y):- padre(Z, X),padre(Z, Y).
esTio(X, Y):- padre(Z, Y),esHermano(Z, X).
esPrimo(X, Y):- padre(Z, X),esTio(Z, Y).
esAbuelo(X, Y):- padre(X,Z),padre(Z, Y).