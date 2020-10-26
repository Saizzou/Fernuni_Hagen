program kleinsteZahl2 (input, output);
{ gibt die kleinste Zahl der integer-Eingabezahlen aus }
	var
	Zahl,
	Minimum : integer;
	
begin
	writeln ('Geben Sie die integer-Zahlen ein. ',
			'0 beendet die Eingabe.');
	readln (Zahl);
	Minimum := Zahl;
	
	if Zahl <> 0 then
		repeat
			if Zahl < Minimum then
				Minimum := Zahl;
			readln (Zahl)
		until Zahl = 0;
	
	if Minimum <> 0 then
		{ Minimum ist genau dann Null, wenn die erste und
		einzige Zahl eine Null war }
		writeln ('Die kleinste Zahl lautet ', Minimum, '.')
	else
		writeln ('Es wurde keine Zahl <> 0 eingegeben.')

end. { kleinsteZahl2 }
