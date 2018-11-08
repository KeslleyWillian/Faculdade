Program PZI ;
var
palavra : string;
i,j,k,n,falha,sucesso : integer;

Begin
	writeln('String: ');
	read(palavra);
	palavra := upcase(palavra);
	i := 1;
	j := 2;
	k := 3;    
	falha := 0;
	sucesso := 0;
	while i <= (length(palavra)) do
	begin
		if (palavra[i] > palavra[j]) and (palavra[j] < palavra[k]) then    
			sucesso := sucesso + 1
		else
			falha := falha + 1   ;
		i := i + 3;
		j := j + 3;
		k := k + 3;
	end;
	if (falha = 0) then
					writeln('--- SUCESSO ---')
				else
					writeln('--- FALHA ---');


  
End.