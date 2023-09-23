program penugasan12_2;
uses crt;

var
    i:byte;
    n:integer;
    ulang:char;
    panjangn:string;

procedure biner(x:integer);
    begin
        if (x = 0) then
            write('0')
        else if (x = 1) then
            write('1')
        else if (x <> 0) then
            begin
                biner(x div 2);
                if (x mod 2 = 0) then
                    write('0')
                else
                    write('1');
            end;
    end;

begin
    repeat
        clrscr;
        writeln('===============================');
        writeln('Konversi Nilai Desimal ke Biner');
        writeln('===============================');
        writeln;
        write('Masukkan angka = '); readln(n);
        while (n<0) do
            begin
                gotoxy(1,7); writeln('Angka yang anda masukkan haruslah 0 (nol) atau bilangan bulat positif.');
                str(n, panjangn);
                gotoxy(18,5); write('':length(panjangn));
                gotoxy(18,5); readln(n);
            end;
        gotoxy(1,7); writeln('':70);
        gotoxy(1,7);
        write('Bilangan biner dari ', n,' = '); biner(n);
        writeln;
        writeln;
        write('Apakah Anda ingin melakukan konversi kembali? (Y/T) : '); readln(ulang);
    until (ulang='T') or (ulang='t');
    writeln;
    writeln('Terima kasih');
    readln;
end.