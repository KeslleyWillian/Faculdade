Program Questao11 {Encontrar a SUB na FRASE e retornar qual a posição} ;
var
frase, sub : string;
i,j, posicao: integer;
Begin
	write('Frase: ');
	read(frase);
	write('Sub: ');
	read(sub);
	i := 1;
	posicao := 0;
	frase := upcase(frase);
	sub := upcase(sub); {Deinindo Upper por preucaução}
	while (posicao = 0) and (i <= (length(frase) - length(sub)+1)) do {Sem o +1 ele passa para a casa anterior}
	begin
	  j := 1;
	  posicao := i;
	  while (j <= length(sub)){Não faz sentido continuar depois que j for maior que o tamanho}
		and (frase[i] = sub[j]) do  {Quando encontrar as casas iguais, adiciona-se 1 a i e j}
	  begin
	  	i := i + 1;
	  	j := j + 1;
		end;
		if j <= length(sub) then {Ele chegou no nfinal da sub e não encontrou, ué}
		begin
			i := posicao + 1;
			posicao := 0
			{voltando ao etado inicial para repetir o primeiro while}
		end;
	end;
	if posicao = 0 then
		write ('Não foi encontrado')
	else
		write ('Encontrado na posicao ', posicao);
End.