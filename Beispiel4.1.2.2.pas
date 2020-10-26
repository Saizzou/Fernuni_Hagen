program ggTBerechnung (input, output);
{ berechnet den groessten gemeinsamen Teiler zweier
einzulesender integer-Zahlen x und y groesser Null }
	var
	x,
	y : integer;
begin
	writeln ('Bitte geben Sie 2 natuerliche Zahlen > 0 ',
	'ein:');
	readln (x);
	readln (y);
	if (x <= 0) or (y <= 0) then
		writeln ('Eingabefehler!')
	else
	begin
		write ('Der ggT von ', x, ' und ', y, ' ist ');
		{ Ausgabe von x und y schon hier, da nach der
		while-Schleife die Originalwerte nicht mehr
		existieren }
		while x <> y do
			if x > y then
				x := x - y
			else
				y:= y - x;
		writeln (x, '.')
	end
end. { ggTBerechnung }
