Program ListaIII_ExercXXV ;  
var
	n, cont, numerador, denominador, sinal : integer;
	soma: real;
Begin
	write('Quantidade de termos: ');
	read(n);
	sinal := 1;
	soma := 0;
	numerador := 1;
	denominador := 1;
	{Nesse caso, o for funciona pq sabemos que a vari�vel n � o m�ximo}
	{Nesse caso, o repeat n�o funciona pq o usu�rio pode determinar n=0 e essa estrutra roda pelo menos uma vez} 
	{While sempre funciona}
	for cont := 1 to n do
	begin
		{O numerador seguinte � a multiplica��o do numerador anterior +1}
		{Aqui estamos embutindo o fatorial. Ex: A mult. do termo 3! mais o cont(=4) = 24, que � o mesmo que 4x3x2x1=24} 
		{Para ser mais exato, o compilador est� lendo: 1/1 - 2/3 + 6/7 + 24/15 + 120/31...}
		numerador := numerador * cont;
		soma := soma + (sinal * (numerador / denominador));
		sinal := sinal * (-1);
		{O denominador seguinte � o dobro do denominador anterior +1}
		denominador := 2*denominador + 1;
	end;  
   write('a soma dos ',N,' termos � ', soma);
   readkey
End.