program penugasan10_2;
uses
   crt, math;

type
   matriks = array[1..100, 1..100] of integer;
   matriksreal = array[1..100, 1..100] of real;
var
   matriks1, matriks2, hasilkali, hasiltranspose : matriks;
   i, j, p, x, y, z, baris, kolom1, kolom2, ordo, judul, pilihan : integer;

{Menu}
procedure menu;
   begin
      clrscr;
      writeln('Silahkan pilih menu berikut:');
      writeln('1. Melakukan perkalian matriks');
      writeln('2. Menghitung determinan matriks');
      writeln('3. Melakukan transpose matriks');
      writeln('4. Melakukan invers Matriks');
      writeln('5. Keluar');
      write('Masukkan pilihan: '); readln(pilihan);
      writeln;
   end;

{Judul Program}
procedure judulprogram;
   begin
      clrscr;
      case pilihan of
      1: p := 3;
      2: p := 4;
      3: p := 3;
      4: p := 0;
      end;
      for judul := 1 to (42 + p) do
         write('=');
      writeln;
      case pilihan of
      1: writeln('============= PERKALIAN MATRIKS =============');
      2: writeln('============= DETERMINAN MATRIKS =============');
      3: writeln('============= TRANSPOSE MATRIKS =============');
      4: writeln('============= INVERS MATRIKS =============');
      end;
      for judul := 1 to (42 + p) do
         write('=');
      writeln;
      writeln;
   end;

{Elemen Matriks}
procedure elemenmatriks(b, k : integer; var m : matriks);
   begin
      for x := 1 to b do
         begin
            for y := 1 to k do
               begin
                  write('Masukkan elemen matriks [', x, ', ', y, '] : '); readln(m[x, y]);
               end;
         end;
   end;

{Tampilkan Matriks}
procedure tampilkanmatriks(b, k : integer; m : matriks);
   begin
      write(' ':5);
      for y := 1 to k do
         write(y:5);
      writeln;
      write('     ');
      for y := 1 to k do
         write('-----');
      writeln;
      for x := 1 to b do
         begin
            write(x:3, ' |');
               for y := 1 to k do
                  begin
                     write(m[x, y]:5);
                  end;
            writeln;
         end;
   end;

{Tampilkan Matriks Real}
procedure tampilkanmatriksreal(b, k : integer; m : matriksreal);
   begin
      write(' ':5);
      for y := 1 to k do
         write(y:9);
      writeln;
      write('     ');
      for y := 1 to k do
         write('---------');
      writeln;
      for x := 1 to b do
         begin
            write(x:3, ' |');
               for y := 1 to k do
                  begin
                     write(m[x, y]:9:2);
                  end;
            writeln;
         end;
   end;

function kali(b, k1, k2:integer):longint;
   begin
      for x := 1 to baris do
         begin
            hasilkali[x, y] := 0;
            for y := 1 to kolom2 do
               for z := 1 to kolom1 do
                  hasilkali[x, y] := hasilkali[x, y] + matriks1[x, z] * matriks2[z, y];
         end;
   end;


{Perkalian Matriks}
procedure perkalianmatriks;
   begin
      writeln('Matriks Pertama');
      write('Masukkan jumlah baris : '); readln(baris);
      write('Masukkan jumlah kolom : '); readln(kolom1);
      writeln;
      writeln('Matriks Kedua');
      writeln('Masukkan jumlah baris : ', kolom1);
      write('Masukkan jumlah kolom : '); readln(kolom2);
      writeln;
      writeln('Elemen Matriks Pertama');
      elemenmatriks(baris, kolom1, matriks1);
      writeln;
      writeln('Elemen Matriks Kedua');
      elemenmatriks(kolom1, kolom2, matriks2);
      kali(baris, kolom1, kolom2);
      writeln;
      clrscr;
      writeln('Hasil perkalian matriks');
      tampilkanmatriks(baris, kolom1, matriks1);
      writeln;
      writeln('dengan matriks');
      tampilkanmatriks(kolom1, kolom2, matriks2);
      writeln;
      writeln('adalah');
      tampilkanmatriks(baris, kolom2, hasilkali);
      writeln;
   end;

function determinan2(b1, k1, b2, k2:integer; x:matriks):longint;   
   begin
      determinan2 := x[b1, k1] * x[b2, k2] - x[b1, k2] * x[b2, k1];
   end;

function kofaktor:matriks;
   begin
      kofaktor[1, 1] := determinan2(2, 2, 3, 3, matriks1);
      kofaktor[1, 2] := determinan2(2, 1, 3, 3, matriks1);
      kofaktor[1, 3] := determinan2(2, 1, 3, 2, matriks1);
      kofaktor[2, 1] := determinan2(1, 2, 3, 3, matriks1);
      kofaktor[2, 2] := determinan2(1, 1, 3, 3, matriks1);
      kofaktor[2, 3] := determinan2(1, 1, 3, 2, matriks1);
      kofaktor[3, 1] := determinan2(1, 2, 2, 3, matriks1);
      kofaktor[3, 2] := determinan2(1, 1, 2, 3, matriks1);
      kofaktor[3, 3] := determinan2(1, 1, 2, 2, matriks1);
   end;

function determinan3(x:matriks):longint;   
   begin
      determinan3 := x[1, 1] * kofaktor[1, 1] - x[1, 2] * kofaktor[1, 2] + x[1, 3] * kofaktor[1, 3];
   end;

{Determinan Matriks}
procedure determinanmatriks;
   begin
      write('Masukkan banyak baris atau kolom matriks persegi = '); readln(ordo);
      writeln;
      if (ordo >= 2) and (ordo <= 3) then
         begin
            elemenmatriks(ordo, ordo, matriks1);
            writeln;
            writeln('Matriks berordo ', ordo, ' x ', ordo, ' tersebut adalah');
            writeln;
            tampilkanmatriks(ordo, ordo, matriks1);
            writeln;
            write('Hasil dari determinan matriks tersebut adalah ');
            case ordo of
            2: writeln(determinan2(1, 1, 2, 2, matriks1));
            3: writeln(determinan3(matriks1));
            end;
         end
      else
         writeln('Banyak baris atau kolom haruslah 2 atau 3, program hanya dapat menghitung untuk matriks berordo 2 x 2 dan 3 x 3.');
      writeln;
   end;

function transpose(b, k:integer; x:matriks):integer;
   begin
      for i:=1 to b do
         for j:=1 to k do
            hasiltranspose[j, i] := x[i, j];
   end;

{Transpose Matriks}
procedure transposematriks;
   begin
      write('Masukkan jumlah baris : '); readln(baris);
      write('Masukkan jumlah kolom : '); readln(kolom1);
      writeln;
      elemenmatriks(baris, kolom1, matriks1);
      writeln;
      writeln('Matriks berordo ', baris, ' x ', kolom1, ' tersebut adalah');
      tampilkanmatriks(baris, kolom1, matriks1);
      writeln;
      transpose(baris, kolom1, matriks1);
      writeln('Hasil dari transpose matriks tersebut adalah');
      tampilkanmatriks(kolom1, baris, hasiltranspose);
      writeln;
   end;

function invers2:matriksreal;
   begin
      invers2[1, 1] := 1/determinan2(1, 1, 2, 2, matriks1) * matriks1[2, 2];
      invers2[1, 2] := (-1)/determinan2(1, 1, 2, 2, matriks1) * matriks1[1, 2];
      invers2[2, 1] := (-1)/determinan2(1, 1, 2, 2, matriks1) * matriks1[2, 1];
      invers2[2, 2] := 1/determinan2(1, 1, 2, 2, matriks1) * matriks1[1, 1];
   end;

function invers3:matriksreal;
   begin
      for i := 1 to ordo do
         begin
            for j := 1 to ordo do
               begin
                  if (i + j) mod 2 = 0 then
                     begin
                        invers3[i, j] := kofaktor[j, i] * 1/determinan3(matriks1);
                     end
                  else
                     begin
                        invers3[i, j] := kofaktor[j, i] * (-1)/determinan3(matriks1);
                     end;
               end;
         end;
   end;

{Invers Matriks}
procedure inversmatriks;
   begin
      write('Masukkan banyak baris atau matriks persegi = '); readln(ordo);
      writeln;
      if (ordo >= 2) and (ordo <= 3) then
         begin
            elemenmatriks(ordo, ordo, matriks1);
            writeln;
            writeln('Matriks berordo ', ordo, ' x ', ordo, ' tersebut adalah');
            tampilkanmatriks(ordo, ordo, matriks1);
            writeln;
            case ordo of
             2:begin
                  if (determinan2(1, 1, 2, 2, matriks1) = 0) then
                     writeln('Matriks di atas tidak memiliki invers karena nilai determinan = 0')
                  else
                     begin
                        writeln('Hasil dari invers matriks tersebut adalah');
                        tampilkanmatriksreal(ordo, ordo, invers2);
                     end;
               end;
             3:begin
                  if (determinan3(matriks1) = 0) then
                     writeln('Matriks di atas tidak memiliki invers karena nilai determinan = 0')
                  else
                     begin
                        writeln('Hasil dari invers matriks tersebut adalah');
                        tampilkanmatriksreal(ordo, ordo, invers3);
                     end;
               end;
            end;
         end
      else
         writeln('Banyak baris atau kolom haruslah 2 atau 3, program hanya dapat melakukan invers untuk matriks berordo 2 x 2 dan 3 x 3.');
      writeln;
   end;


begin
   repeat
      menu;
      if (pilihan>=1) and (pilihan<=4) then
         judulprogram;
      case pilihan of
         1: perkalianmatriks;
         2: determinanmatriks;
         3: transposematriks;
         4: inversmatriks;
         5: writeln('Terima Kasih');
      else
         writeln('Pilihan yang anda masukkan tidak tepat.');
      end;
      readln;
   until (pilihan = 5);
end.