program penugasan8_2_1; {Prosedur Tanpa Parameter}
uses crt;

var
   i, j, n:integer;

procedure hasil;
begin
   for i:=1 to n do
      begin
         for j:=0 to 9 do
            begin
               if (i mod 2 = 1) then
                  write(j:2)
               else
                  write(9-j:2);
            end;
         writeln;
      end;
end;

begin
   clrscr;
   write('Masukkan jumlah baris : '); readln(n);
   hasil;
   readln;
end.