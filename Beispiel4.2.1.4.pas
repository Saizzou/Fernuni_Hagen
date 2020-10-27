program FeldSuche (input, output);
{ stelle fest, ob ein Suchwert in einem Feld von bis zu 100
integer-Zahlen vorkommt }

	const
	MAX = 100;
	MAXPLUS1 = 101;
	
	type
	tIndex = 1..MAX;
	tfeld = array [tIndex] of integer;
	tIndexPlus1 = 1..MAXPLUS1;
	
	var
	Feld : tFeld;
	Groesse,
	Suchwert : integer;
	i : tIndexPlus1;
	gefunden : boolean;
	
begin
	{ Eingabe der Feldgroesse solange, bis eine
	Feldgroesse zwischen 1 und MAX eingegeben ist }
	
	repeat
		write ('Anzahl Werte (max. ', MAX, '): ');
		readln (Groesse)
	until (1<= Groesse) and (Groesse <= MAX);
	
	for i := 1 to Groesse do
	begin
		write (i, '. Wert:');
		read (Feld[i])
	end;
	write ('Suchwert: ');
	readln (Suchwert);
	
	{ wir haben die Groesse, dem inhalt und die zahlen wonach
	wir suchen eingetippt. Jetzt werden wir kontrollieren ob
	diese zahl sich in unsere liste befindet }
	
	i := 1;
	gefunden := False;
	
	while (i <= Groesse) and (not gefunden) do
		if Feld[i] = Suchwert then
			gefunden := True
		else
			i:= i + 1;
		{ i := i + 1 beendet die while schleife da i+1 > Goresse }
		
		if gefunden then
			writeln ('Der wert ist an der Position ', i)
		else
			writeln ('Der wert befinden sich nicht in der Liste.')
end. 
