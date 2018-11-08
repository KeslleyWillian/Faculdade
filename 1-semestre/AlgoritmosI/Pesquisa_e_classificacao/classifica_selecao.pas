Program Cassificaca_selecao;
const
	max = 20;
var
	vet: array [1..max] of integer;
	i,j,menor, aux : integer;
Begin
	randomize;
	writeln('Vetor gerado: ');
	for i := 1 to max do
	begin
		vet[i] := random(10*max); //Entre 10 e max
		write(vet[i],' ');
	end;
	
	for i := 1 to max-1 do  //Não tem motivo para ordenar apenas um elemento
	begin
		menor := i;
		for j := i+1 to max do
		begin
			if vet[j] < vet[menor] then
				menor := j;
		end;
		if menor <> i then     //Pode ser que o elemento já esteja na posição correta
		begin
			aux := vet[i];
			vet[i] := vet[menor];
			vet[menor] := aux;
		end;
	end; 
	writeln;
	writeln('Vetor classificado: ');
	for i := 1 to max do
	begin
		write(vet[i],' ');
	end;
	
  
End.