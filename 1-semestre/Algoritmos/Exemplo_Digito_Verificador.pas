Program Exemplo_Digito_Verificador ;
var 
num, dig, soma, multiplicador : integer;
Begin
	write('N�mero: ');
	read(num);
	soma := 0;
	multiplicador := 2;
	{N�o d� para usar for pq n�o sabemos  quantidade de d�gitos; D� para usar while}
	repeat
		{Dessa forma, � poss�vel pegar o ultimo d�gito. Ex: 123 / 10 resto=3}
		soma := (Num mod 10)*multiplicador + soma;
		{Atualizar o multplicador}
		multiplicador := multiplicador + 1;
		{Eliminar o �ltimo d�gito. Ex: 123 / 10 quonciente=12}
		num := num div 10;
	until(num = 0);
	dig := 11-(soma mod 11);
	if dig >= 10 then
		dig := 0;
	write('D�gito verificador: ', dig);       
	readkey                    
End.