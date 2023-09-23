program penugasan5_3c;
uses crt;

var
   nilai:integer;

begin
   clrscr;
   writeln('Input nilai yang Anda dapatkan 0 s.d. 100');
   write('Nilai Anda = '); readln(nilai);

   if (nilai>=0) and (nilai<=59) then
      writeln(' Anda tidak lulus')
   else if (nilai>=60) and (nilai<=100) then
      begin
         write('Anda lulus ');
         if (nilai<=74) then
            writeln('dengan nilai cukup')
         else if (nilai<=89) then
            writeln('dengan nilai baik')
         else
            writeln('dengan nilai sangat baik');
      end
   else
         writeln(' Anda salah input nilai');
   readln
end.