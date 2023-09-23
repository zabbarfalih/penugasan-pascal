program penugasan8_2_4; {Prosedur Dengan Parameter}
uses crt;

var
   i, j, k, n:integer;
   hasil:longint;

procedure segitigapascal(x:integer);
begin
   for i:=0 to x-1 do
   begin
      hasil:=1;
      for j:=i to x do
         write(' ':3);
         for k:=0 to i do
            begin
               write(hasil:6);
               hasil := hasil * (i-k) div (k+1);
            end;
         writeln;
      end;
end;

begin
   clrscr;
   writeln('=================================');
   writeln('======== SEGITIGA PASCAL ========');
   writeln('=================================');
   writeln;
   write('Masukkan banyaknya baris : '); readln(n);
   segitigapascal(n);
   readln;
end.