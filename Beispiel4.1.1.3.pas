program Maximum (input, output);
{ bestimmt das Maximum einer Folge von
einzulesenden integer-Zahlen }

	const
	ANZ = 4; { Anzahl der einzulesenden Zahlen }

	type
	tIndex = 1..ANZ;

	var
	i : tIndex; { Laufvariable }
	Zahl,
	Max : integer;

begin
	
	writeln ('Geben Sie ', ANZ, ' ganze Zahlen ein,');
	writeln ('deren Maximum bestimmt werden soll.');
	write ('1. Wert: ');
	readln (Zahl);
	Max := Zahl;

	for i := 2 to ANZ do
	begin
		write (i, '. Wert: ');
		readln (Zahl);
		if Zahl > Max then
			Max := Zahl
	end; { for-Schleife }
	writeln ('Das Maximum ist: ', Max,'.')

end. { Maximum }
