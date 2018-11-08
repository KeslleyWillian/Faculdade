Program Pzim ;
type
cadastro = record
  codigo:integer  ;
  Nome,email:string;
  qtdAcesso:real ;
  pagina: string;
	total:real
end;
var
cliente : array [1..2] of cadastro;
i : integer;
aux : real;
Begin
	for i := 1 to 2 do
	begin
		write('Nome: ');
		readln(cliente[i].nome);  
		write('Código: ');
		readln(cliente[i].codigo);
		write('E-mail: ');
		readln(cliente[i].email);
		write('Número de horas de acesso: ');
		readln(cliente[i].qtdAcesso);   
		write('Página (s/n): ');
		readln(cliente[i].pagina);
		
		if (cliente[i].qtdAcesso > 20) then 
		begin
			aux := cliente[i].qtdAcesso - 20;
			aux := aux * 2.5;
			cliente[i].total := aux + 35
		end
		else
			cliente[i].total := cliente[i].qtdAcesso * 1.75;
		
		if (cliente[i].pagina = 's') then
			cliente[i].total := cliente[i].total + 40;		
	end;

	
	writeln();        
	write('NOME');
	writeln('VALOR':9);
	for i := 1 to 2 do 
	begin
		write(cliente[i].nome);		
		writeln(cliente[i].total:10);
	end;
  
End.