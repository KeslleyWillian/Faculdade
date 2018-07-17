Program Exemplo_Digito_Verificador ;
var 
num, dig, soma, multiplicador : integer;
Begin
	write('Número: ');
	read(num);
	soma := 0;
	multiplicador := 2;
	{Não dá para usar for pq não sabemos  quantidade de dígitos; Dá para usar while}
	repeat
		{Dessa forma, é possível pegar o ultimo dígito. Ex: 123 / 10 resto=3}
		soma := (Num mod 10)*multiplicador + soma;
		{Atualizar o multplicador}
		multiplicador := multiplicador + 1;
		{Eliminar o último dígito. Ex: 123 / 10 quonciente=12}
		num := num div 10;
	until(num = 0);
	dig := 11-(soma mod 11);
	if dig >= 10 then
		dig := 0;
	write('Dígito verificador: ', dig);       
	readkey                    
End.