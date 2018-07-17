Program Exemplo_Funcao ;
var
x, y, h, f, g : integer;
Begin
	for x := 1 to 10 do
	begin
		h := x*x - 16;
		if h >= 0 then
			f := h
		else
			f := 1;
		if f = 0 then
			g := x*x + 16
		else
			g := 0;
		y := f + g;
		writeln(x,'-',y);
	end;
	readkey;  
End.