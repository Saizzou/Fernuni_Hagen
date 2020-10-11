program pythagoras(input, output);

	var
	a, b, c : integer;
	x : boolean;
	
begin
	readln(a);
	readln(b);
	readln(c);
	begin
	{ kontrolle ob 0 oder negative zahlen eingegeben sind }
		if a > 0 then
			if b > 0 then
				if c > 0 then
				writeln ('Dreieck kann berechnet werden')
			else
		else
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
