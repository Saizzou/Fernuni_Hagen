program kleinsteZahl3 (input, output);
{ gibt die kleinste Zahl der integer-Eingabezahlen aus }
{ die eof funktion bedeutet end of file also ende von der datei }

	var
	Zahl,
	Minimum : integer;

begin
	writeln ('Geben Sie die integer-Zahlen ein. ',
	'<ctrl> z beendet die Eingabe.');
	if eof then
		writeln ('Es wurde keine Zahl eingegeben.')
	else
	
	begin
		readln (Zahl);
		Minimum := Zahl;
	
		while not eof do
		begin
			readln (Zahl);		
			if Zahl < Minimum then
				Minimum := Zahl
		end;
	
		writeln ('Die kleinste Zahl lautet ', Minimum, '.')
	end
end. { kleinsteZahl3 }
