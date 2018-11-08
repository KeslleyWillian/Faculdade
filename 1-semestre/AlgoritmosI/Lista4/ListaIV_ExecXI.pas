Program Pzim ;
var
   num: array [1..5] of real;
   cont: array [1..5] of integer;
   n, i, j, maiorcont: integer;
Begin
	write('Quantidade de numeros: ');
	read(n);
	
	while (n<1) or (n>5) do
	begin
		writeln('Quantidade inválida. Try again');    
		write('Quantidade de numeros: ');
		read(n);
	end;
	
	for i:=1 to n do
	begin
		write('[',i,']: ');
		read(num[i]);
		cont[i] := 1;
	end;
	
	maiorcont := 0;
	for i := 1 to n do 
		if cont[i] > 0 then
		begin	
		{O j é o contador que vai percorrer o vetor para comparar}
			for j := i + 1 to n do
				if num[i] = num[j] then
				begin
					cont[i] := cont[i] + 1;
					cont[j] := -1;
				end;
			if cont[i] > maiorcont then
				maiorcont := cont[i];		
		end;
	
	for i:= 1 to n do
		if cont[i] = maiorcont then
			writeln(num[i]);
	
End.