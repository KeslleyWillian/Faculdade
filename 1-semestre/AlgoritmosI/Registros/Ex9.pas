Program Pzim ;
type
cadastro = record
	codigo:integer;
	tipo:string;
	semana : array [1..6] of integer;
	media : real;
end;

const max=2;
var
i,j,soma : integer;
produto : array [1..max] of cadastro;
total: array [1..6] of integer;                 
media: array [1..6] of real; 


procedure subprograma();
	begin
		for i := 1 to max do
		begin
			writeLN('***',i,'º PRODUTO***');
			write('Código: ');
			readln(produto[i].codigo);
			write('Tipo: ');
			readln(produto[i].tipo);
			for j := 1 to 6 do
			begin
				write('Quantidade de produtos vendidos no ',j,'º dia da semana: ');
				read(produto[i].semana[j]);
			end;
			writeln();
		end;
	end;
Begin
	subprograma();
	//Produto i foi vendido x vezes na semana. Dividido por 6, a média é y
	for i := 1 to max do
	begin    
		soma := 0;
		for j := 1 to 6 do
		begin
			soma := soma + produto[i].semana[j];
		end;
			total[i] := soma;
			media[i] := soma/6; 
	end;
	writeln();
	write('PRODUTO':8);
	write('TOTAL':8);
	writeln('MEDIA':8);
	for i := 1 to max do 
	begin
		write(produto[i].codigo:8:0);
		write(total[i]:8:0);
		write(media[i]:8:1);
		writeln();
	end;
End.