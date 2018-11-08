Program Pzim ;
	var
	n, i : integer;
	nota: array[1..100] of real;
	media, somamedia: real;
Begin
	write('Informe a quantidade números que será calculada a média: ');
	read(n);  
	while (n < 1) or (n > 100) do
	begin
		writeln ('Valor indisponível. Tente novamente.');
	  write('Informe a quantidade números que será calculada a média: ');
	  read(n);
	end;  
	for i := 1 to n do
	begin
		write('Valor [',i,']: ');
		read(nota[i]);	
		somamedia := somamedia + nota[i];
	end;
	media := (somamedia / 2);
	write('A média entre os números informados é: ',media:4:1);	

	   
End.