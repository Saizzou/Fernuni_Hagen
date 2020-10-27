program LoesungSuchen (input, output);
{ bestimmt die Loesungen der Gleichung
a*x*x * b*x + c = 0.0 fuer einzulesende a, b, c;
Vorbedingung: a<>0.0 }

	var
	KoeffA,
	KoeffB,
	KoeffC,
	L1,
	L2 : real;
	exist : boolean;
	
	procedure LoesungBestimmen (
				a, b, c : real;
				var Loesung1, Loesung2 : real;
				var gibtLoesung : boolean);
		
		var
		d : real; { Hilfsvariable }
			
	begin
		d := (b * b) - (4.0 * a * c);
		if (d < 0.0) or (a = 0.0) then
			gibtLoesung := false
		else
		begin
			gibtLoesung := true;
			d := sqrt(d);
			Loesung1 := -(b-d) / (2.0 * a);
			Loesung2 := -(b+d) / (2.0 * a)
		end
	end; { LoesungenBestimmen }
	
begin { LoesungenSuchen }1
	writeln ('Loesungen einer quadratischen Gleichung');
	writeln ('Geben Sie die Koeffizienten ein: ');
	write ('a: ');
	readln (KoeffA);
	write ('b: ');
	readln (KoeffB);
	write ('c: ');
	readln (KoeffC);
	LoesungBestimmen (KoeffA, KoeffB, KoeffC, L1, L2, exist);
	{ die werte a,b,c werden durch starten des program an die
	* "procedure" geseandet und die werte L1, L2, exist werden 
	* dadurch erhalten. In der klammer ist dies mit in und out 
	* bezeichnet. Auch die eingang und ausgang typen sind beschrieben }
	
	if exist then
		writeln ('Loesungen: ', L1:2:2, ' und ', L2:2:2)
	else
		writeln ('Keine Loesung verfügbar!')
end. { LoesungSuchen }

{ !!!!!!!!!!!!!!!!! WICHTIGE INFORMATION !!!!!!!!!!!!!!!!!!!!!!!!!
* 
* Falls ihr setup nicht ParaPascal ist wird die orginelle 
* codierung bei dem procedure :
* 
* procedure LoesungBestimmen (
*				in a, b, c : real;
*				out Loesung1, Loesung2 : real;
*				out gibtLoesung : boolean);
*
* nicht funktionieren. Diese eingabe mit dem kürzungen wie in und out
* ist für dem Standart Pascal nicht nutzbar. Hier ist die Methode
* wie hier (zeile 14-17) die Richtige Lösung. Die input variablen
* werden nicht bezeichnet und die Ausgangs variablen werden mit "var"
* als variable bezeichnet.
* 
* !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
* *****************************************************************
* 
* Zur der Codierung: Mit diesem beispiel wird versucht die 
* funktionsweise von procedure zu beschreiben. Das wichtige bei diesem
* beispiel ist das procedure nicht 1 zu 1 mit dem definierten input
* und outputs arbeitet. "procedure" akzeptiert die elemente in der 
* klammer in dem es die positionen merkt. Also man muss diese funktion
* sich so vorstellen:
* 
* Bei der programierung von procedure:
* (zb. Zeile : 14 )
* ...
* procedure (pos1, pos2, pos3, ... )
* ...
* 
* wird bei dem haupt program auch mit andere beschriftungen als:
* (zb. Zeile 44)
* ...
* procedure (posx, posy, posz, ... ) 
* ...
* 
* betrachtet und wobei pos1=posx, pos2=posy, pos3=posz wahrgenehmmt 
* werden sollte. Wichtig ist hier das wenn es sich um ein Input handelt 
* auch wieder diese position ein input bearbeitet.
