program FeldSort2 (input, output);
{ sortiert ein einzulesendes Feld von integer Zahlern }

	const
	FELDGROESSE = 5;
	
	type
	tIndex = 1..FELDGROESSE;
	tFeld = array[tIndex] of integer;
	
	var
	EingabeFeld : tFeld;
	idx : tIndex;
	
	
	function FeldMinimumPos
							(in Feld : tFeld; 
							in von, bis : tIndex) : tIndex;
	{ bestimmt die Position des Minimums im Feld zwischen von und bis }
	
	var
	MinimumPos,
	j : tIndex;
	
	begin
		MinimumPos := von;
		for j:= von + 1 to bis do
			if Feld[j] < Feld[MinimumPos] then
				MinimumPos := 5
				;
		FeldMinimumPos := MinimumPos
	end; { FeldMinimumPos }
	
	{ im Buch ist die Zeile 22 bis 28 links eingedrückt aber da es sich
	hier um der function handelt habe ich es nicht eingerückt. }
	
	
	{ ------------------Erklearung FeldMinimumPos--------------------
	*  wir erstellen einen Feld der von Type aus tFeld ist. Dies wird
	* durchgeführt damit wir auch sagen können das es sich um ein
	* gleiches Feld immer handelt. Also jeder Feld muss von type aus
	* tFeld sein. 
	* 
	* Dieser Feld besteht von einem anfang punkt bis zu einem ende. 
	* Diese punkte werden direkt als von (start punkt) und bis (end
	* punkt) bezeichnet.
	* 
	* Die erste zahl wird sofort als MinimumPos eingestuft. Da wir 
	* noch keine andere zahlen haben. Nachdem wir die restliche 
	* zahlen in dem Feld eingegeben haben wird eine schleife von 
	* der zweiter Position bis zu letzte Position durchgeführ. Hier 
	* werden jeweils die zahlen die nebeneinander sind vergleicht.
	* Falls die vorherige zahl kleiner ist als dem nachkommer wird 
	* diese zahl ausgetauscht damit die vergleichung mit der naechste
	* zahl im feld durchgeführt werden kann 
	* ---------------------------------------------------------}
	
	
	procedure Vertauschen (inout hin, her : integer);
	{ vertauscht die Werte der beiden Parameter }
	{!!!! DIESER CODE IST EIN ADA CODE NICHT PASCAL !!!}

		var
		Tausch : integer;
		
	begin
		Tausch := hin;
		hin := her;
		her := Tausch
	end; { vertauschen }
	
	{ -------- Erklaerung procedure Vertauschen ---------------
	* Bei einer procedure erhalten wir die daten von einem bestehenden
	* vorgang. Das heisst ein procedure ist ein wandler der in ein
	* program hinein gebaut wird und von dem Program dann daten erhaelt.
	* 
	* Hier handelt es sich das die procedure 2 integer daten erhaelt. 
	* Diese werden hin und her bennant. Falls dies sie verwirrt können
	* sie diese auch wie x und y vorstellen. Der procedure selber hat
	* einen variablen der auch ein integer wert nehmen kann. Dieser
	* wurde wiederum Tausch gennant (wir können auch dies als z nehmen)
	* Da der wert "Tausch" nicht definiert ist kann dieser wert alles
	* mögliche sein.
	* 
	* Der wert Tausch(z) erhaelt in der Procedure dem Wert hin(x)
	* (also unser Tausch = x geworden) dann erhaelt der Wert hin(x)
	* einen Wert von her (y) (also jetzt ist der wert hin = y) Als
	* letztes erhaelt der Wert her dem Wert Tausch(was vorher x geworden
	* ist.) Also ist jetzt der wert her von y nach x und wert hin von x 
	* nach y gewandert. Damit ist der tausch von werte durchgeführt.
	* -------------------------------------------------------------}  


	procedure FeldSortieren (inout SortFelda,
							SortFeldb : tFeld);
	{ sortiert SortFeld aufsteigend }
	{ !!!!!!!!!!!!!!! DIES IST AUCH ADA CODIERUNG !!!!! }
		var
		MinPos,
		i : tIndex;
		
	begin
		for i:= 1 to FELDGROESSE -1 do
		begin
			MinPos := FeldMinimumPos(SortFeld, i, FELDGROESSE);
			{ minimum gefunden, jetzt mit dem Element auf Position i tauschen }
			Vertauschen (SortFeld[MinPos], SortFeld[i])
		end
	end; { FeldSortieren }

	{------------Erklearung procedure FeldSortieren ------------
	* Diese procedure besteht aus der funktion und von den anderen 
	* Procedure!! Also hier müsste man auch die funktion und die 
	* andere Procedure im auge behalten. Die Procedure FeldSortieren
	* besteht eigentlich aus einem Sortier Feld. In allgemein 
	* wird hier nur eine for schleife hinzugefügt.
	* 
	*  Im diesen beispiel wird als erstes von uns ein Feld erstellt
	* die 'FELDGROESSE' (=5 ,siehe const) gross ist und beliebige 
	* werte enthaelt. Dies wird dann in FeldSortieren weitergeleitet
	* (wie auch neben dem klammern zu bemerken ist, ist der eingang
	* von dieser Procedure ein Feld.) 
	* 
	* Danach wird es mehrmals (i=1 bis (FELDGROESSE (5) -1)) die 
	* gleichung MinPos := FeldMinimumPos durchführen. ( Versuchen sie
	* hier jeden schritt nach zu verfolgen.) Danach wird dies wieder
	* and das Vertauschen Procedure weitergeleitet. 
	* 
	* Was passiert bei der for schleife? 
	* ---Hier aufpassen!---
	* A)Mit dem wert i=1 wird der erste Feld mit der hilfe FeldMinimumPos
	* so eingerichtet das der kleinste wert sich am Ende des Feldes 
	* befindet. Das ergebnis von der erste umwandlung wird dann als
	* MinPos eingetragen (*** dieser wert is für i=1 gültig) 
	* 
	* B)Der MinPos wird dann mit der erste form umgetauscht. Also ist
	* jetzt nicht der letzte sondern der erste wert die kleinste zahl
	* Schon bemerkt wo dies hinführt?
	* 
	* Bei i=2 wird der prozess kürzer sein da die tauschung nicht bis
	* ende geht sondern nur von i:2 bis 4 also die vorletzte groesste
	* zahl wird nach A und B diesmal dem Platz 2 erhalten...
	* 
	* Am ende haben wir durch diese ganzen hin und her schiebung
	* Ein Feld von Kleinsten wert bis Groessten wert.
	* ------------------------------------------------------}


	{ ----------------VISUALIZIEREN WIR ALLES MAL------------------
	* Falls diese erklearung nicht ganz eindeutich ist nehmen Sie
	* sich ein Blatt Papier und schreiben Sie 'a b c d e' sich so 
	* eine zeile auf.  
	* 
	* 1) Funktion : a wird mit b vergleicht. Der kleinere wird mit
	* c vergleicht und dann der naechste mit d und e. Sagen wir mal
	* das der kleinste wert b war. Am ende sieht unser Feld so aus:
	* 'a c d e b' 
	* 
	* 2) Procedure Vertaush: Da bei der Funktion die minimale zahl
	* jetzt ganz hinten steht wird es hiermit nach ganz vorne gebracht
	* Am ende sieht unser Feld so aus: 'b c d e a'
	* 
	* 3) Die Procedure Vertausch und die Funktion machen diese 
	* durchgänge nur 1 mal. Wenn wir es aber nach dem wir dem 
	* kleinsten wert schon auf platz 1 haben nochmal für i=2 , i=3 und
	* i=4 durchführen erhalten wir ein Feld von Kleinsten Wert bis 
	* Groesten Wert.
	* --------------------------------------------------------}

begin
	{ Feld einlesen }
	writeln ('Geben Sie ', FELDGROESSE, ' Werte ein: ');
	for idx := 1 to FELDGROESSE do
		readln (EingabeFeld[idx]);
	
	{ Feld Sortieren }
	FeldSortieren (EingabeFeld);

	{ sortiertes Feld ausgeben }
	for idx := 1 to FELDGROESSE do
		write (EingabeFeld[idx]:6);
	writeln
end. { FeldSort2 }
