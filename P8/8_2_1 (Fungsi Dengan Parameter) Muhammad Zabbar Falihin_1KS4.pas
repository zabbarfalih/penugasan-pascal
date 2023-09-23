program penugasan8_2_1; {Fungsi Dengan Parameter}
uses crt;

var
   i, j, n:integer;

function hasil(x:integer):integer;
begin
   for i:=1 to x do
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
   hasil(n);
   readln;
end.