program Kreisumfang (input, output);
{ berechnet den Kreisumfang bei gegebenem Radius }

	const
	PI = 3.141592654;
	
	var
	Radius,
	Umfang : real;
	
begin
	writeln ('Berechnung des Kreisumfanges.');
	write ('Geben Sie den Radius ein: ');
	readln (Radius);
	Umfang := 2.0 * PI * Radius;
	writeln ('Der Umfang betraegt: ', Umfang)
end. { Kreisumfang }
