program FeldSuche (input, output);
{ stelle fest, ob ein Suchwert in einem Feld von bis zu 100
integer-Zahlen vorkommt }

	const
	MAX = 100;
	MAXPLUS1 = 101;
	
	type
	tIndex = 1..MAX; { bezeichnung das der Index von 1 bis MAX (wurde in const eingegeben) geht }
	tfeld = array [tIndex] of integer; { erstellung für eine Liste(Feld) die alle zahlen von tIndex in sich erhaelt }
	tIndexPlus1 = 1..MAXPLUS1; { MAXPLUS1 ist für dem fall wenn wircklich 100 zahlen eingetippt werden das die while schleife mit 101 enden kann } 
	
	var
	Feld : tFeld; { das Feld kann sich aendern da dieses feld ein inhalt von der for schleife erhalten wird }
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
		read (Feld[i]) { erstellung einen Feld(Liste) mit zahlen die wir bestimmen }
	end;
	write ('Suchwert: ');
	readln (Suchwert); { suche diese zahl in der vorher eingegebene Liste }
	
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

{ Falls ihr auch denkt "Warum erstellen wir eine liste und suchen wieder in einer selbst erstellte Liste?" 
*Ja es macht kein sinn das wir eine eigene Liste erstellen und dann wieder in diese Liste suchen 
* aber dieser Code ist nur für dem zweck des lernen erstellt wurden. } 
