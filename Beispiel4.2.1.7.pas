program Median (input, output);
{bestimmt den Median einer einzugabenden Buchstabenfolge
aus minndestens zwei verschiedenen Kleinbuchstaben }

	type
	tBuchst = 'a'..'z';
	tNatZahl = 0..maxint;
	tFeld = array [tBuchst] of boolean;
	
	var
	vorhanden : tFeld;
	gesamt,
	i,
	MedianPos : tNatZahl;
	Buchstabe : tBuchst;
	Zeichen : char;
	
begin
	{ Eingabe anfordern }
	writeln ('Geben Sie eine Kleinbuchstabe Folge ein.');
	writeln ('Eingabe endet durch ein anderes Zeichen,');
	{ ACHTUNG! Leer zeichen ist auch ein anderes zeichen!!! }
	
	for Buchstabe := 'a' to 'z' do
		vorhanden[Buchstabe] := false;
	gesamt := 0;
	{ hier setzen wir buchstabe zahl auf 0 und alle
	buchstaben auf false }
	
	{ Einlesen und Markierungen setzen }
	read (Zeichen);
	
	while (Zeichen >= 'a') and (Zeichen <= 'z') do
	begin
		if not vorhanden[Zeichen] then
		begin
			vorhanden[Zeichen] := True;
			gesamt := gesamt + 1
		end;
		read (Zeichen)
		{ aktualisierung der Zeichen Liste }
	end;
	writeln;
	
	{ Alle Buchstaben und Marken ausgeben }
	for Buchstabe := 'a' to 'z' do
		write (Buchstabe,' ');
	writeln;
	{ Hier wird eine volle liste erstellt }
	
	for Buchstabe := 'a' to 'z' do
		if vorhanden[Buchstabe] then
			write('*',' ')
		else
			write ('  ');
		writeln;
		
		{ Median suchen }
		MedianPos := (gesamt + 1) div 2;
		Buchstabe := 'a';
		i := 0;
		repeat
			if vorhanden[Buchstabe] then
				i := i + 1;
				Buchstabe := succ (Buchstabe)
				{ Da i=0 war haben wir erst +1 gemacht dann mit succ
				ein buchstabe zurück gesetzt. Dies wurde gemacht damit
				wir die Liste "vorhanden" erstellen können }
				
		until i = MedianPos;
		writeln ('Der Median ist: ', pred (Buchstabe), '.')
end.

