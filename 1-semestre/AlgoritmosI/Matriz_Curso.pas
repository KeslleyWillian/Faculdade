Program Pzim ;
var
mat: array[1..3, 1..2] of integer;
l, c : integer;
Begin
	for l := 1 to 3 do
	begin
  	for c := 1 to 2 do
  	begin                      
  		writeln(' ');     
  		writeln('----------Posição [',l,',',c,']----------');
  		write('Insira um valor para a linha ',l,' da coluna ',c,': ');
  		read(mat[l,c]);                
  	end;
	end;
	
	for l := 1 to 3 do
	begin
  	for c := 1 to 2 do
  	begin                      
  		write(mat[l,c]:3);                
  	end;
  	writeln(' ');
	end;
  
End.