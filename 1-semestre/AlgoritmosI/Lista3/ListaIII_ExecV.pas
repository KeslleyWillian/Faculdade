Program ListaIII_ExercV ;
var 
ze, chico : real;
ano: integer;
Begin
	ze:= 1.10;
	chico:=1.50;
	while (ze <= chico) do
	begin
		ze:=ze+0.03;
		chico:=chico+0.02;
		ano:=ano+1;
	end;
	writeln ('Zé sera mais alto em ',ano,' anos com ',ze,' metros e Chico com ',chico,' metros');
End.