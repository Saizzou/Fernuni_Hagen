program FolgenInverter (input, output);
{ liest eine Folge von 5 integer-Zahlen ein und
gibt sie in umgekehrter Reihenfolge wieder aus }

	type
	tIndex = 1..5;
	tZahlenFeld = array [tIndex] of integer;

	var
	Feld : tZahlenFeld;
	i : tIndex;

begin
	for i := 1 to 5 do
	begin
		write ('Bitte ', i, '. Zahl eingeben: ');
		readln (Feld[i])
	end;
	for i := 5 downto 1 do
		writeln (Feld[i])
end. { FolgenInverter }
