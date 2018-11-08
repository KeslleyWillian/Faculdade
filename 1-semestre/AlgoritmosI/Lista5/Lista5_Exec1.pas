Program Pzim ;
var
palavra : string;
i,n, vogal, consoante : integer;

Begin
	write('Palavra: ');
	read(palavra);
	n := length(palavra);
	i := 1;
	vogal := 0;
	consoante := 0;
	writeln(n, ' caracteres');
	while (i <= n) do
	begin
		if (ord(palavra[i]) = 65) or 
			 (ord(palavra[i]) = 69) or
			 (ord(palavra[i]) = 73) or
			 (ord(palavra[i]) = 79) or  
			 (ord(palavra[i]) = 85) or  
			 (ord(palavra[i]) = 97) or  
			 (ord(palavra[i]) = 101) or  
			 (ord(palavra[i]) = 105) or    
			 (ord(palavra[i]) = 111) or 
			 (ord(palavra[i]) = 117) then 
		vogal := vogal + 1;
		if (ord(palavra[i]) > 65) and (ord(palavra[i]) < 69) or 
			 (ord(palavra[i]) > 69) and (ord(palavra[i]) < 73) or 
	 		 (ord(palavra[i]) > 73) and (ord(palavra[i]) < 79) or 
		   (ord(palavra[i]) > 69) and (ord(palavra[i]) < 85) or 
		   (ord(palavra[i]) > 85) and (ord(palavra[i]) < 97) or 
		   (ord(palavra[i]) > 97) and (ord(palavra[i]) < 101) or 
		   (ord(palavra[i]) > 101) and (ord(palavra[i]) < 105) or 
		   (ord(palavra[i]) > 105) and (ord(palavra[i]) < 111) or 
		   (ord(palavra[i]) > 111) and (ord(palavra[i]) < 117) or 
		   (ord(palavra[i]) > 117) and (ord(palavra[i]) < 123) then
			consoante := consoante + 1;
		i := i + 1;
	end;
	writeln (vogal, ' vogais e ',consoante, ' consoantes');		
	 
  
End.