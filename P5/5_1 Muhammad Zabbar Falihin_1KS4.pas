program penugasan5_1;
uses crt;

var
   os:string;
   kepuasan:integer;

begin
   clrscr;
   writeln;
   writeln('Masukkan sistem operasi yang anda gunakan di komputer anda (Windows/macOS/Linux)');
   write('Sistem Operasi : '); readln(os);
   
   case upcase(os) of
      'WINDOWS' : writeln('Anda menggunakan sistem operasi Microsoft Windows');
      'MACOS'   : writeln('Anda menggunakan sistem operasi macOS');
      'LINUX'   : writeln('Anda menggunakan sistem operasi Linux');
   else
      writeln('Sistem Operasi yang anda masukkan tidak terdaftar/tidak sesuai dengan pilihan yang disediakan.');
   end;
   writeln;
   writeln('Tingkat kepuasan anda terhadap sistem operasi yang anda gunakan (1-4)');
   writeln('1. Tidak Puas');
   writeln('2. Kurang Puas');
   writeln('3. Cukup Puas');
   writeln('4. Sangat Puas');
   writeln;
   write('Tingkat Kepuasan : '); readln(kepuasan);
   
   case Kepuasan of
      1: writeln('Anda tidak puas dengan sistem operasi yang anda gunakan.');
      2: writeln('Anda kurang puas dengan sistem operasi yang anda gunakan.');
      3: writeln('Anda cukup puas dengan sistem operasi yang anda gunakan.');
      4: writeln('Anda sangat puas dengan sistem operasi yang anda gunakan.');
   else
      writeln('Tidak Tahu/Tidak Menjawab');
   end;
   readln;
end.
