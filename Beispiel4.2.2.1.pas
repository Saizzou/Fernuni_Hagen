program Flugzeit (input, output);
{ berechnet die Flugdauer aus Start- und Landezeit }

	const
	MINSEK = 59;
	STUNDE = 23;
	
	type
	tMinSek = 0..MINSEK;
	tStunde = 0..STUNDE;
	
	tZeit = record
				h : tStunde;
				m,
				s : tMinSek
			end; { tZeit }
	tUebertrag = 0..1;
	
	var
	Abflug,
	Ankunft,
	Flugdauer : tZeit;
	Eingabe : integer;
	Uebertrag : tUebertrag;
	
begin
	Flugdauer.h := 0;
	Flugdauer.m := 0;
	Flugdauer.s := 0;
	Uebertrag := 0;
	
	{ Abfulg daten abfragen }
	writeln ('Bitte die Abflugzeit eingeben');
	repeat
		write ('Abflug Stunde: ');
		readln (Eingabe)
	until (Eingabe >= 0) and (Eingabe <= STUNDE);
	Abflug.h := Eingabe;
	
	repeat
		write ('Abflug Minute: ');
		readln (Eingabe)
	until (Eingabe >= 0) and (Eingabe <= MINSEK);
	Abflug.m := Eingabe;
	
	repeat
		write ('Abflug Sekunde: ');
		readln (Eingabe)
	until (Eingabe >= 0) and (Eingabe <= MINSEK);
	Abflug.s := Eingabe;
	
	
	{ Ankunft daten abfragen mit eine zeile abstand }
	writeln;
	writeln ('Bitte die Ankunftzeit eingeben');
	repeat
		write ('Ankunft Stunde: ');
		read (Eingabe)
	until (Eingabe >= 0) and (Eingabe <= STUNDE);
	Ankunft.h := Eingabe;
	
	repeat
		write ('Ankunft Minute: ');
		read (Eingabe)
	until (Eingabe >= 0) and (Eingabe <= MINSEK);
	Ankunft.m := Eingabe;
	
	repeat
		write('Ankunft Sekunde: ');
		read (Eingabe)
	until (Eingabe >= 0) and (Eingabe <= MINSEK);
	Ankunft.s := Eingabe;
	
	
	{ Die daten für Abflug und Ankunft sind jetzt gespeichert
	jetzt müssen wir die flugdauer berechnen. Hier ist wichtig 
	fals der Flug Ankunft zeit < Abflug zeit ist, das der Ankunft 
	Datum dem naechsten Tag entspricht und dann ein Uebertrag 
	erstellt werden muss. *Diese berechnung gilt auch für Minuten
	und Sekunden! }
	
	{ Hier werden wir jeweilige Programierung für die Rechnung in der 
	reihe erstellen. Sonst könnte es zur Falsche ergebnisse führen! 
	Das bedeutet erst die Sekunden berechnen dann Minuten und dann 
	die Stunden damit wir feststellen ob es zur eine Uebertragung von
	dem naechsten Wert bestanden hat }
	
	{ Sekunden rechnen }
	if Ankunft.s < Abflug.s then
	begin
		Uebertrag := 1;
		Flugdauer.s := MINSEK +1 + Ankunft.s - Abflug.s
		{ MINSEK + 1 = 60 damit wird statt MINSEK = 59, 60 berechnet
		dies hat nicht mit Uebertrag wert zu tun! }
	end
	else
		Flugdauer.s := Ankunft.s - Abflug.s;
	
	
	{ ACHTUNG!! Wenn bei der oben beschriebene sekunden rechnung
	ein Uebertrag erstanden ist wird der betrag Uebertrag auf
	"1" umgestellt sonst ist dieser betrag "0" da wir am anfag 
	diesen wert auf "0" gesetzt haben. }
	
	{ Minuten rechenen }
	if (Ankunft.m - Uebertrag) < Abflug.m then
	begin
		Flugdauer.m := MINSEK +1 + Ankunft.m - Abflug.m - Uebertrag;
		Uebertrag := 1
	end
	else
	begin
		Flugdauer.m := Ankunft.m - Abflug.m;
		Uebertrag := 0
	end;
	
	
	{ Stunden Rechnen }
	if (Ankunft.h - Uebertrag) < Abflug.h then
	begin
		Flugdauer.h := STUNDE + 1 + Ankunft.h - Abflug.h - Uebertrag;
		Uebertrag := 1
	end
	else
	begin
		Flugdauer.h := Ankunft.h - Abflug.h - Uebertrag;
		Uebertrag := 0
	end;

	
	{ Ausgabe erstellen }
	writeln;
	writeln ('Flugdauer: ', Flugdauer.h, ':', Flugdauer.m, ':', 
			Flugdauer.s);
			
	if Uebertrag = 1 then
		writeln (' Ankunft folgt dem naechsten Tag!')
	else
		writeln (' Ankunft ist an dem Selben Tag!')
end. { Flugzeit }

{ Das letzte if - else wurde als beispiel erstellt dies hat nicht mit
dem Orginellen Beispiel zu tun. Betrachtet es als ein kleiner extra }
