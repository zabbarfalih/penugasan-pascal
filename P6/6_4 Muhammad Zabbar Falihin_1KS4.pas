program penugasan6_4;
uses crt;

var
   posisi, i, n : integer;
   jumlah : real;

begin
   clrscr;
   writeln('=================================================');
   writeln('======== PROGRAM MENGHITUNG JUMLAH DERET ========');
   writeln('=================================================');
   writeln;
   write('Masukkan nilai N (bilangan ganjil positif): '); readln(n);
   posisi := 1;
   i := 1;
   if (n mod 2 = 1) and (n > 0) then
      begin
         while i<=n do
            begin
               if (posisi mod 2 = 1) then
                  begin
                     jumlah := jumlah + 1/i;
                     if (i = 1) then
                        write(i)
                     else
                        write(' + 1/', i);
                  end
               else
                  begin
                     jumlah := jumlah - 1/i;
                     write(' - 1/', i);
                  end;
               i := i + 2;
               posisi := posisi + 1;
            end;
         writeln(' = ', jumlah:0:2);
      end
   else
      writeln('Nilai N yang anda masukkan harus bilangan ganjil positif!');
   readln;
end.