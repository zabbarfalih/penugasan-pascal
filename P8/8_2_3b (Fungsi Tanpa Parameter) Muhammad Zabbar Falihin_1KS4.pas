program penugasan8_2_3b; {Fungsi Tanpa Parameter}
uses crt;

var
   i, j, k, n:integer;
   kar:char;

function hasil:integer;
begin
   for i:=1 to n do
      begin
         for j:=1 to 2*(n-i) do
            write(' ');
            for k:=1 to i do
               begin
                  if (k=1) or (i=n) or (k=i) then
                     write(kar:2)
                  else
                     write(' ':2);
               end;
         writeln;
      end;
end;

begin
   clrscr;
   writeln('=====================================');
   writeln('======== SEGITIGA RATA KANAN ========');
   writeln('=====================================');
   writeln;
   write('Karakter yang digunakan : '); readln(kar);
   writeln('Ukuran segitiga yang diinginkan');
   write('Tinggi = '); readln(n);
   hasil;
   readln;
end.