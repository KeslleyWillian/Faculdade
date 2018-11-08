Program Pzim ;
type
	ponto = record
		x,y : real;
	end;
var
	ponto1,ponto2,ponto3 : ponto;
	dist, hip, aux : real;
	lados : array [1..3] of real;
	i,j : integer;
Begin
	writeln('Quais são as coordenadas do ponto 1?');
	write('x = ');
	readln(ponto1.x);
	write('y = ');
	readln(ponto1.y);
	writeln('Quais são as coordenadas do ponto 2?');
	write('x = ');
	readln(ponto2.x);
	write('y = ');
	readln(ponto2.y);
	writeln('Quais são as coordenadas do ponto 3?');
	write('x = ');
	readln(ponto3.x);
	write('y = ');
	readln(ponto3.y);
	
	//Aplica-se a fórmula da distância entre dois pontos
	dist := sqrt((sqr(ponto2.x - ponto1.x)) + (sqr(ponto2.y - ponto1.y)));
	lados[1] := dist;
	dist := sqrt((sqr(ponto3.x - ponto2.x)) + (sqr(ponto3.y - ponto2.y)));
	lados[2] := dist;
	dist := sqrt((sqr(ponto1.x - ponto3.x)) + (sqr(ponto1.y - ponto3.y)));
	lados[3] := dist;
	
	//Ordenação
	//A hipotenusa é o maior lado do triângulo retângulo, logo ela vai para o final do vetor
	for i := 1 to 3 do 
	begin
		for j := i+1 to 3 do
		begin
			if lados[j] < lados[i] then
			begin
				aux := lados[i];
				lados[i] := lados[j];
				lados[j] := aux;
			end;
		end;
	end; 
	
	hip := lados[3];
	if (sqr(lados[1]) + sqr(lados[2]) = sqr(hip)) then 
		write('Os pontos podem ser vértices de um triângulo retângulo')
	else                      
		write('Os pontos NÃO podem ser vértices de um triângulo retângulo');
End.