Program Pzim ;
type
	cadastro_pessoa = record
		nome : string;
		altura : real;
		peso : real;
		cpf : string;
		sexo : string;
	end;

var
	pessoa : array [1..2] of cadastro_pessoa;
	i,j : integer;
	cpf_procura : string;
	imc : real;
Begin
	for i := 1 to 2 do
	begin
		writeln('Cadastro da ',i,'ª pessoa: ');
		writeln('Nome: ');
		read(pessoa[i].nome);
		writeln('altura: ');
		read(pessoa[i].altura);
		writeln('Peso: ');
		read(pessoa[i].peso);
		writeln('CPF: ');
		read(pessoa[i].cpf);
		writeln('Sexo: ');
		read(pessoa[i].sexo);
	end;
	writeln();
	writeln('Digite um CPF para enontrar um registro: ');
	read(cpf_procura);
	for j := 1 to 2 do
	begin
		if (cpf_procura = (pessoa[j].cpf)) then
		begin
			writeln('Cadastro encontrado. Nome: ',pessoa[j].nome);
			imc := (pessoa[j].peso / (pessoa[j].altura*pessoa[j].altura));
			writeln(pessoa[j].nome, 'tem IMC = ',imc);
		end;
	end;
	
	 
  
End.