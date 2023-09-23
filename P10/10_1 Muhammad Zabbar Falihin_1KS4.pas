program penugasan10_1;
uses crt;

var
   x : array[1..100] of integer;
   i, n, pilihan:integer;
   karakter, karakter2:string;
   rata:real;

procedure input;
   begin
      write('Banyak data: '); readln(n);
      for i:=1 to n do
         begin
            write('Data ke-',i,' = '); readln(x[i]);
         end;
      writeln;
      write('Data telah terinput.');
   end;

procedure tampil;
   begin
      writeln('Menampilkan data');
      writeln('|----|----------|');
      writeln('| No |   Data   |');
      writeln('|----|----------|');
      for i:=1 to n do
         begin
            str(i, karakter);
            str(x[i], karakter2);
            writeln('|', i, ' ':4-length(karakter), '|', x[i], ' ':10-length(karakter2), '|');
         end;
      writeln('|----|----------|');
      writeln;
   end;
    
function terkecil:integer;
   begin
      terkecil := x[1];
      for i:=1 to n do
         begin
            if (x[i] < terkecil) then
               terkecil := x[i]
            else
               terkecil := terkecil;
         end;
   end;
    
function terbesar:integer;
   begin
      terbesar := x[1];
      for i:=1 to n do
         begin
            if x[i] > terbesar then
               terbesar := x[i]
            else
               terbesar:=terbesar;
         end;
   end;

function ratarata:real;
   begin
      ratarata:=0;
      for i:=1 to n do
         begin
            ratarata := ratarata + x[i]/n;
         end;
   end;
    
procedure menu;
   begin
      clrscr;
      writeln('Selamat datang di aplikasi statistik sederhana');
      writeln('Silahkan pilih menu berikut:');
      writeln('1. Input data');
      writeln('2. Tampilkan semua data');
      writeln('3. Tampilkan data terkecil');
      writeln('4. Tampilkan data terbesar');
      writeln('5. Tampilkan rata-rata');
      writeln('6. Keluar');
      write('Masukkan pilihan: '); readln(pilihan);
      writeln;
      case pilihan of
         1: input;
         2: tampil;
         3: writeln('Data terkecil adalah ', terkecil);
         4: writeln('Data terbesar adalah ', terbesar);
         5: writeln('Rata-rata dari ', n, ' data diatas adalah ', ratarata:0:2);
         6: writeln('Terima Kasih');
      else
         writeln('Pilihan yang anda masukkan tidak tepat.');
      end;
      readln;
   end;

begin
   repeat
      menu;
   until (pilihan = 6);
end.