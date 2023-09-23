program Contoh51;
uses crt;

var
   nilai:integer;
   grade:char;

begin
   clrscr;
   writeln('Input nilai yang Anda dapatkan 0 s.d. 100');
   write('Nilai Anda = '); readln(nilai);

   case nilai of
       0..59:  grade:='D';
      60..69:  grade:='C';
      70..79:  grade:='B';
      80..100: grade:='A';
   end;
   
   if (nilai>=0) and (nilai <=100) then
      writeln('Grade Anda ',grade)
   else
      writeln('Anda salah input nilai');

   case grade of
      'D': writeln(' Kurang memuaskan');
      'C': writeln(' Cukup');
      'B': writeln(' Baik');
      'A': writeln(' Sangat Baik');
   end;
   readln;
end.
