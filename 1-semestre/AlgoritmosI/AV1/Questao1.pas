Program Questao1 ;
{Fazer um alg. que lê um número inteiro positivo, representando um numerona base binaria e escrever o orrespondente decimal }
var
	binario, decimal, d, bin : integer;
Begin
	write('Digite um número binário: ');
	read(binario);
	decimal := 0;
	bin := 1;
	
	while (binario > 0) and (d >= 0) and (d <= 1)do
		begin
			d := binario mod 10; {para pegar o resto}
			binario := binario div 10; {para o quociente}
			decimal := decimal + d * bin;
			bin := bin * 2;	
		end; 
		if (binario = 0) then
			write ('Correspondente decimal: ', decimal)
		else
			write ('Binario inválido'); 
End.