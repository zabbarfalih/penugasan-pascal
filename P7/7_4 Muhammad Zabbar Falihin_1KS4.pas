program penugasan7_4;
uses crt;

var
   i, j, k, n:integer;
   hasil:longint;

begin
   clrscr;
   writeln('=================================');
   writeln('======== SEGITIGA PASCAL ========');
   writeln('=================================');
   writeln;
   write('Masukkan banyaknya baris : '); readln(n);
   for i:=0 to n-1 do
   begin
      hasil:=1;
      for j:=i to n do
         write(' ':3);
         for k:=0 to i do
            begin
               write(hasil:6);
               hasil := hasil * (i-k) div (k+1);
            end;
         writeln;
      end;
   readln;
end.