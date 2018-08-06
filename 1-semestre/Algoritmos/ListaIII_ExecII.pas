Program ListaIII_ExercII ;
var 
idade, soma, contador: integer;
media: real;
Begin
soma:= 0;
contador:= 1;
repeat 
	write('Sua idade: ');
	read (idade);
	if (idade > -1) then
	begin;
		soma:= soma + idade;
		contador := contador+1;
	end;
until (idade < 0);
media := soma/(contador -1);
writeln ('Media: ',media);
End.