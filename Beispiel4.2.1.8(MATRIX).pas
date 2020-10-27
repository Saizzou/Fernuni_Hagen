program Matrix (input, output);
{ gibt die Zeilen- und Spaltensumme einer
3x4 Matrix von integer-Zahlen aus }

{ Um die matrix zu ändern, ändern sie die const werte }

	const
	ZEILENMAX = 3;
	SPALTENMAX = 4;
	
	type
	tZeile = 1..ZEILENMAX;
	tSpalte = 1..SPALTENMAX;
	tMatrix = array [tZeile, tSpalte] of integer;
	tZeilensumme = array [tZeile] of integer;
	tSpaltensumme = array [tSpalte] of integer;
	
	var
	A : tMatrix;
	B : tZeilensumme;
	C : tSpaltensumme;
	i : tZeile;
	j : tSpalte;
	
begin
{ Lesen der Matrixwerte in A }
{Um eine Matrix zu erstellen müssen wir für jeden ij wert einen
wert erstellen das können wir durch doppelte schleife erstellen
also 2x for schleifen hier zb. werden wir 1x1, 1x2, 1x3, 1x4, 2x1, ...
erstellen und diese in einer (A[i, j]) also die tMatrix erstellen }

	for i := 1 to ZEILENMAX do
		for j := 1 to SPALTENMAX do
			readln (A[i, j]);
	{ Hier wird eine eingabe zu 2 werte weitergeleitet, also die 
	eingabe wird einen i und einen j wert erhalten. Diese werte 
	werden unsere eingabe anzeigen. Denkweise: wenn i = x und 
	j = y dann ruf die eingabe }
	
	
	{ Berechnen der Zeilensummen also wert von B -> ixj }
	for i := 1 to ZEILENMAX do
	begin 
		B[i] := 0; 
		{ start betrag ist 0 da keine eingabe da ist dies ist nur ein
		start wert hier wird nichts berechnet }
		for j := 1 to SPALTENMAX do
			B[i] := B[i] + A[i, j]
	end;

	
	{ Berechnen der Spaltensumme in C -> jxi }
	for j := 1 to SPALTENMAX do
	begin
		C[j] := 0;
		for i := 1 to ZEILENMAX do
			C[j] := C[j] + A[i, j]
	end;
	
	
	{ Drucken von A, B und C in einer lesbare 
	form untern wird es extra erklärt}
	
	for i := 1 to ZEILENMAX do
	begin
		for j := 1 to SPALTENMAX do
			write (A[i, j]:5);
			writeln (B[i]:10)
	end;
	
	writeln;
	for j := 1 to SPALTENMAX do
		write (C[j]:5);
	writeln
end. { Matrix }



{ !!!WICHTIGES THEMA!!! 
* 
* !!!DARSTELLUNG VON EINER MATRIX!!!
* 
* Hier wird die Matrix dargestellt und zwar mit x2 for schleifen:
* erst nehmen wir die Zeilen von Spalte 1 und dann schreiben wir 
* mit abstand(:5) unsere Zeilen bis ZEILENMAX von A[i, j] 
* (i=1 : erste spalte). 
* 
* Wenn die erste spalte geschrieben ist wird mit B[i] (also Zeilensumme)
* mit einem abstand(:10) geschrieben. Danach wird der wert von 
* j (Zeile) wieder auf 1 gesetz und unser spaltenwert wird 1 erhöhert. 
* 
* Das selbe wird mit der spalte 2 und 3 durchgeführt. So haben wir 
* die matrix und jeweils die Zeilensumme von jeder Spalte erstellt
* 
* Damit wir auch die Spaltensumme erstellen können und dies nicht direkt
* unter der matrix ist sondern mit abstand erstellen wir eine leere 
* zeile mit dem befeht "writeln". Danach wird mit dem gleichen 
* abstand(:5) die wir bei der erstellung von dem matrix benutzt 
* haben jeweils die Spaltensumme erstellt. }
