program penugasan4_2;
uses crt;
var
   suhu:integer;

begin
   clrscr;
   writeln('===================================================');
   writeln('============== Hasil Pengukuran Suhu ==============');
   writeln('===================================================');
   writeln;
   write('Hasil Pengukuran Suhu Air (derajat Celcius) : '); readln(suhu);
   writeln;
   writeln('Informasi Suhu');
   writeln('1. Beku = Suhu sama atau kurang dari 0 derajat Celcius');
   writeln('2. Cair = Suhu lebih dari 0 derajat Celcius dan kurang dari 100 derajat Celcius');
   writeln('3. Uap  = Suhu sama atau lebih dari 100 derajat Celcius');
   writeln;
   if (suhu>=100) then
         writeln('Kondisi air pada suhu sebesar ',suhu,' derajat Celcius adalah Uap.')

   else if (suhu>0) and (suhu<100) then
         writeln('Kondisi air pada suhu sebesar ',suhu,' derajat Celcius adalah Cair.')
   else
         writeln('Kondisi air pada suhu sebesar ',suhu,' derajat Celcius adalah Beku.');
   readln;
end.
