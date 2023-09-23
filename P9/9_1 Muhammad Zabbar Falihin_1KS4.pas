program penugasan9_1;
uses crt;

var
   a, b:integer;

procedure tambah(x,y:integer);
   var
      hasil:integer;
   begin
      hasil:=x+y;
      writeln;
      writeln('========================================');
      writeln;
      writeln('Hasil dari ', x, ' + ', y, ' = ', hasil);
      writeln;
      writeln('========================================');
   end;

begin
   clrscr;
   writeln('========================================');
   writeln('==== PROGRAM PENJUMLAHAN 2 BILANGAN ====');
   writeln('========================================');
   writeln;
   write('Masukkan Angka Pertama = '); readln(a);
   write('Masukkan Angka Kedua   = '); readln(b);
   tambah(a,b);
   readln;
end.