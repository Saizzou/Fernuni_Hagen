program Flugzeit2 (input, output);
{ berechnet die Flugdauer aus Start- und Landezeit }

	const
	MINSEK = 59;
	STUNDE =23;
	
	type
	tMinSek = 0..MINSEK;
	tStunde = 0..STUNDE;
	tZeit = record
				h : tStunde;
				m,
				s : tMinSek;
			end;
	tUebertrag = 0..1;
	
	var
	Abflug,
	Ankunft,
	Flugdauer : tZeit;
	Uebertrag : tUebertrag;
	
{ durch dem procedure Zeitlesen können wir anstatt für Anflug un Abflug
* einzeln ein code zu erstellen für beide jeweils dem procedure 
* aufrufen. Damit ist unser code kompakter }
	
	procedure ZeitLesen (var Zeit : tZeit);
	{ liest eine Uhrzeit in Stunden, Minuten und Sekunden ein }
	
		var
		Eingabe : integer;
		
	begin
		repeat
			write ('Stunde: ');
			readln (Eingabe)
		Until (Eingabe >= 0) and (Eingabe <= STUNDE);
		Zeit.h := Eingabe;
		
		repeat
			write ('Minute: ');
			readln(Eingabe)
		until (Eingabe >= 0) and (Eingabe <= MINSEK);
		Zeit.m := Eingabe;
		
		repeat
			write ('Sekunde: ');
			readln(Eingabe)
		until (Eingabe >= 0) and (Eingabe <= MINSEK);
		Zeit.s := Eingabe
	end; {ZeitLesen }
	
begin { Flugzeit }
	writeln ('Bitte die Abflugzeit eingeben');
	ZeitLesen (Abflug);
	writeln;
	writeln ('Bitte die Ankunftzeit eingeben');
	ZeitLesen(Ankunft);
	{ Die zeiten wurden durch dem Procedure hinzugefügt }
	
	{ Ab hier ist es identisch mit 4.2.2.1 }
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
