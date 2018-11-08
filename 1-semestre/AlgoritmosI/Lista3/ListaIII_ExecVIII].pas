Program Exemplo_Funcao ;
var
mult, num, soma, i: integer;
Begin
mult:= 1;
soma:=0;
num:=0;
i := 1;
	
write('Insira um expoente: ');

	if num > 0 then
	begin
		while i <= num do
		begin
			mult:= mult * 3;
			soma:= soma + mult;
			i:= i+1;
		end;
		writeln(soma+1);
	end;                  
	if num = 0 then
	writeln('1');

End.