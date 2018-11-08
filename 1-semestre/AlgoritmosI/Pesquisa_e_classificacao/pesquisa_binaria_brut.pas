program PESQUISA_BINARIA;
var
nome: array [1..10] of string;
i, j: integer;
comeco, final, meio: integer;
pesq, resp, x: string;
acha: boolean;
BEGIN
  writeln('Pesquisa binaria de nomes: ');
  writeln;
  for i:=1 to 10 do
  begin
    write('Digite o ', i:2, 'o nome: '); readln(nome[i]);
  end;
  
  {Ordenando os nomes }
  for i:= 1 to 9 do
  for j:= i+1 to 10 do
  if (nome[i] > nome[j]) then
  begin
    x:= nome[i];
    nome[i]:=nome[j];
    nome[j]:=x;
  end;
  {Pesquisando..}
  resp:='sim';
  while (resp='sim') or (resp='SIM') do
  begin
    writeln;
    write('Entre o nome a ser pesquisado: '); readln(pesq);
    comeco:=1;
    final:=10;
    acha:=false;
    while (comeco <=final) and (acha=false) do
    begin
      meio:=(comeco+final) div 2;
      if (pesq=nome[meio]) then
      acha:=true
      else
      if (pesq < nome[meio]) then
      final:=meio-1
      else
      comeco:=meio+1;
    end;
    
    if (acha=true) then
    writeln(pesq, ' foi localizado na posicao ', meio:2)
    else
    writeln(pesq, ' não foi localizado');
    writeln;
    write('Deseja continuar? sim/nao: ');
    readln(resp);
  end;
  
END.