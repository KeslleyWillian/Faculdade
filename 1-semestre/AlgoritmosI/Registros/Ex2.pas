Program Pzim ;
type
	fracao = record
		numerador : integer;
		denominador : integer;
	end;
var
	primeiraf : fracao;
	segundaf : fracao;
	i : integer;
	soma, sub, mult, divi : real;
Begin

	write('Digite o numerador da primeira fra��o: ');
	read(primeiraf.numerador);
	write('Digite o denominador da primeira fra��o: ');
	read(primeiraf.denominador);
	write('Digite o numerador da Segunda fra��o: ');
	read(Segundaf.numerador);
	write('Digite o denominador da Segunda fra��o: ');
	read(Segundaf.denominador);
	
	soma := ((segundaf.denominador * primeiraf.numerador) + (primeiraf.denominador * segundaf.numerador)) / (primeiraf.denominador * segundaf.denominador);
	write('A soma das fra��es � ',soma); 
	
	sub := ((segundaf.denominador * primeiraf.numerador) - (primeiraf.denominador * segundaf.numerador)) / (primeiraf.denominador * segundaf.denominador);
	write('A subtra��o das fra��es � ',sub); 
	
	mult := (primeiraf.numerador * segundaf.numerador) / (primeiraf.denominador * segundaf.denomidor);
	write('A multiplica��o das fra��es � ', mult);
	
	divi := (primeiraf.numerador / primeiraf.denominador) * (segundaf.denominador / segundaf.numerador);
	write('A divis�o das fra��es � ', divi);
	
	
	
	

End.