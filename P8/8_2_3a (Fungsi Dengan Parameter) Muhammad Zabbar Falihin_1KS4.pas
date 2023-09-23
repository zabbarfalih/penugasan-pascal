program penugasan8_2_3a; {Fungsi Dengan Parameter}
uses crt;

var
   i, j, n:integer;
   kar:char;

function hasil(x:integer; c:char):integer;
begin
   for i:=1 to x do
      begin
         for j:=1 to i do
            begin
               if (j=1) or (i=x) or (j=i) then
                  write(c:2)
               else
                  write(' ':2);
            end;
         writeln;
      end;
end;

begin
   clrscr;
   writeln('====================================');
   writeln('======== SEGITIGA RATA KIRI ========');
   writeln('====================================');
   writeln;
   write('Karakter yang digunakan : '); readln(kar);
   writeln('Ukuran segitiga yang diinginkan');
   write('Tinggi = '); readln(n);
   hasil(n,kar);
   readln;
end.