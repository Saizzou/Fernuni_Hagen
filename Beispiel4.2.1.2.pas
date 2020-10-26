program FolgenMaximum (input, output);
{ liest eine Folge von 5 integer-Zahlen ein
und bestimmt das Maximum }

	const
	FELDGROESSE = 5;

	type
	tIndex = 1..FELDGROESSE;
	tZahlenFeld = array [tIndex] of integer;

	var
	Feld : tZahlenFeld;
	Maximum : integer;
	i : tIndex;

begin
	{ Einlesen des Feldes }
	writeln ('Geben Sie ', FELDGROESSE:2, ' Werte ein:');
	
	for i := 1 to FELDGROESSE do
		readln (Feld[i]);
	{ Bestimmen des Maximums }
	Maximum := Feld[1];
	
	for i := 2 to FELDGROESSE do
		if Feld[i] > Maximum then
			Maximum := Feld[i];
	{ Ausgabe des Maximums }
	
	writeln ('Die groesste Zahl ist ', Maximum, '.')
end. { FolgenMaximum }
