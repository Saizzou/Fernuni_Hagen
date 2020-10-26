program EURBetrag2 (input, output);
{ EUR Betrag ausgeben mit }

	const
	WAEHRUNG = 'EUR';
	
	var
	Betrag : real;
	
begin
	write ('Bitte ', WAEHRUNG, '-Betrag (< 1 Mio.) ';
	write ('angeben: ');
	readln (Betrag);
	if Betrag >= 0.0 then
		write (Betrag:9:2, WAEHRUNG)
end. { EURBetrag2 }
