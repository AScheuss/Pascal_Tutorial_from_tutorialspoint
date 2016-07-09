(* This file shows multidimensional arrays in Pascal. 
	Examples are partially taken from www.tutorialspoint.com/pascal *)
program MultiDimensionalArrays;

type
	TwoDimArray = array[0..5, 0..5] of Integer; (* A two dimensional array *)
	(* array[1..3, 1..3, 1..3, 1..3, etc] give multidimensinonal array *)

function iniArray() : TwoDimArray;
var 
	i, j : integer;
	a: TwoDimArray;

begin
	for i:= 0 to 5 do  
	begin
		for j:= 0 to 5 do  
			a[i,j]:= (i+1) * (j+1);
	end;
	iniArray := a;
end;


var
	a: TwoDimArray;
	i, j : integer;
	b: packed array[1..2, 1..2] of Integer = ((3,2),(4,3));
	(* packing seems to have an effect on performance. Read more elsewhere. *)

begin  
	a := iniArray();
	for i := 0 to 5 do
		begin
		for j:= 0 to 5 do  
			write(a[i,j]:3, ' '); (* The ":3" is there to assure nice alignment *)
		writeln();
		end;

	for i:= 1 to 2 do
		begin
		for j:= 1 to 2 do  
			write(b[i,j]:3, ' ');
		writeln();
		end;
end.