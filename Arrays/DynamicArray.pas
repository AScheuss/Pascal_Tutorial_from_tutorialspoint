(* This file shows dynamic and multidimensional arrays in Pascal. 
	Examples are partially taken from www.tutorialspoint.com/pascal *)
program DynamicArray;

type  
   dynamicArrayType = array of integer; (*  *)

var
	darray : dynamicArrayType;
	a: array of array of integer; (* a 2 dimensional array *)
	i, j : integer;

begin
	setlength(darray, 8);
	for i:= 1 to 8 do
		darray[i] := i*3;

	for i:= 1 to 8 do
		writeln(darray[i]);


	setlength(a,5,5); (* We have to set the lengths at the beginning to initialize it. *)
	for i:=0 to 4 do
		for j:=0 to 4 do
			a[i,j]:= i * j;

	for i:=0 to 4 do
	begin
		for j:= 0 to 4 do
			write(a[i,j]:2,' ');
		writeln;
   end;
end.