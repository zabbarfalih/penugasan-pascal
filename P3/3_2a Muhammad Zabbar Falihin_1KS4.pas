program penugasan3_2a;
uses crt;
var
   x1,x2,x3,x4,x5,rata,sd:real;
const
   n=5;
begin
   clrscr;
   writeln('Mencari Standar Deviasi (SD)');
   writeln('============================');
   write('Data ke 1 (x1) = '); readln(x1);
   write('Data ke 2 (x2) = '); readln(x2);
   write('Data ke 3 (x3) = '); readln(x3);
   write('Data ke 4 (x4) = '); readln(x4);
   write('Data ke 5 (x5) = '); readln(x5);
   writeln('Jumlah Data = ',n);
   rata:=(x1+x2+x3+x4+x5)/n;
   writeln('Rata-rata = ',rata:0:2);
   sd:=sqrt((sqr(x1-rata)+sqr(x2-rata)+sqr(x3-rata)+sqr(x4-rata)+sqr(x5-rata))/(n-1));
   writeln('Standar Deviasi (SD) = ',sd:0:2);
   readln;
end.
