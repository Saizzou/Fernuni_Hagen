program Tanken;

	const
	pNormal = 1.30;
	pSuper = 1.35;
	pSuperPlus = 1.55;
	pDiesel = 1.10;
	{KOMPAKTE AUSWAHL!!!}
	
	type
	tZahl = 1..maxint;
		
	var
	tag1 : tZahl;
	wahl : integer;
	liter,
	p : real;
		
BEGIN
	repeat
		write ('Bitte Tag eingeben 1=Mon 2=Die 3=Mit 4=Don 5=Fre 6=Sam 7=Son: ');
		readln (tag1);
		writeln(tag1);
	until tag1 <= 7;
	begin
		write ('Was wurde getankt? 1=Normal 2=Super 3=SuperPlus 4=Diesel : ');
		readln(wahl);
		if wahl = 1 then
			p := pNormal;
		if wahl = 2 then
			p := pSuper;
		if wahl = 3 then
			p := pSuperPlus;
		if wahl = 4 then
			p:= pDiesel;
			
		write ('Wie viel wurde getankt? : ');
		readln (liter);
		
		if tag1 <= 5 then
		begin
			if liter >= 20 then
				p := liter * p * 0.9
			else
				p := liter * p			
		
		end;
		if tag1 >= 6 then
		begin
			p := p * 1.1;
			if liter >= 20 then
				p := liter * p * 0.9
			else
				p := liter * p
		end;
		writeln (' Der betrag ist : ', p:9:2,' €.');	
	end
	
END.
