(* This file gives examples of some basic concepts of variables, constants and type in Pascal.
	Examples found at www.tutorialspoint.com/pascal *)
PROGRAM BasicDataTypes;

{ Constants }
CONST
	someVariable = 2.3;

{ Variables - be careful: Pascal is not case-sensitive!}
VAR
	a, b, c : Integer;
	s, area: Real;
	{ Variables can also be assigned directly. }
	age : Integer = 5;
	{ subrange variable declaration }
	mark : 1..6 = 4;
	(* The following will make the compiler cough up a warning 
	"Warning: range check error while evaluating constants (90 must be between 1 and 7)" *) 
	mark2 : 1 .. 7 = 90; 

{ Type }
TYPE
	{ Enumerated Types}
	COLORS = (Red, Green, Blue, Yellow, Magenta, Cyan, Black, White);
	{ Subrange Types }
	months = (Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec);
	Summer = Apr..Aug;
	Winter = Oct..Dec;
	
VAR
	dayInSummer: Summer;

(* Here the main program block starts *)
BEGIN
	writeln(someVariable);
	dayInSummer := Jul; { Do not forget the ":" before the equal sign }
	writeln(dayInSummer);
	dayInSummer := Apr;
	writeln(dayInSummer);

	writeln('His age is ', ' ', age);

	readln(a, b, c);
	s := (a + b + c) / 2.0;
	area := sqrt(s * (s-a) * (s-b) * (s-c));
	
	(* The first number is the line it will be printed (to the left), 
	the second number indicates the positions after the decimal points *)
	writeln(area:10:2);

	writeln('Your mark', ' ', mark);
	writeln('Your second mark', ' ', mark2);
END.