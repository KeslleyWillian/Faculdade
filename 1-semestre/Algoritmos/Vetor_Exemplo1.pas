Program VETOR_I ;
const Max = 6;
var
 Nota: array[1..Max] of real;
 media : real;
 alunos_acima : integer;
 i: integer;
Begin
	media := 0;
	alunos_acima := 0;
	writeln('Digite as notas dos alunos');
	writeln(' ');
  for i := 1 to Max do
  begin
  	write('Digite a nota do aluno ',i,': ');
		read (Nota[i])
	end;
	for i:= 1 to Max do
	   media := media + nota[i];
	media := media / Max;
	for i := 1 to Max do
		if nota[i] > media then
			alunos_acima := alunos_acima + 1;
	writeln(alunos_acima, ' passaram da média (média = ',media,')');                     
  
End.