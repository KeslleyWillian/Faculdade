Program Questao2 {Algoritmo que lê um númeor indeterminado de dados sobre os canais assitidos, sendo que o flag coresponde
									 ao numero de canal igual a 0 .Cacular a porentgem de audiencia de cada emissora ;};
var
	canal, qtdpessoas, canal4, canal7, canal12: integer;
	tvligada: char;
Begin
	canal7 := 0;
	canal4 := 0;
	canal12:= 0;
	repeat
		write('A TV está ligada? (S = Sim)');
		read(tvligada);
		if (tvligada = 'S') or (tvligada = 's') then
		begin
			repeat
				write('Canal sendo assistido: ');
				read(canal);
			until (canal = 4) or (canal = 7) or (canal = 12) or (canal = 0);
			write('Numero de pessoas asstindo: ');
			read(qtdpessoas);
		  case canal of
		  	4: canal4 := canal4 + qtdpessoas;
		 		7: canal7 := canal7 + qtdpessoas;
		  	12: canal12 := canal12 + qtdpessoas;
		  end;
		end;
	until (tvligada = 'n');
	qtdpessoas := canal4 + canal7 + canal12;
	writeln('Audiência do canal 4: ', (canal4 * 100)/qtdpessoas, '%'); 
	writeln('Audiência do canal 7: ', (canal7 * 100)/qtdpessoas, '%');
	writeln('Audiência do canal 12: ', (canal12 * 100)/qtdpessoas, '%');
	
  
End.