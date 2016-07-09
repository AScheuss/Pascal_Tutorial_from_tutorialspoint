(* This file shows some basic concepts of the subprograme type "Procedure" in Pascal. 
	Examples are partially taken from www.tutorialspoint.com/pascal *)
PROGRAM Procedures;

(* Procedures are subprograms that, instead of returning a single value, 
	allow to obtain a group of results. *)
(* A function returns a value and a procedure just executes commands. See also void methods in Java.*)

PROCEDURE findMin(x, y, z: integer; var m: integer); 
(* Finds the minimum of the 3 values *)
(* The variable m is passed by reference *)

BEGIN
   if x < y then
      m := x
   else
      m := y;
   
   if z < m then
      m := z;
END; { end of procedure findMin }  

VAR 
	m : Integer;


BEGIN
	findMin(25, 36, 1, m);
	writeln('The min is ', m);
END.