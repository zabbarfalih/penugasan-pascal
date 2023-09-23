program penugasan6_5;
uses crt;

var
   jumlah, i, n, angka : integer;

begin
   clrscr;
   writeln('==========================================================');
   writeln('======== PROGRAM MENGHITUNG JUMLAH BILANGAN GENAP ========');
   writeln('==========================================================');
   writeln;
   write('Masukkan jumlah bilangan N: '); readln(n);
   i:=1;
   repeat
      begin
         write('Masukkan bilangan ke-', i, ': '); readln(angka);
         if (angka mod 2 = 0) then
            jumlah := jumlah + angka;
         i := i + 1;
      end;
   until i>n;
   writeln('Jumlah bilangan genap = ', jumlah);
   readln;
end.