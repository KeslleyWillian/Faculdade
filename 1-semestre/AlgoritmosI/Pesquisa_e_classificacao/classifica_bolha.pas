Program Pzim ;
const 
max = 15;
var
	vet: array [1..max] of integer;
	i, aux, m, k : integer;
	trocou: boolean;
	
Begin
randomize;
	writeln('Vetor gerado: ');
	for i := 1 to max do
	begin
		vet[i] := random(10*max); //Entre 10 e max
		write(vet[i],' ');
	end;
	
	trocou := true;
	m := max -1;
	k := 1;        //Menor vetor
	
	while trocou do
	begin
		trocou := false;
		for i := k to m do
			if vet[i] > vet[i+1] then
			begin
				aux := vet[i];
				vet[i] := vet[i+1];
				vet[i+1] := aux;
				trocou := true;
			end; 
			m := m-1;
	end;
	writeln('Vetor classificado: ');
	for i := 1 to max do
		write(vet[i],' ');
  
End.