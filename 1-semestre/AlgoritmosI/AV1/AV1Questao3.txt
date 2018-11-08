Program Pzim {Calcular valor de pi com prcisão de 0.0001 usando: pi = 4 - 4/3 + 4/5 - 4/7 + 4/9 - 4/11 + ... };
var 
	termo, npi : real;
	divisor, sinal : integer;		
Begin
	termo:= 4;
	divisor:= 1;
	sinal:= 1;
	npi := 0;  
	while (termo >= 0.0001) do
		begin
			npi := npi + termo * sinal;
			sinal := sinal * (-1);
			divisor := divisor + 2;
			termo :=4 / divisor;
		end;
		write ('O valor de pi é ', npi);
End.