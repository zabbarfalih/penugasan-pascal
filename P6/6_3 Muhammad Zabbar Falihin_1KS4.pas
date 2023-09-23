program penugasan6_3;
uses crt;

var
   i, n, angka, jumlah : integer;
   rata : real;

begin
   clrscr;
   writeln('=======================================================');
   writeln('======== PROGRAM MENGHITUNG RATA-RATA BILANGAN ========');
   writeln('=======================================================');
   writeln;
   write('Masukkan jumlah bilangan N: '); readln(n);
   i := 1;
   repeat
      begin
         write('Masukkan bilangan ke-', i, ': '); readln(angka);
         jumlah := jumlah + angka;
         i := i + 1;
      end;
   until i>n;
   rata := jumlah/n;
   writeln('Rata-rata bilangan = ', rata:0:2);
   readln;
end.