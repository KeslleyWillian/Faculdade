Program Pzim ;
var
mat: array[1..4, 1..4] of integer;
l, c, sDP : integer;
Begin
	sDP := 0;
	for l := 1 to 4 do
	begin
  	for c := 1 to 4 do
  	begin                      
  		writeln(' ');     
  		write('Insira um valor para a Posição [',l,',',c,']: ');
  		read(mat[l,c]);  
			if (l = c) then
			sDP := sDP + mat[l,c];                
  	end;
	end;
	
	for l := 1 to 4 do
	begin
  	for c := 1 to 4 do
  	begin                      
  		write(mat[l,c]:3);                
  	end;
  	writeln(' ');
	end;
  
End.