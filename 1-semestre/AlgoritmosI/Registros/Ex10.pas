Program Pzim ;
type
cadprod = record
	codigo, unestq: integer;
	undisp, qtdmin: array [1..5] of integer;
end;
const max = 3;
var
produto : array [1..max] of cadprod;
i,j,codbusca_prod, codbusca_loja:integer;

procedure consulta_geral();
begin
	//ler o código de uma mercadoria e informar seu estoque em cada uma das lojas;
	write('Busque por uma mercadoria: ');
	readln(codbusca_prod);
	i := 1; 
	while (i < max) and (codbusca_prod <> produto[i].codigo) do
		i := i + 1;
	
	if (codbusca_prod = produto[i].codigo)then
	begin
		for j := 1 to 5 do
			writeln(produto[i].undisp[j],' unidades disponíveis na Loja ',j);
	end;
	
	if (i = max) and (codbusca_prod <> produto[i].codigo) then
		writeln('Mercadoria não encontrada'); 
end;

procedure consulta_especifica();
begin
	//ler o código de um produto e o número correspondente a loja, e informar o estoque dessa mercadoria nessa loja;
	write('Busque por uma mercadoria: ');
	readln(codbusca_prod);
	write('Busque por uma loja: ');
	readln(codbusca_loja); 
	i := 1;
	while (i < max) and (codbusca_prod <> produto[i].codigo) do
		i := i + 1;
	
	if (codbusca_prod = produto[i].codigo)then
	begin
			writeln(produto[i].undisp[codbusca_loja],' unidades disponíveis');
	end;
	
	if (i = max) and (codbusca_prod <> produto[i].codigo) then
		writeln('Mercadoria não encontrada');  
end;

procedure atualiza();
begin
	//Atualizar o estoque de uma determinada loja, de acordo com o  código  da mercadoria vendida e o  número  de unidades vendidas
	//Verificar se a loja possui o número de unidades requeridas. Caso  não  possua, verificar se existem unidades no estoque geral, atualizando então os dois estoques (o da loja e o geral)

end;
Begin
produto[3].codigo := 1;   
produto[3].unestq := 20;
produto[3].undisp[1] := 5;
produto[3].qtdmin
consulta_especifica();
End.