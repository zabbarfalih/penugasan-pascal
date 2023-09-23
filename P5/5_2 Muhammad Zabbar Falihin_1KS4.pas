program penugasan5_2;
uses crt;

var
   nilai:real;

begin
   clrscr;
   writeln('Masukkan nilai anda (0-100) = ');
   write('Nilai anda : '); readln(nilai);
   
   case round(nilai) of
      0..79:writeln('Nilai anda belum mencapai Kriteria Ketuntasan Minimal (KKM)');
      80..100:writeln('Nilai anda telah mencapai Kriteria Ketuntasan Minimal (KKM)');
   else
      writeln('Nilai yang anda masukkan tidak sesuai/tidak tepat.')
   end;
   readln;
end.
