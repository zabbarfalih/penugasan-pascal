program penugasan8_2_3a; {Prosedur Tanpa Parameter}
uses crt;

var
   i, j, n:integer;
   kar:char;

procedure hasil;
begin
   for i:=1 to n do
      begin
         for j:=1 to i do
            begin
               if (j=1) or (i=n) or (j=i) then
                  write(kar:2)
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
   hasil;
   readln;
end.