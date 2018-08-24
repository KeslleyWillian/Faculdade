Program Pzim ;
const N = 10;
var 
m : array [1..N,1..N] of integer;
i,j, aux : integer;
Begin
	randomize;
	for i := 1 to N do 
		for j := 1 to N do
			m[i,j] := random(1000);
	
	{Elabore um programa que preencha uma matriz 10x10 com
números inteiros, execute as trocas especificadas a seguir e
mostre a matriz resultante:  }
		
	writeln('Matriz gerada oriinalmnte');
	for i:= 1 to N do
	begin
		for j := 1 to N do
			write (m[i,j], ' ');
		writeln;
	end;
	
	{ a linha 2 com a linha }
	for j := 1 to N do
	begin
		aux := m[2,j];
		m[2,j]:=m[8,j];
		m[8,j]:= aux;
	end;
	
	{a coluna 2com a coluna 10}
	for i := 1 to N do
	begin
		aux := m[i,4];
		m[i,4]:=m[1,10];
		m[i,10]:= aux;
	end; 
	
	{A diagonalprinc com a diagonal secund}
	for i := 1 to N do
	begin
		aux := m[i,i];
		m[i,i]:=m[i,N-i+1];
		m[i,N-i+1]:= aux;
	end; 
	
	{a linha 5 com a coluna 10}
	for i := 1 to N do
	begin
		aux := m[5,i];
		m[5,i]:=m[i,10];
		m[i,10]:= aux;
	end; 
	
	writeln('Matriz gerada resultante');
	for i:= 1 to N do
	begin
		for j := 1 to N do
			write (m[i,j], ' ');
		writeln;
	end;
	
End.