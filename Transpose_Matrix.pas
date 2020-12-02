{Erstellt eine Matrix 3x4 und stellt diese als ausgabe mit noch eine ausgabe von der Transpose der Matrix.}
program Transpose(input,output);
{Gibt eine 3x4 Matrix mit integer-Zahlen aus}

    const
    ZEILENMAX = 3;   
    SPALTENMAX = 4;
    
  
    type
    tZeile = 1..ZEILENMAX;
    tSpalte = 1..SPALTENMAX;
    tMatrix = array [tZeile, tSpalte] of integer;
    tTMatrix = array [tSpalte, tZeile] of integer;
  
    var
    A: tMatrix;
    B: tTMatrix;
    i: tZeile;
    j: tSpalte;
 
begin
    writeln ('Geben Sie die Zahlen der Matrix ein:');
    {Einlesen der Matrix}
    for i := 1 to ZEILENMAX do
        for j := 1 to SPALTENMAX do
            begin
				readln (A [i, j]);
				B[j,i] := A[i,j]
			end;
    writeln;
    {Ausgabe Normale Matrix}
    for i:= 1 to ZEILENMAX do
    begin
        for j:= 1 to SPALTENMAX do
           write (A[i, j] : 7);
           writeln;          
    end;      
 
    {Ausgabe der transponierten Matrix}
	writeln;
	for j:=1 to SPALTENMAX do
	begin
		for i:= 1 to ZEILENMAX do
			write(B[j, i] : 7);
			writeln
	end
end. { Transpose }
