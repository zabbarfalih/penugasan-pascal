program penugasan5_3b;
uses crt;

var
   nilai:integer;
   grade:char;

begin
   clrscr;
   writeln('Input nilai yang Anda dapatkan 0 s.d. 100');
   write('Nilai Anda = '); readln(nilai);

   if (nilai>=0) and (nilai<=59) then
      grade:='D'
   else if (nilai>=60) and (nilai<=69) then
      grade:='C'
   else if (nilai>=70) and (nilai<=79) then
      grade:='B'
   else if (nilai>=80) and (nilai<=100) then
      grade:='A'
   else
      grade:='F';

   if grade='F' then
      writeln('Anda salah input nilai')
   else writeln('Grade Anda ',grade);

   if (grade='D') then
      writeln(' Kurang memuaskan')
   else if (grade='C') then
      writeln(' Cukup')
   else if (grade='B') then
      writeln(' Baik')
   else if (grade='A') then
      writeln(' Sangat Baik');
   readln;
end.
