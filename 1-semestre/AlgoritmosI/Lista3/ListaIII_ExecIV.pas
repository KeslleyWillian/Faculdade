Program ListaIII_ExercIV ;
var 
num: integer;
Begin
	write ('Escreva um número: ');
	read(num);
	while num < 3000 do
	begin
		num:= num * 2;
		if num < 3000 then
		writeln (num);
	end;
		writeln('O próximo já seria maior que 3000');
End.