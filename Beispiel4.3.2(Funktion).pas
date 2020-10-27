program FindeNaechstePrimzahl (input, output);
{ bestimmt die zur Eingabezahl naechstgelegene Primzahl }

	type
	tNatZahlPlus = 1..maxint;
	
	var
	Einzahl,
	d : tNatZahlPlus; { d: Scrittweite }
	gefunden : boolean;
	
	function istPrimzahl (p: tNatZahlPlus) : boolean;
	{ liefert true, falls p eine Primzahl ist, sonst false }
	
		var
		q : tNatZahlPlus;
		
	begin
		if p<2 then
			istPrimzahl := false
		else
		begin
			istPrimzahl := true;
			for q := 2 to (p - 1) do
				if p mod q = 0 then
				istPrimzahl := false
		end
	end; { istPrimzahl }
	
begin
	writeln ('Zahl eingeben: ');
	readln (EinZahl);
	write ('Naechste Primzahl zu ', EinZahl, ' ist ');
	if istPrimzahl (EinZahl) then
		writeln (EinZahl)
	else
		if EinZahl = 1 then
			writeln ('2':5)
		else
		begin
			gefunden := false;
			if odd (EinZahl) then
				d := 2
			else
				d := 1;
			repeat
				if istPrimzahl (Einzahl + d) then
				begin
				{ Primzahl oberhalb von EinZahl gefunden }
					gefunden := true;
					write (EinZahl +d :5)
				end;
				if istPrimzahl (Einzahl - d) then
				begin
				{ Primzahl unterhalb von Einzahl gefunden }
					gefunden := true;
					write (EinZahl - d :5)
				end;
				d := d + 2
			until gefunden;
			writeln
		end { EinZahl <> 1 }
end.
				
