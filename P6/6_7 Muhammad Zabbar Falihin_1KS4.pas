program penugasan6_7;
uses crt;

var
   i, n, usia, u17, u18, u19, u20, u_lain : integer;

begin
   clrscr;
   writeln('==================================================================================================');
   writeln('=============================== PROGRAM MENGHITUNG JUMLAH MAHASISWA ==============================');
   writeln('======== YANG BERUSIA 17 TAHUN, 18 TAHUN, 19 TAHUN, 20 TAHUN, DAN YANG BERUSIA SELAIN ITU ========');
   writeln('==================================================================================================');
   writeln;
   write('Masukkan jumlah mahasiswa: '); readln(n);
   i := 1;
   u17 := 0;
   u18 := 0; 
   u19 := 0;
   u20 := 0;
   u_lain := 0;
   repeat
      begin  
         write('Masukkan usia mahasiswa ke-', i, ': '); readln(usia);
         case usia of
            17 : u17 := u17 + 1;
            18 : u18 := u18 + 1;
            19 : u19 := u19 + 1;
            20 : u20 := u20 + 1;
         else
            u_lain := u_lain + 1;
         end;
         i := i + 1;
      end;
   until i>n;
   writeln('Jumlah mahasiswa berusia 17 tahun = ', u17);
   writeln('Jumlah mahasiswa berusia 18 tahun = ', u18);
   writeln('Jumlah mahasiswa berusia 19 tahun = ', u19);
   writeln('Jumlah mahasiswa berusia 20 tahun = ', u20);
   writeln('Jumlah mahasiswa berusia selain itu = ', u_lain);
   readln;
end.