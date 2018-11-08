Program Pzim ;
var 
frase : string;
i : integer;
Begin
	write ('frase: ');
	read(frase);
	i:= 1;
	for i := 1 to length(frase) do
	begin
		if (frase[i] = ' ') then
			delete (frase, i, 1);
	end;
	write(frase);
  
End.