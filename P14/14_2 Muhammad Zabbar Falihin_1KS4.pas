program penugasan14_2;
uses crt;

type
    datamahasiswa = record
    nim        :string[9];
    nama       :string[26];
    kelas      :string[5];
    nilaialpro :byte;
    end;
    arraymahasiswa = array[1..100] of datamahasiswa;

var
    mahasiswa     :arraymahasiswa;
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
                        gotoxy(1,16+i); writeln('|           |                            |       |             |');
                        gotoxy(3,16+i); write(mahasiswa[i].nim);
                        gotoxy(15,16+i); write(mahasiswa[i].nama);
                        gotoxy(44,16+i); write(mahasiswa[i].kelas);
                        gotoxy(52,16+i); writeln(mahasiswa[i].nilaialpro);
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

function SequentialSearch(data:arraymahasiswa; n:integer; carinama:string): integer;
    begin
        i:=1;
        while (i<N) and (lowercase(data[i].nama) <> lowercase(carinama)) do
            i:=i+1;
        if (lowercase(data[i].nama) <> lowercase(carinama)) then 
            SequentialSearch:=0
        else
            SequentialSearch:=i;
    end;

procedure carinilaimahasiswa;
    var 
        nama:string;

    begin
        write('Masukkan nama mahasiswa: '); readln(nama);
        if (SequentialSearch(mahasiswa,n,nama) = 0) then
            writeln('Data tidak ditemukan!')
        else
            writeln('Data ditemukan! Nilai Alpro ', mahasiswa[i].nama,' = ', mahasiswa[SequentialSearch(mahasiswa,n,nama)].nilaialpro);
    end;

procedure BubbleSortNama(var data:arraymahasiswa; n:integer);
    var i, j:integer;
        temp:datamahasiswa;

    begin
        for i:=1 to n-1 do
            for j:=n downto 1+i do
                if (data[j].nama<data[j-1].nama) then
                begin
                    temp:=data[j];
                    data[j]:=data[j-1];
                    data[j-1]:=temp;
                end;
        writeln('Data Telah Diurutkan Berdasarkan Nama!');
    end;

procedure BubbleSortNilaiAlpro(var data:arraymahasiswa; n:integer);
    var i, j:integer;
        temp:datamahasiswa;

    begin
        for i:=1 to n-1 do
            for j:=n downto i+1 do
                if (data[j].nilaialpro>data[j-1].nilaialpro) then
                begin
                    temp:=data[j];
                    data[j]:=data[j-1];
                    data[j-1]:=temp;
                end;
        writeln('Data Telah Diurutkan Berdasarkan Nilai Alpro!');
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
        writeln('6. Cari Nilai Mahasiswa');
        writeln('7. Urutkan Berdasarkan Nama');
        writeln('8. Urutkan Berdasarkan Nilai Alpro');
        writeln('9. Keluar');
        write('Pilihan Anda (1-9): '); readln(pilihan);
        case pilihan of
            1:  input;
            2:  tampil;
            3:  writeln('Nilai Alpro terbesar adalah ', terbesar);
            4:  writeln('Nilai Alpro terkecil adalah ', terkecil);
            5:  writeln('Rata-rata Nilai Alpro dari ',n,' mahasiswa adalah sebesar ', ratarata:0:2);
            6:  carinilaimahasiswa;
            7:  BubbleSortNama(mahasiswa,n);
            8:  BubbleSortNilaiAlpro(mahasiswa,n);
            9:  writeln('Terima kasih');
        else
            writeln('Pilihan yang anda masukkan tidak tepat.');
        end;
        readln;
    until (pilihan = 9);
end.