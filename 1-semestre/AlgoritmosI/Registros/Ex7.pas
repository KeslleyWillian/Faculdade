Program Pzim ;
type
cadastro = record
  sexo, resposta : string;
  idade : integer;
end;
const max = 2;
var
pessoas : array [1..max] of cadastro;
i,qtdS, qtdN, qtdmais18, qtdmen18, qtdmais18f, qtdmen18m : integer;
Begin
  for i := 1 to max do
  begin
  	write('Sexo(m/f): ');
		readln(pessoas[i].sexo);
		write('Idade: ');
		readln(pessoas[i].idade); 
		write('Resposta(s/n): ');
		readln(pessoas[i].resposta);
		
		if (pessoas[i].resposta = 's') then
			qtdS := qtdS + 1
		else
			qtdN := qtdN + 1;
			
		if (pessoas[i].resposta = 's') and (pessoas[i].idade > 18) then
			qtdmais18 := qtdmais18 + 1;
		
		if (pessoas[i].resposta = 'n') and (pessoas[i].idade < 18) then 
			qtdmen18 := qtdmen18 + 1;
			
		if (pessoas[i].resposta = 's') and (pessoas[i].idade > 18) and (pessoas[i].sexo = 'f') then 
			qtdmais18f := qtdmais18f + 1;
			
		if (pessoas[i].resposta = 's') and (pessoas[i].idade > 18) and (pessoas[i].sexo = 'f') then 
			qtdmen18m := qtdmen18m + 1;
  end;
  writeln(qtdS,' Pessoas gostaram.');
  writeln(qtdN,' Pessoas não gostaram.');  
  writeln(qtdmais18,' Pessoas +18 gostaram.');  
  writeln(qtdmen18,' Pessoas -18 não gostaram.'); 
  writeln(qtdmais18f,' Mulheres +18 gostaram.');
  writeln(qtdmen18m,' Homens -18 não gostaram.');
End.