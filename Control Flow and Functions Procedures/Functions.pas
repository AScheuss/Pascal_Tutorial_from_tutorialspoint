(* This file shows some basic concepts of the subprograme type "Function" in Pascal. 
	Examples are partially taken from www.tutorialspoint.com/pascal *)
PROGRAM Functions;

(* Functions will return some value. This must not be of too complex type. *)

FUNCTION vectorMultiplication(scalar : Real; element : Integer): Real; 
BEGIN
	vectorMultiplication := scalar * element;
END;


(* Another example: Function returning the max between two numbers *)
FUNCTION max(num1, num2: integer): integer;
var
   (* local variables *)
   result: integer;

BEGIN
   if (num1 > num2) then
      result := num1
   else
      result := num2;
   max := result;
END;


(* Recursive Functions work as well *)
FUNCTION factorial(n: Integer) : Real; (* We use Real to circumvent problems with overflow for input > 15 *)

BEGIN
   if n = 0 then
      factorial := 1
   else
      factorial := n * factorial(n-1);
END;

(* Global Variables *)
VAR 
input: Integer;


(* There are two possibilities to pass a variable. By value and by reference. 
   The follwing will change the value of the argument "input"*)
function estimateMax(n : Integer; var input : Integer): Integer;
begin
   if n > input then
      input := n;
   estimateMax := input;
end;

BEGIN
   writeln('Enter a number ');
   readln(input);
   writeln('max ', max(input,32));
   writeln('vectorMultiplication ', vectorMultiplication(4.3,input):-1:2);
   writeln('Factorial of this number is ', factorial(input):-1:0);

   writeln('estimateMax ', estimateMax(32, input));
   writeln(input); (* This will print 32 if the input was less than 32 *)
END.