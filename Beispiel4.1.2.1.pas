program kleinsteZahl1 (input, output);
{ gibt die kleinste Zahl der integer-Eingabezahlen aus }
{int max = 32767 }
	var
	Zahl,
	Minimum : integer;

begin
	writeln ('Geben Sie die integer-Zahlen ein. ',
	'0 beendet die Eingabe.');
	readln (Zahl);
	Minimum := Zahl;
	while Zahl <> 0 do
	begin
		if Zahl < Minimum then
			Minimum := Zahl;
			readln (Zahl)
	end;
	if Minimum <> 0 then
	{ Minimum ist genau dann Null, wenn die erste (und
	einzige) Zahl eine Null war }
		writeln ('Die kleinste Zahl lautet ', Minimum, '.')
	else
		writeln ('Es wurde nur eine 0 eingegeben.')
end. { kleinsteZahl1 }
