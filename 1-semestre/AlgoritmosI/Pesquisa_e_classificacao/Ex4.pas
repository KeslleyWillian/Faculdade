Program Pzim ;
var
	vetor: array [1..3]of integer;
	i, j, x : integer;
	max : integer;
Begin
	max := 0 ;      //Quantidade de casas usadas
	write('Numero inteiro: ');
  read(x);
  
  while (x >= 0) and (max < 3) do 
  begin
  	i := 1;
		while (i <= max) and (vetor[i] < x) do
			i := i + 1;
		for j := max downto i do
		begin
			vetor[j + 1] := vetor[j];
		end;
		vetor[i] := x;
		max := max + 1;
		
	  if (max < 3 ) then
	  begin
			writeln();
			write('Numero inteiro: ');
	  	read(x);
  	end;
  

  end;
  write('Elementos do vetor');
  for i := 1 to max do
  	write(vetor[i],' ');
  
  
End.