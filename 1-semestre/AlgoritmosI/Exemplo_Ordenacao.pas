Program OrdenarVetorExemplo ;
	var
	vet: array[1..4] of integer;
	i, j, aux: integer;
Begin
	for i := 1 to 4 do
	begin
		write('Digite um valor: ');
		read(vet[i]);
	end;        
	
	for i := 1 to 3 do
	begin
		for j := i+1 to 4 do 
		begin
			if (vet[i] < vet[j]) then
			begin
				aux := vet[i];
				vet[i] := vet[j];
				vet[j] := aux;
			end;
		end;
	end;
	
	for i := 1 to 4 do
	begin
		write('{',vet[i],'}');		
	end;      
End.