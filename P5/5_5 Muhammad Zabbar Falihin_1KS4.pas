program penugasan5_5;
uses crt;

var
   nilai:integer;

begin
   clrscr;
   writeln('Input nilai yang Anda dapatkan 0 s.d. 100');
   write('Nilai Anda = '); readln(nilai);

   case nilai of
      0..59 : writeln(' Anda tidak lulus');
      60..74: writeln('Anda lulus dengan nilai cukup');
      75..89: writeln('Anda lulus dengan nilai baik');
      90..100: writeln('Anda lulus dengan nilai sangat baik');
   else
      writeln(' Anda salah input nilai');
   end;
   readln;
end.
