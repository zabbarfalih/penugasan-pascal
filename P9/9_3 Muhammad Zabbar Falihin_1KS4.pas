program penugasan9_3;
uses crt;

var
   pilihan :integer;
   a, b    :real;

function tambah(x, y:real):double;
   begin
      tambah:=x+y;
   end;

function kurang(x, y:real):double;
   begin
      kurang:=x-y;
   end;

function kali(x, y:real):double;
   begin
      kali:=x*y;
   end;

function bagi(x, y:real):double;
   begin
      bagi:=x/y;
   end;

begin
   repeat
      begin
         clrscr;
         writeln('Selamat datang di kalkulator sederhana');
         writeln('Silahkan pilih menu berikut:');
         writeln(' 1. Penjumlahan');
         writeln(' 2. Pengurangan');
         writeln(' 3. Perkalian');
         writeln(' 4. Pembagian');
         writeln(' 5. Keluar');
         write('Pilihan Anda: '); readln(pilihan);
         writeln;
         if (pilihan>=1) and (pilihan<=4) then
            begin
               write('Angka pertama : '); readln(a);
               write('Angka kedua   : '); readln(b);
               writeln;
            end;
         case pilihan of
            1: writeln('Hasil dari ', a:0:2, ' + ', b:0:2, ' = ', tambah(a,b):0:2);
            2: writeln('Hasil dari ', a:0:2, ' - ', b:0:2, ' = ', kurang(a,b):0:2);
            3: writeln('Hasil dari ', a:0:2, ' x ', b:0:2, ' = ', kali(a,b):0:2);
            4: writeln('Hasil dari ', a:0:2, ' : ', b:0:2, ' = ', bagi(a,b):0:2);
            5: writeln('Terima Kasih');
         else
            writeln('Pilihan yang anda masukkan tidak tepat.');
         end;
         readln;
      end;
   until (pilihan=5);
end.