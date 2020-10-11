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
		if (a > 0) and (b > 0) and (c > 0) then
			begin
			{ kontrolle ob Dreieck erstellen möglich ist }
				if (a <= b + c) and (b <= a + c) and (c <= a + b) then
				begin
				{ die eingegebene werten sortieren }
						if (a > b) and (a > c) then
							if sqr(a) = sqr(b) + sqr(c) then
								x := True
							else
								x := False
						else
							if (b > a) and (b > c) then
								if sqr(b) = sqr(a) + sqr(c) then
									x := True
								else
									x := False
							else
								if sqr(c) = sqr(a) + sqr(b) then
									x := True
								else
									x := False    
					end { sortieren }
				else
					x := False
			end { Dreieck erstellung }
		else
			x := False
	end; { Kontrolle 0 und Negativ }
	writeln(x);
end.
