Program Pzim ;
const Max = 5;
var
Numero : array[1..Max] of integer;
pares, impares, i : integer;
Begin
for i := 1 to Max do
	begin 
	   write('INsira o ',i,'º numero: ');
	   read(Numero[i])
	end  ;
	write ('Numeros impars: ');
	for i:=1 to Max do
		if (Numero[i] mod 2 <> 0) then
			write (Numero[i],', ') ;
	
	writeln ('  ');
	write ('Numeros pares: ');
	for i:=1 to Max do
		if (Numero[i] mod 2 = 0) then  
			write (Numero[i],', ');
		
  
End.