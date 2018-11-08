Program Pzim ;
var
mID: array[1..3, 1..3] of integer;
l, c : integer;
Begin
	for l := 1 to 3 do
	begin
  	for c := 1 to 3 do
  	begin 
			if (l = c) then
				mID[l,c] := 1
			else                     
  			mID[l,c] := 0;                
  	end;
	end;
	
	for l := 1 to 3 do
	begin
		write('|');
  	for c := 1 to 3 do
  	begin 
			write(mID[l,c]:3);              
  	end;
  	write('|');
  	writeln(' ');
	end;
End.