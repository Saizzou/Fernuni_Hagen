program FeldSortierer (input, output);
{ sortiert ein einzulesendes Feld von integer-Zahlen }

	const
	FELDGROESSE = 5;
	
	type
	tIndex = 1..FELDGROESSE;
	tFeld = array [tIndex] of integer;
	
	var
	EingabeFeld : tFeld;
	MinPos,
	i : tIndex;
	Tausch : Integer;
	
	function FeldMinimumPos (Feld: tFeld; von, bis : tIndex): tIndex;
	{ bestimmt die Position des Minimums im Feld zwischen von und bis,
	1 <= von <= bis <= FELDGROESSE }
	
		var
		MinimumPos,
		j: tIndex;
		
	begin
		MinimumPos := von;
		for j:= von + 1 to bis do
			if Feld[j] < Feld[MinimumPos] then
				MinimumPos := j;
		FeldMinimumPos := MinimumPos
	end; { FeldMinimumPos }
	
begin 
{ Einlesen des Feldes }
	writeln('Geben Sie ', FELDGROESSE, 'Werte ein: ');
	for i:= 1 to FELDGROESSE do
		readln (EingabeFeld[i]);
		
	{ Sortieren }
	for i := 1 to FELDGROESSE - 1 do
	begin
		MinPos := FeldMinimumPos(EingabeFeld, i, FELDGROESSE);
		{ Minimum gefunden, jetzt muessen wir es mid dem Element
		auf Position i vertauschen }
		Tausch := EingabeFeld[MinPos];
		EingabeFeld[MinPos] ;= EingabeFeld[i];
		EingabeFeld[i] := Tausch
	end;
	
	{ Ausgabe des sortieren Feldes }
	for i := 1 to FELDGROESSE do
		write (EingabeFeld[i]:6);
	writeln
end. { FeldSort }

{ !!!Erklearung der Funktion!!!
* 
* Die Funktion FeldMinimumPos funktioniert mit 3 Variablen. 1x Feld von
* type tFeld was unsere Liste bildet. Dann x2 Variablen welche für uns
* dem Start Punkt und dem End Punkt anzeigt mit dem type Index. Hier ist
* Start = i, End = Groesse von dem Feld. 
* 
* Die erste Position unsere liste wird als MinimumPos angenommen,
* dann wird durch eine for schleife die naechste elemente miteinander
* vergleicht. Hier wird i=1 als "von" bezeichnet und bis = "FeldGroesse"
* da wir die erste variabel schon als MinimumPos bezeichnet haben können 
* wir diese mit der nummer naechste vergleichen. Daher kommt das 
* Feld[j] < Feld[MinimumPos]. j wurde als "von" +1 und MinimumPos 
* als "von". Wenn der zweite element (also j) groesser ist tauscht diese
* mit dem ersten wert.
* 
*
*  !!! Erklearung von Program Feld Sort!!!
* 1) Als erstes bestimmen wir die zahlen die in dem Feld hinzuzufuegen 
* sind.
* 2) Mit der for schleife fuellen wir das Feld.
* 3) Die erste zahl von unsere eingabe wird durch die Funktion geleitet
* und ergibt uns damit die kleinste zahl. 
* 4) Da es hier um eine for Schleife handelt. Ist die kleinste Zahl 
* im Feld i=1 eingesetzt. Ist unsere erste eingabe nicht die kleinste 
* Zahl wird diese mit der Position der Kleinste Zahl geändert. 
* 5) Diesen Austausch durchführen wir bis FELDGROESSE -1 da diese sich 
* nur mit der letzte zahl vergleichen wird.
* 6) Alle tauschungen wurden durchgeführt und Das EingabeFeld wird 
* in der reihe mit abstand von 6 blöcke dargestellt.
