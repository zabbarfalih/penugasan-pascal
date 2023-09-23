program penugasan4_1;
uses crt;
var
   nama:string;
   golongan,umur,lama:integer;


begin
   clrscr;
   writeln('===================================================');
   writeln('============= Bonus Pegawai Perusahaan ============');
   writeln('===================================================');
   writeln;
   write('Nama Pegawai : '); readln(nama);
   write('Umur Pegawai : '); readln(umur);
   writeln('Informasi Golongan Pegawai');
   writeln;
   writeln('1. Staf');
   writeln('2. Non Staf');
   writeln;
   write('Golongan Pegawai (1 atau 2) : '); readln(golongan);
   write('Lama bekerja di PT Maju Terus : '); readln(lama);
   writeln;
   if (golongan=1) then
      begin
         if (umur>=50) and (lama>=5) then
            writeln('Selamat, bonus pegawai atas nama ',nama,' sebagai Pegawai Staf Perusahaan sebesar Rp1.000.000,-')
         else if (lama<5) then
            writeln('Selamat, bonus pegawai atas nama ',nama,' sebagai Pegawai Staf Perusahaan sebesar Rp500.000,-')
         else
            writeln('Selamat, bonus pegawai atas nama ',nama,' sebagai Pegawai Staf Perusahaan sebesar Rp250.000,-');
            writeln('Mohon maaf jika bonus anda lebih sedikit dibandingkan dengan yang bekerja kurang dari 5 tahun');
            writeln('karena kebijakan dari perusahaan.');
            writeln('(Karena di soalnya tidak diberi tahu jika staf yang bekerja paling tidak 5 tahun dan berapapun umurnya');
            writeln('akan mendapat bonus berapa).');
      end
   else if (golongan=2) then
      begin
         if (umur>=50) or (lama>=5) then
            writeln('Selamat, bonus pegawai atas nama ',nama,' sebagai Pegawai Non Staf Perusahaan sebesar Rp400.000,-')
         else
            writeln('Selamat, bonus pegawai atas nama ',nama,' sebagai Pegawai Non Staf Perusahaan sebesar Rp250.000,-');
      end;
      readln;
end.
