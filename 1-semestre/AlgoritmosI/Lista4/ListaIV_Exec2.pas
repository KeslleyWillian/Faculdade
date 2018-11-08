Program Pzim ;
var
	vet: array [1..100] of integer;
	n, i, j, aux: integer;
Begin
	write('Informe a quantidade números que serão ordenados: ');
	read(n);
	while (n < 1) or (n > 100) do
	begin
		writeln ('Valor indisponível. Tente novamente.');
	  write('Informe a quantidade números que serão ordenados: ');
	  read(n);
	end;  
	
	for i := 1 to 4 do
	begin
		write(i,'º valor: ');
		read(vet[i]);
	end;  
	
	for i := i to (n-1) do
	begin
		for j := i+1 to n do
		begin
			if (vet[i] < vet[j]) then
			begin
				aux := vet[i];
				vet[i] := vet[j];
				vet[j] := aux;
			end;
		end; 
	end; 
  
  for i := 1 to n do
  begin
  	write('{',vet[i],'}');
  end;
End.