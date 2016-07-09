(* This file shows some basic concepts of operators and control flow in Pascal. 
	Examples are partially taken from www.tutorialspoint.com/pascal *)

PROGRAM OperatorsAndControFlow;
LABEL 999, 1; (* Used for the goto statement *)

VAR
	trueCondition : Boolean = true;
	falseCondition : Boolean = false;
	i : Integer;

TYPE
	COLORS = (Red, Green, Blue, Yellow, Magenta, Cyan, Black, White);
	GRADES = (A, B, C, D, E, F);

VAR
	color : COLORS = Green;
	grade : GRADES = F;

BEGIN
	writeln('There is addition and that stuff: (3 + 6) div 6  =', ' ', (3 + 6) div 6);
	writeln('There is addition and that stuff: (3 + 6) / 6:2:3  =', ' ', (3 + 6) / 6:2:3);
	writeln('And: (3 + 6) mod 6  =', ' ', (3 + 6) mod 6);

	writeln('trueCondition and falseCondition (= in Java &): ', trueCondition and falseCondition);
	writeln('trueCondition xor falseCondition : ', trueCondition xor falseCondition);
	writeln('not trueCondition: ', not trueCondition);

	(* When combining two Boolean expressions using 
	relational and Boolean operators, be careful to use parentheses. *)
	writeln('(3>5) or (650<1): ', (3>5) or (650<1));

	(* There are also bitwise operations *)
	writeln('23 or 43: ', 23 or 43);
	writeln('15 << 2: ', 15 << 2);

	(* If-Else works as usual *)
	if color = Red then
	   writeln('You have chosen a red car')
	else
	   writeln('Please choose a color for your car');

	case (color) of
	   Green : writeln('green');
	   Red : writeln('red');
	   Yellow : writeln('yellow');
	end;
	writeln('This gets printed anyway.');

	(* We can get a "default" case doing this *)
	grade := F;
	case (grade) of
		A : writeln('Excellent!' );
		B, C: writeln('Well done' );
		D : writeln('You passed' );
	else
		writeln('You really did not study right!');
    end;

	writeln('************** Loops **************');

	writeln('While-Do-Loop:');
	i := 0;
	WHILE (i < 3) do
	BEGIN
		writeln('The number is ', i);
		i := i + 1;
	END;

	writeln('For-Do-Loop:');
	for i:= 1 to 4 do
	BEGIN
		writeln('The number is ', i);
	END;
	(* Simpler: *)
	for i:= 1 to 5 do writeln('The alternative number is ', i);

	(* The repeat ... until loop in Pascal checks its condition at the bottom of the loop. 
		Otherwise it is similar to the while loop *)
	writeln('Repeat-Until-Loop:');
	i := 1;
	repeat
		writeln('The repeated number is ', i);
	until i < 2; (* Will execute once because this check will give false *)

	writeln('************** Loop Control Statements **************');
	writeln('continue - statement');
	for i := 1 to 10 do
	BEGIN
		if i mod 2 = 0 then 
			writeln('The number ', i, ' is even.')
		else 
			continue;
		writeln('(I like even numbers.)');
	END;

	writeln('break - statement');
	for i:=1 to 101 do
	BEGIN
		if ((100 - i) mod 7 = 0) then
		BEGIN 
			writeln(100 - i, ' is the highest number below 100 to be divisible by 7');
			break;
		END;
	END;

	writeln('goto - statement (Spaghetti Code!)');
	Randomize;
	If Random > 0.5 then
		i := 1
	else
		i := 2;
	
	if (i mod 2 = 0) then
		goto 1
	else
		goto 999;

	1: writeln('This number is even.');
	(* Actually the next line is printed every time because 
		either it is "wentto" 999 directly or to 1 and then the next line is executed *)
	999: writeln('This is a number.'); 
	(* Note: One can go out of a compound statement but not "go in" *)

END.