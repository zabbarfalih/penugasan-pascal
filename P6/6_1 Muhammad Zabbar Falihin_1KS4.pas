program penugasan6_1;
uses crt;

var
   i, jumlah, n : integer;
    
begin
   clrscr;
   writeln('=======================================================');
   writeln('======== PROGRAM MENGHITUNG JUMLAH DERET ANGKA ========');
   writeln('=======================================================');
   writeln;
   write('Masukkan nilai N (bilangan bulat positif) = '); readln(n);
   i := 1;
   jumlah := 0;
   if (n > 0) then
      begin
         while i<=n do
            begin
               if (i < n) then
                  write(i, ' + ')
               else
                  write(i);
               jumlah := jumlah + i;
               i := i + 1;
            end;
         writeln(' = ', jumlah);
      end
   else
      writeln('Nilai N yang anda masukkan harus bilangan bulat positif!');
   readln;
end.