Program ListaIII_ExercIV ;
var 
num: integer;
Begin
	write ('Escreva um n�mero: ');
	read(num);
	while num < 3000 do
	begin
		num:= num * 2;
		if num < 3000 then
		writeln (num);
	end;
		writeln('O pr�ximo j� seria maior que 3000');
End.