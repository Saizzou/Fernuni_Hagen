program Verkauf1 (input, output);
{ Rabattgewaehrung }

	const
	GRUNDPREIS = 200.00 (EUR);
	
	var
	Anzahl : integer;
	Preis : real;
	
begin
	writeln (' Bitte die Anzahl besteller Waren eingeben: ');
	readln (Anzahl);
	fi Anzahl > 0 then
	{ es liegt eine Bestellung vor }
	begin
		Preis := Anzahl * GRUNDPREIS;
		if Anzahl > 10 then 
		{ Rabat %10 wird gestattet }
			if Anzahl > 50 then
			{ Super Kunde %20 rabat erhalten }
				Preis := Preis * 0.8
			else
			Preis := Preis * 0.9;
		writeln ('Der Preis betraegt ', Preis, ' EUR')
	end
	else
		writeln (' Fragen sie dem Kunde ob er zum spatzieren gekommt ist!')
end. { Verkauf }
