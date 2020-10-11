program pythagoras(input, output);

	var
	a, b, c : integer;
	x : boolean;
	
begin
	readln(a);
	readln(b);
	readln(c);
	begin
	{ kontrolle ob 0 oder negative zahlen eingegeben sind und ob dreieck möglich ist }
		if (a > 0) and (b > 0) and (c > 0) then
			if (a <= b + c) and (b <= a + c) and (c <= a + b) then
				writeln ('Dreieck kann berechnet werden')
			else
				writeln ('Mit diese Werten kann kein Dreieck gebildet werden')
		else
			writeln ('Negative zahl ist eingegeben. Bitte nur zahlen grösser als 0 eingeben');
	end;
	begin
	{ die eingegebene werten sortieren }
		if a > b then
			if a > c then
				if sqr(a) = sqr(b) + sqr(c) then
					x := True
				else
					x := False
			else
				if sqr(c) = sqr(a) + sqr(b) then
					x := True
				else
					x := False
		else
			if b > c then
				if sqr(b) = sqr(a) + sqr(c) then
					x := True
				else
					x := False    
			else
				if sqr(c) = sqr(a) + sqr(b) then
					x := True
				else
					x := False
	end;
	writeln(x);
end.
