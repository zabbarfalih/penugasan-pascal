program penugasan8_2_3b; {Prosedur Dengan Parameter}
uses crt;

var
   i, j, k, n:integer;
   kar:char;

procedure hasil(x:integer; c:char);
begin
   for i:=1 to x do
      begin
         for j:=1 to 2*(x-i) do
            write(' ');
            for k:=1 to i do
               begin
                  if (k=1) or (i=x) or (k=i) then
                     write(c:2)
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
   hasil(n,kar);
   readln;
end.