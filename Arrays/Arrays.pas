(* This file shows basic properties of arrays in Pascal. 
	Examples are partially taken from www.tutorialspoint.com/pascal *)
PROGRAM Arrays;
const
	FIVE = 5;
	THREE = 3;

type
	(* An array can also be subscripted with an enumerated type *)
	Season = (Spring, Summer, Autumn, Winter);
	CurrentSeason = array[Season] of boolean;

var
	vector : array [0..THREE] of Integer;
	c : Season;
	thisSeasonInformation: CurrentSeason;
	i : Integer;
	example : array[1..FIVE] of Integer = (4,5,3,5,6); (* Arrays can be initialized with brackets *)


function average(arr: array of Integer): Real;
var
	sum: Real;
	len: Integer;
begin
	sum := 0;
	len := Length(arr);
	for i := 1 to len do
	begin
		sum := sum + arr[i-1];

	end;
	average := sum / len;
end;


begin
	for c:= Spring to Winter do
	thisSeasonInformation[c] := True;  
	(* the ord() function returns the ordinal values *)

	for c:= Spring to Winter do
		writeln(thisSeasonInformation[c]);
	for i:=1 to THREE do
		vector[i] := i*233 mod 3;
	for i:=1 to THREE do
		write(vector[i], ' ');
	writeln;

	for i:= 1 to FIVE do
		write(example[i], ' ');

	writeln;
	writeln('************* passing arrays as arguments ***********');
	writeln;
	writeln(average(example):3:2);

end.