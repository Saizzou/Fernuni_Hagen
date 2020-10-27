program Seminar (input, output);
{ Erstellung fuer Studenten Seminarschein }

	const
	MAXTEILNEHMER = 12;
	TAGE = 31;
	MONATE = 12;
	MINJAHR = 1900;
	MAXJAHR = 2040;
	
	type
	tTag = 1..TAGE;
	tMonat = 1..MONATE;
	tJAHR = MINJAHR..MAXJAHR;
	tNatZahlPlus = 1..maxint;
	tStatus = (aktiv, passiv);
	tIndex = 1..MAXTEILNEHMER;
	tString = string[30];
	
	{ Hier werden wir einen type mit mehrere typen erstellen }
	tSeminarStudent =
		record
			Name : tString;
			Geburtstag :
				record
					Tag : tTag; { =TeilnehmerFeld[i].Geburtstag.Tag }
					Monat : tMonat;
					Jahr : tJahr;
				end; { Geburtstag }
				StudentenNr : tNatZahlPlus;
				Status : tStatus;
		end; { tSeminarStudent }
	
	{ Hier wird eine liste von dem Teilnehmende Studenten erstellt }
	tTeilnehmerfeld = array [tIndex] of tSeminarStudent;
	
	var
	TeilnehmerFeld : tTeilnehmerfeld;
	AnzStud : tNatZahlPlus;
	i : tIndex;
	Status : char; { 'a' : aktiv, ’p’ : passiv }
	
begin
	write ('Wie viele Studenten nahmen am Seminar teil?');
	readln (AnzStud);
	writeln('Jeder Student der am Seminar Aktiv war erhält ein',
			' geschaenk am Geburtstag! Bitte Geburtstag von aktive',
			' Studenten nachträglich eingeben');
	if AnzStud > MAXTEILNEHMER then
	begin
		writeln ('Die hoechste zahl der Teilnehmer ist: ', 
				MAXTEILNEHMER, ' Die teilnehmer zahl wird reduziert!');
		AnzStud := MAXTEILNEHMER
	end;
	writeln ('Geben Sie die Informationen der ', AnzStud:3,
			'Teilnehmer an:');
	for i := 1 to AnzStud do
	begin
		writeln ('Geben Sie die Information fuer Teilnehmer: ', i,
				' an:');
		write ('Name: ');
		readln (TeilnehmerFeld[i].Name);
		write ('Studenten Nr.: ');
		readln (TeilnehmerFeld[i].StudentenNr);
		repeat
			write ('Aktivitaet (a:aktiv, p:passiv) Status:(a/p) ');
			readln (Status)
		until (Status = 'a') or (Status = 'p');
		if Status = 'a' then
			begin
				TeilnehmerFeld[i].Status := aktiv;
				write ('Bitte Jahr des Geburtsdatum eingeben: ');
				readln (TeilnehmerFeld[i].Geburtstag.Jahr);
				write ('Bitte Monat des Gesburtsdatum eingeben: ');
				readln (TeilnehmerFeld[i].Geburtstag.Monat);
				write ('Bitte Tag des Geburtsdatum eingaben: ');
				readln (TeilnehmerFeld[i].Geburtstag.Tag)
			end
		else
			TeilnehmerFeld[i].Status := passiv
	end;
	{ Dies erstellt eine Liste mit informationen für jeden Teilnehmer.
	Jeder Teilnehmer wird durch "i" von 1 bis MAXTEILNEHMER/AnzStud
	numeriert wo mit wir im naechsten bereich die informationen von
	dem jeweiligen Teilnehmer abrufen können }
	
	
	{ Erstellung von ein Teilnahme Schein und G.Tag Geschenk Schein }
	writeln;
	for i := 1 to AnzStud do
	begin
		writeln ('Der Student ', TeilnehmerFeld[i].name);
		writeln('mit Studenten Nr.: ', TeilnehmerFeld[i].StudentenNr);	
		if TeilnehmerFeld[i].Status = passiv then
			writeln('war an dem Seminar nicht aktiv beteiligt!')
		else
		begin
			writeln('------------------------------------');
			writeln('war an dem Seminar aktiv beteiligt!');
			writeln('Der Student mit dem Geburtsdatum :',
					TeilnehmerFeld[i].Geburtstag.Tag, '/',
					TeilnehmerFeld[i].Geburtstag.Monat, '/',
					TeilnehmerFeld[i].Geburtstag.Jahr, 
					'hat einen gutschein von uns erhalten');
			writeln('----------------------------------------');
			writeln
		end
	end;
	
	writeln('-------------------------------------------------------');
	writeln('Liste aller aktiven Teilnehmer im Seminar:');
	writeln('-------------------------------------------------------');
	for i := 1 to AnzStud do
		if TeilnehmerFeld[i].Status = aktiv then
			writeln(TeilnehmerFeld[i].Name);
	writeln;
	writeln('-------------------------------------------------------');
	writeln('Liste aller Zuhoerer im Seminar: ');
	writeln('-------------------------------------------------------');
	for i := 1 to AnzStud do
		if TeilnehmerFeld[i].Status = passiv then
			writeln(TeilnehmerFeld[i].Name);
	writeln
end. { Seminar }

{ Diese dargestellte Programmierung ist nicht identisch zur dem 
Beispiel. Die Codierung erhält zusätzliche zeilen und die anforderung 
von Geburtstag daten. Der Text und die dargestellte Codierung wurde
von mir selbst (Alias="Saizzou") erstellt. Falls die Orginelle Codierung
gewuscht ist so bitte ich Sie: Löschen sie oder klammern sie die Zeilen
46-47-48-59-60-65-68-70-72...-78-98-100-...-106  }
