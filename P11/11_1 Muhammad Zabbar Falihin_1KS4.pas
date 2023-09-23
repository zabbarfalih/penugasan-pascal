program penugasan11_1;
uses crt;

type
    datamahasiswa = record
    nim        :string[9];
    nama       :string[26];
    kelas      :string[5];
    nilaialpro :byte;
    end;

var
    mahasiswa     :array[1..100] of datamahasiswa;
    i, n, pilihan :integer;
    
procedure input;
    begin
        write('Masukkan banyak mahasiswa = '); readln(n);
        for i:=1 to n do
            begin
                writeln;
                writeln('===============================');
                writeln;
                writeln('Input data mahasiswa ke-', i);
                with mahasiswa[i] do
                    begin
                        write('NIM         : '); readln(nim);
                        write('Nama        : '); readln(nama);
                        write('Kelas       : '); readln(kelas);
                        write('Nilai Alpro : '); readln(nilaialpro);
                    end;
            end;
        writeln;
        writeln('===============================');
        writeln;
        writeln('Data berhasil dimasukkan.');
    end;
    
procedure tampil;
    begin
        writeln('                        Data Mahasiswa                         ');
        writeln;
        writeln('|===========|============================|=======|=============|');
        writeln('|    NIM    |            Nama            | Kelas | Nilai Alpro |');
        writeln('|===========|============================|=======|=============|');
        for i:=1 to n do
            begin
                with mahasiswa[i] do
                    begin
                        gotoxy(1,13+i); writeln('|           |                            |       |             |');
                        gotoxy(3,13+i); write(mahasiswa[i].nim);
                        gotoxy(15,13+i); write(mahasiswa[i].nama);
                        gotoxy(44,13+i); write(mahasiswa[i].kelas);
                        gotoxy(52,13+i); writeln(mahasiswa[i].nilaialpro);
                    end;
            end;
        writeln('|===========|============================|=======|=============|');
    end;
    
function terbesar:integer;
    begin
        terbesar:=mahasiswa[1].nilaialpro;
        for i:=1 to n do
            begin
                if mahasiswa[i].nilaialpro>terbesar then
                    terbesar:=mahasiswa[i].nilaialpro;
            end;
    end;
    
function terkecil:integer;
    begin
        terkecil:=mahasiswa[1].nilaialpro;
        for i:=1 to n do
            begin
                if mahasiswa[i].nilaialpro<terkecil then
                    terkecil:=mahasiswa[i].nilaialpro;
            end;
    end;

function ratarata:real;
    begin
        ratarata:=0;
        for i:=1 to n do
            ratarata:=ratarata+mahasiswa[i].nilaialpro/n;
    end;

begin
    repeat
        clrscr;
        writeln('Selamat datang di Program Entri Mahasiswa');
        writeln('1. Input Data');
        writeln('2. Tampilkan Data');
        writeln('3. Nilai Alpro Terbesar');
        writeln('4. Nilai Alpro Terkecil');
        writeln('5. Rata-rata Nilai Alpro');
        writeln('6. Keluar');
        write('Pilihan Anda (1-6): '); readln(pilihan);
        case pilihan of
            1:  input;
            2:  tampil;
            3:  writeln('Nilai Alpro terbesar adalah ', terbesar);
            4:  writeln('Nilai Alpro terkecil adalah ', terkecil);
            5:  writeln('Rata-rata Nilai Alpro dari ',n,' mahasiswa adalah sebesar ', ratarata:0:2);
            6:  writeln('Terima kasih');
        else
            writeln('Pilihan yang anda masukkan tidak tepat.');
        end;
        readln;
    until (pilihan = 6);
end.