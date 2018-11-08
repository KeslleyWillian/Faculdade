Program Pzim ;
const Mx = 5;
var
num : array [1..Mx] of integer;
i : integer;
Begin
  i:= 1;
  write('Numero: ');
  read(num[i]);
  while (i < Mx) and (num[i] > 0) do
  begin
    i := i + 1;
    write ('numero: ');
    read (num[i]);
  end;
  if (num[i] < 0) then
  i := i - 1;
  
  writeln(' Ordem inversa: ');
  while (i > 0) do
  begin
    writeln(num[i]);
    i:= i - 1;
  end;
  
End.