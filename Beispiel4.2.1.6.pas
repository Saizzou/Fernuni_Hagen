program VokaleUndKonsonanten (input, output);
{ bestimmt in einem einzulesenden Satz die Anzahl der
vorkommenden Vokale und Konsonanten }

	type
	tBuchst = 'a'..'z'; { eine Liste mit alle Buchstaben }
	tNatZahl = 0..maxint; { unser zaehler fur die Liste. Dies dient um die wiederholende buchstaben zu zaehlen }
	tHaeufigkeit = array [tBuchst] of tNatZahl; { der array dient hier für eine erstellung von einer Liste wie oft der Buchstabe vorkommt }
	
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
	while Zeichen <> '.' do { dies ist unsere konfiguration damit unser Program dem Punkt erkennt und bis dahin die buchstaben zaehlt }
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
