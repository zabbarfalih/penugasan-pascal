program penugasan12_1;
uses crt;

var
	n, pilihan :integer;
	a, b       :real;
	panjangn   :string;

function tambah(x, y:real):double;
	begin
		tambah:=x+y;
	end;

function kurang(x, y:real):double;
	begin
		kurang:=x-y;
	end;

function kali(x, y:real):double;
	begin
		kali:=x*y;
	end;

function bagi(x, y:real):double;
	begin
		bagi:=x/y;
	end;

function faktorial(x:integer):longint;
	begin
		if x=0 then
			faktorial:=1
		else
		faktorial:= x*faktorial(x-1);
	end;

begin
	repeat
		clrscr;
   	writeln('Selamat datang di kalkulator sederhana');
		writeln('Silahkan pilih menu berikut:');
      writeln(' 1. Penjumlahan');
		writeln(' 2. Pengurangan');
		writeln(' 3. Perkalian');
		writeln(' 4. Pembagian');
		writeln(' 5. Faktorial');
		writeln(' 6. Keluar');
		write('Pilihan Anda: '); readln(pilihan);
		writeln;
      if (pilihan>=1) and (pilihan<=4) then
         begin
            write('Angka pertama : '); readln(a);
            write('Angka kedua   : '); readln(b);
            writeln;
         end;
      case pilihan of
			1: writeln('Hasil dari ', a:0:2, ' + ', b:0:2, ' = ', tambah(a,b):0:2);
			2: writeln('Hasil dari ', a:0:2, ' - ', b:0:2, ' = ', kurang(a,b):0:2);
			3: writeln('Hasil dari ', a:0:2, ' x ', b:0:2, ' = ', kali(a,b):0:2);
			4: writeln('Hasil dari ', a:0:2, ' : ', b:0:2, ' = ', bagi(a,b):0:2);
			5:	begin
    				write('Masukkan angka : '); readln(n);
    				while (n<0) do
    					begin
    						gotoxy(1,13); writeln('Angka yang anda masukkan haruslah 0 (nol) atau bilangan bulat positif.');
    						str(n, panjangn);
    						gotoxy(18,11); write('':length(panjangn));
    						gotoxy(18,11); readln(n);
    					end;
					gotoxy(1,13); writeln('':70);
       			gotoxy(1,13); writeln('Hasil dari ', n,'! adalah ', faktorial(n));
       	   end;
      	6:	writeln('Terima Kasih');
		else
			writeln('Pilihan yang anda masukkan tidak tepat.');
		end;
      readln;
   until (pilihan=6);
end.