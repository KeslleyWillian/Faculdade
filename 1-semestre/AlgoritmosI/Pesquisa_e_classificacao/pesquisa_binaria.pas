Program Pesquisa_Binaria ;
const max = 5;
var
vetor, posicao : array [1..max] of integer;
i,j, busca, aux , comeco, meio, final: integer;
achou : boolean;
Begin
  for i := 1 to max do
  begin
    write('Posição [',i,']: ');
    read(vetor[i]);
  end;
  
  {Bolha }
  for i := 1 to max-1 do
  begin
  	for j := i+1 to do
  	begin
  		if (vetor[i] > vetor[j]) then
  		begin
    		aux := vetor[i];
    		vetor[i]:=vetor[j];
    		vetor[j]:= aux;
  		end;
  	end;
  end;
  
  
	{Pesquisando..}
  writeln();
  write('Busque um número: ');
  read(busca);
  
	comeco:=1;
  final:= max;
  achou:=false;
  while (comeco <= final) and (achou = false) do
  begin
    meio:=(comeco+final) div 2;
    if (busca = vetor[meio]) then
    	achou:=true
    else
    
		if (busca < vetor[meio]) then
    	final := meio-1
    else
    	comeco := meio+1;
  end;
  
  if (achou = true) then
  	writeln(busca, ' foi localizado na posicao ', meio:2)
  else
  	writeln(busca, ' não foi localizado');
  
  
END.