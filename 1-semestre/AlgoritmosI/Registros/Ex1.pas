Program Pzim ;
var
    registro : record
    	vetor : array [1..3] of integer;
    	valor : integer;
		end;
		i : integer;
Begin
	for i := 1 to 3 do
	begin
		write('Vetor ',i,': ');
		read(registro.vetor[i]);
		registro.valor := registro.valor + registro.vetor[i];
	end;
	writeln();
	for i := 1 to 3 do 
		writeln('Na ',i,'� casa do vetor est� o n�mero ',registro.vetor[i]);
	writeln();
	write('A soma de todas as casas � ',registro.valor);
	
		
End.