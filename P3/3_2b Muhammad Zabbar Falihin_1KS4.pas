program penugasan3_2b;
uses crt;
var
   x,m,sd,z:real;

begin
   clrscr;
   writeln('NILAI TABEL DARI DISTRIBUSI NORMAL');
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
   write('Nilai rata-rata masing-masing (x) = '); readln(x);
   write('Nilai rata-rata keseluruhan (m) = '); readln(m);
   write('Standar Deviasi (sd) = '); readln(sd);
   z:=(x-m)/sd;
   writeln('Nilai Tabel (z) : ',z:0:2);
   readln;
end.
