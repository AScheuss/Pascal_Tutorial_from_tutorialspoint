(* A small use case for arrays in Pascal. *)
PROGRAM ArraysAccelerationAndVelocity;

type
	Vector = array[1..3] of Integer;

function constructVector(x, y, z : Integer): Vector;
var
	returnVector: Vector;
begin
	returnVector[1] := x;
	returnVector[2] := y;
	returnVector[3] := z;
	constructVector := returnVector;
end;

procedure printVector(vector : Vector);
begin
	writeln('x = ', vector[1]);
	writeln('y = ', vector[2]);
	writeln('z = ', vector[3]);
end;

function addVector(vector1, vector2 : Vector): Vector;
var
	addedVector: Vector;
	i : Integer;
begin
	for i := 1 to 3 do
	begin
		addedVector[i] := vector1[i] + vector2[i];
	end;
	addVector := addedVector;
end;


var
	position, velocity, acceleration: Vector;
	i, x, y, z : Integer;

begin
	writeln('Give position (x,y,z)');
	read(x,y,z);
	position := constructVector(x,y,z);
	
	writeln('Give velocity (x,y,z)');
	read(x,y,z);
	velocity := constructVector(x,y,z);

	writeln('Give acceleration (x,y,z)');
	read(x,y,z);
	acceleration := constructVector(x,y,z);

	for i:= 1 to 5 do 
	begin
		velocity := addVector(acceleration, velocity);
		position := addVector(position, velocity);
	end;

	writeln('After 5 iterations:');
	writeln('Position:');
	printVector(position);

	writeln('Velocity:');
	printVector(velocity);

	writeln('Acceleration:');
	printVector(acceleration);
end.