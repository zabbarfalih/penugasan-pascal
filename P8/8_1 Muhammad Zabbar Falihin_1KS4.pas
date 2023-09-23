program penugasan8_1;
uses crt;

type
   Hari=(Ahad, Senin, Selasa, Rabu, Kamis, Jumat, Sabtu);
   tanggalbulan=1..31;

var
   i, hariawal2022, awalbulan:hari;
   j, tanggal:tanggalbulan;
   tahunkabisat:boolean;
   namabulan, karakter:string;
   x, y, judul, lebar, tahun, bul:integer;

{Judul Kalender}
procedure judulkalender;
   begin
      str(tahun, karakter);
      for judul:=1 to (43+length(karakter)) do
         write('=');
      writeln;
      writeln('============= Kalender Tahun ', tahun, ' =============');
      for judul:=1 to (43+length(karakter)) do
         write('=');
      writeln;
      writeln;
   end;

{Hari Pertama di Tahun yang Dimasukkan}
procedure haripertama;
   begin
      hariawal2022:=Sabtu;
      if tahun>=2022 then
         awalbulan:=Hari((ord(hariawal2022)+(365 mod 7)*(tahun-2022)+((tahun-2021) div 4)) mod 7)
      else
         awalbulan:=Hari((7+(ord(hariawal2022)-(365 mod 7)*(2022-tahun)-((2024-tahun) div 4)) mod 7)mod 7);
      x:=ord(awalbulan);
   end;

{Menentukan Tahun Kabisat}
procedure kabisat;
   begin
      if (tahun mod 400 = 0) then
         tahunkabisat := true
      else if (tahun mod 100 = 0) then
         tahunkabisat := false
      else if (tahun mod 4 = 0) then
         tahunkabisat := true
      else
         tahunkabisat := false;
   end;

{Nama dan Tanggal Bulan}
procedure bulan;
   begin
      case bul of
         1: begin
               namabulan:='Januari';
               tanggal:=31;
            end;
         2: begin
               namabulan:='Februari';
               if (tahunkabisat = true) then
                  tanggal:=29
               else
                  tanggal:=28;
               end;
         3: begin
               namabulan:='Maret';
               tanggal:=31;
            end;
         4: begin
               namabulan:='April';
               tanggal:=30;
            end;
         5: begin
               namabulan:='Mei';
               tanggal:=31;
            end;
         6: begin
               namabulan:='Juni';
               tanggal:=30;
            end;
         7: begin
               namabulan:='Juli';
               tanggal:=31;
            end;
         8: begin
               namabulan:='Agustus';
               tanggal:=31;
            end;
         9: begin
               namabulan:='September';
               tanggal:=30;
            end;
        10: begin
               namabulan:='Oktober';
               tanggal:=31;
            end;
        11: begin
               namabulan:='November';
               tanggal:=30;
            end;
        12: begin
               namabulan:='Desember';
               tanggal:=31;
            end;
         end;
      end;

{Pembuatan Kalender}
procedure kalender;
   begin
      writeln(' ':25-length(namabulan), namabulan, ' ', tahun);
      lebar:=7;
      for i:=Ahad to Sabtu do
         write(i:lebar);
      writeln;
      y:= wherey;
      for j:=1 to tanggal do
         begin
            if x=7 then
               begin
                  x:=0;
                  writeln;
                  y:=wherey;
               end;
         gotoxy(lebar*x+1,y);write(j:3);
         x:=x+1;
         end;
      writeln;
      readln;
   end;

begin
   clrscr;
   write('Masukkan Tahun: '); readln(tahun);
   writeln;
   judulkalender;
   haripertama;
   kabisat;
   for bul:= 1 to 12 do
      begin
         bulan;
         kalender;
      end;
   readln;
end.