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

	write('Digite o numerador da primeira fração: ');
	read(primeiraf.numerador);
	write('Digite o denominador da primeira fração: ');
	read(primeiraf.denominador);
	write('Digite o numerador da Segunda fração: ');
	read(Segundaf.numerador);
	write('Digite o denominador da Segunda fração: ');
	read(Segundaf.denominador);
	
	soma := ((segundaf.denominador * primeiraf.numerador) + (primeiraf.denominador * segundaf.numerador)) / (primeiraf.denominador * segundaf.denominador);
	write('A soma das frações é ',soma); 
	
	sub := ((segundaf.denominador * primeiraf.numerador) - (primeiraf.denominador * segundaf.numerador)) / (primeiraf.denominador * segundaf.denominador);
	write('A subtração das frações é ',sub); 
	
	mult := (primeiraf.numerador * segundaf.numerador) / (primeiraf.denominador * segundaf.denomidor);
	write('A multiplicação das frações é ', mult);
	
	divi := (primeiraf.numerador / primeiraf.denominador) * (segundaf.denominador / segundaf.numerador);
	write('A divisão das frações é ', divi);
	
	
	
	

End.