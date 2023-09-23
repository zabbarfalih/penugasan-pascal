program penugasan4_3;
uses crt;
var
   hari:string;

begin
   clrscr;
   writeln('===================================================');
   writeln('================== Jadwal Kuliah ==================');
   writeln('===================================================');
   writeln;
   writeln('Senin');
   writeln('Selasa');
   writeln('Rabu');
   writeln('Kamis');
   writeln('Jumat');
   writeln('Sabtu');
   writeln;
   write('Pilih Hari : '); readln(hari);
   writeln;
   if (hari='Senin') then
      writeln('Mata Kuliah yang diberikan pada hari ',hari,' adalah Algoritma dan Pemorgraman I.')
   else if (hari='Selasa') then
      writeln('Mata Kuliah yang diberikan pada hari ',hari,' adalah Kalkulus.')
   else if (hari='Rabu') then
      writeln('Mata Kuliah yang diberikan pada hari ',hari,' adalah Bahasa Indonesia.')
   else if (hari='Kamis') then
      writeln('Mata Kuliah yang diberikan pada hari ',hari,' adalah Pengantar Teknik Informatika.')
   else if (hari='Jumat') then
      writeln('Mata Kuliah yang diberikan pada hari ',hari,' adalah Bahasa Inggris.')
   else if (hari='Sabtu') then
      writeln('Mata Kuliah yang diberikan pada hari ',hari,' adalah Basis Data.')
   else
      writeln('Hari yang anda masukkan yaitu hari ',hari,' tidak sesuai dengan pilihan hari yang disediakan.');
   readln;
end.
