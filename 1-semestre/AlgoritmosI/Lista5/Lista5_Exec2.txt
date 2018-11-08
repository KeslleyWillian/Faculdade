Program {Codificação da mensagem} ;
var
palavra : string;
i,n, vogal, consoante : integer;

Begin
	writeln('Mensagem: ');
	read(palavra);
	n := length(palavra);
	i := 1;
	while (i <= n) do
	begin
		if (palavra[i] = 'X') then
		palavra[i] :=  'A';
		if (palavra[i] = 'x') then
		palavra[i] :=  'a';
		if (palavra[i] = 'Y') then
		palavra[i] :=  'B';
		if (palavra[i] = 'y') then
		palavra[i] :=  'b';
		if (palavra[i] = 'Z') then
		palavra[i] :=  'C';
		if (palavra[i] = 'z') then
		palavra[i] :=  'c';
	i := i + 1;
	end;
	writeln ('Mensagem codificada:');
	writeln (palavra) ;

  
End.