program penugasan6_2;
uses crt;

var
   a, n : integer;
    
begin
   clrscr;
   writeln('====================================================');
   writeln('======== PROGRAM MENYANYIKAN LAGU ANAK AYAM ========');
   writeln('====================================================');
   writeln;
   write('Masukkan jumlah anak ayam : '); readln(n);
   a := n;
   if (n >= 1) then
      begin
         writeln('Anak Ayam Turun ', n);
         while a>1 do
            begin
               writeln('Anak Ayam turun ', a,', mati satu tinggal ', a - 1);
               a := a - 1;
            end;
         writeln('Anak Ayam turun 1, mati satu tinggal induknya.');
      end
   else
      writeln('Jumlah anak ayam yang anda masukkan harus bilangan bulat positif!');
   readln;
end.