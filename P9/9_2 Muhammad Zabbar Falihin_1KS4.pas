program penugasan9_2;
uses crt;

var
   a, b, hasil:integer;

procedure tambah(x,y:integer; var z:integer);
   begin
      z:=x+y;
   end;

begin
   clrscr;
   writeln('========================================');
   writeln('==== PROGRAM PENJUMLAHAN 2 BILANGAN ====');
   writeln('========================================');
   writeln;
   write('Masukkan Angka Pertama = '); readln(a);
   write('Masukkan Angka Kedua   = '); readln(b);
   tambah(a,b,hasil);
   writeln;
   writeln('========================================');
   writeln;
   writeln('Hasil dari ', a, ' + ', b, ' = ', hasil);
   readln;
end.