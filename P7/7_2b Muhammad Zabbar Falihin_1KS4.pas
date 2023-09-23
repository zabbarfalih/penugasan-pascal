program penugasan7_2b;
uses crt;

var
   i, j, k, n:integer;
   kar:char;

begin
   clrscr;
   writeln('=====================================');
   writeln('======== SEGITIGA RATA KANAN ========');
   writeln('=====================================');
   writeln;
   write('Karakter yang digunakan : '); readln(kar);
   writeln('Ukuran segitiga yang diinginkan');
   write('Tinggi = '); readln(n);
   for i:=1 to n do
      begin
         for j:=1 to 2*(n-i) do
            write(' ');
            for k:=1 to i do
               write(kar:2);
         writeln;
      end;
   readln;
end.