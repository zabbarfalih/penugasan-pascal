program penugasan8_2_2c; {Prosedur Dengan Parameter}
uses crt;

var
   i, j, k, n:integer;
   kar:char;

procedure hasil(x:integer; c:char);
begin
   for i:=1 to x do
      begin
         for j:=1 to x-i do
            write(' ');
         for k:=1 to i do
            write(c:2);
         writeln;
      end;
end;

begin
   clrscr;
   writeln('======================================');
   writeln('======== SEGITIGA RATA TENGAH ========');
   writeln('======================================');
   writeln;
   write('Karakter yang digunakan : '); readln(kar);
   writeln('Ukuran segitiga yang diinginkan');
   write('Tinggi = '); readln(n);
   hasil(n,kar);
   readln;
end.