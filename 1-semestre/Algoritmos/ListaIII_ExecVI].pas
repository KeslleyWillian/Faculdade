Program ListaIII_ExercVI ;
  var num,i,primo:integer;
  begin
	repeat
		primo:=0;  
		write('Escreva um n�mero: ');
    read(num);
    if num>3 then
    begin
	    for i:=1 to num do
	    begin
	      if num mod i =0 then 
					primo:=primo+1;
	     end;
	  end;
     if (primo=2)  (primo=0) then
		 writeln('O numero ',num,' � primo')
         else
				  writeln('O numero ',num,' nao � primo');
	until (num < 1);
	readkey;
End.