Program Pzim ;
type
	cadastro = record
		nome : string;
		niver : record
			dia : string;
			mes : string
		end;
	end;
var 
	pessoas : array [1..3] of cadastro;
	i : integer;
	busca : string; 
Begin
	for i := 1 to 3 do
	begin
		Write('Nome: ');
		readln(pessoas[i].nome);
		write('Mês do aniversário: ');
		readln(pessoas[i].niver.mes);
		write('Dia do aniversário: ');
		readln(pessoas[i].niver.dia);
	end;
	
	writeln();
	write('Qual mês você deseja? ');
	read(busca);
	
	write('NOME':1);
	writeln('DIA':9);
	for i := 1 to 3 do
	begin
		if busca = pessoas[i].niver.mes then
		begin
		write(pessoas[i].nome:0);
		writeln(pessoas[i].niver.dia:10);
		end;
	end;
  
End.