Program Pzim ;
const max = 5;
var
vetor, posicao : array [1..max] of integer;
i, busca : integer;
achou : boolean;
Begin
	for i := 1 to max do
	begin
		write('Posi��o [',i,']: ');
		read(vetor[i]);	
	end;
	write('Busque um n�mero: ');
	read(busca);
	for i := 1 to max do
	begin
		if (vetor[i] = busca) then
		begin
			posicao[i] := i;
			achou := true 
		end;
	end;
	if (achou = true) then
		begin
			for i := 1 to max do
			begin
				if (vetor[i] = busca) then 
					writeln('Valor encontrado. Posi��o ',posicao[i])	
			end;
		end
	else
		writeln('Valor n�o encontrado');
End.