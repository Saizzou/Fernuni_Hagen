program VokaleUndKonsonanten (input, output);
{ bestimmt in einem einzulesenden Satz die Anzahl der
vorkommenden Vokale und Konsonanten }

	type
	tBuchst = 'a'..'z';
	tNatZahl = 0..maxint;
	tHaeufigkeit = array [tBuchst] of tNatZahl;
	
	var
	Anzahl : tHaeufigkeit;
	Zeichen : char;
	Gesamtzahl,
	Vokalzahl : tNatZahl;
	
begin
{ Initialisieren der Zaehler }
	writeln ('Bitte geben sie ein satz ein der mit -.- endet');
	for Zeichen := 'a' to 'z' do
		Anzahl[Zeichen] := 0;
	Gesamtzahl := 0;
	
	{ Zeichenweises Einlesen des Textes und 
	Aufaddieren der Zaehler }
	
	read (Zeichen);
	while Zeichen <> '.' do
	begin
		if (Zeichen >= 'a') and (Zeichen <= 'z') then
		begin	
			Anzahl[Zeichen] := Anzahl[Zeichen] + 1;
			Gesamtzahl := Gesamtzahl + 1
		end;
	read (Zeichen)
	end;
	writeln;
	
	Vokalzahl := Anzahl['a'] + Anzahl['e'] + Anzahl['i'] +
				Anzahl['o'] + Anzahl['u'];
				
	writeln ('Anzahl der Vokale: ', Vokalzahl, '.');
	writeln ('Anzahl der Konsonanten: ', Gesamtzahl - Vokalzahl, '.')
end.
