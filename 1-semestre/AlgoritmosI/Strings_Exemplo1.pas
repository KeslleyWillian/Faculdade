Program Pzim ;
var
palavra : string;
i,n : integer;
Begin
	write('PAlavra: ');
	read(palavra);
	n := length(palavra);
	i := 1;
	
	while(i <= n div 2) and (palavra[i] = palavra[n-i+1]) do
		i := i + 1;
	if i > n div 2 then
		write ('� pal�ndrono')
	else
		write ('N�o � palindromo');  
End.
{L�gica: max - i + 1}
{Porque o i � inicializado com 1}