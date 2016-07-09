(* This file shows uses and caveats of Strings in Pascal. 
	Examples are partially taken from www.tutorialspoint.com/pascal *)
PROGRAM Strings;
uses sysutils; (* We use String functions and procedures - there are many more *)


var
   greetings, message, concatinated: ansistring;
   name: packed array [1..10] of char;
   organisation: string[10];
   (* Those are different forms of Strings in Pascal. Another one is pchar *)

begin
   greetings := 'Hello ';
   message := 'Good Day!';
   concatinated := message + greetings;
   appendstr(greetings, message); (* Concats and assigns to variable "greetings" *)
   
   writeln('Please Enter your Name');
   readln(name);
   
   writeln('Please Enter the name of your Organisation');
   readln(organisation);

   writeln(greetings, ' ', name, ' from ', organisation);
   writeln(message);
   writeln('The concatinated String is: ', concatinated);
end.