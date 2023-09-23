program penugasan7_1;
uses crt;

var
   i, j, n:integer;

begin
   clrscr;
   write('Masukkan jumlah baris : '); readln(n);
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
   readln;
end.