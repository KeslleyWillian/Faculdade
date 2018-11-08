Program Pzim ;
type
	ponto = record
		x,y : real;
	end;
var
	ponto1,ponto2 : ponto;
	dist : real;
Begin
	writeln('Quais são as coordenadas do ponto 1?');
	write('x = ');
	readln(ponto1.x);
	write('y = ');
	readln(ponto1.y);
	writeln('Quais são as coordenadas do ponto 2?');
	write('x = ');
	readln(ponto2.x);
	write('y = ');
	readln(ponto2.y);
	
	dist := sqrt((sqr(ponto2.x - ponto1.x)) + (sqr(ponto2.y - ponto1.y)));
	write('A distância entre P1 e P2 é ',dist:0:1);
	
  
End.