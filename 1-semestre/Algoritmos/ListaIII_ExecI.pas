Program ListaIII_ExercI ;
var 
i, soma: integer;
Begin
	Soma:= 0;
	For i:= 1 to 100 do
	begin
		Soma := Soma + i;
	end;
		writeLn('A soma é: ', soma);  
	readkey;
End.