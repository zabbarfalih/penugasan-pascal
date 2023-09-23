program penugasan9_4;
uses crt;

var
   n, r, pilihan:integer;

function faktorial(x:integer):longint;
var i:integer;
   begin
      faktorial:=1;
      for i:= 1 to x do
      faktorial := faktorial*i;
   end;

function permutasi(x,y:integer):longint;
   begin
      permutasi := faktorial(x) div faktorial(x-y);
   end;

function kombinasi(x,y:integer):longint;
   begin
      kombinasi := permutasi(x,y) div faktorial(y);
   end;

begin
   repeat
      begin
         clrscr;
         writeln('Selamat datang di Kalkulator Faktorial, Permutasi, dan Kombinasi');
         writeln('Silahkan pilih menu berikut:');
         writeln('1. Faktorial');
         writeln('2. Permutasi');
         writeln('3. Kombinasi');
         writeln('4. Keluar');
         write('Pilihan Anda: '); readln(pilihan);
         writeln;
         if (pilihan>=1) and (pilihan<=3) then
            begin
               write('Masukkan nilai n = '); readln(n);
                  if (pilihan=2) or (pilihan=3) then
                     begin
                        write('Masukkan nilai r = '); readln(r);
                     end;
               writeln;
            end;
         case pilihan of
            1: writeln('Hasil dari ', n, '! adalah ', faktorial(n));
            2: writeln('Hasil dari ', n, 'P', r, ' adalah ' , permutasi(n,r));
            3: writeln('Hasil dari ', n, 'C', r, ' adalah ' , kombinasi(n,r));
            4: writeln('Terima Kasih');
         else
            writeln('Pilihan yang anda masukkan tidak tepat.');
         end;
         readln;
      end;
   until (pilihan=4);
end.