program penugasan2c;
uses crt;

var
    r, luas:real;

begin
    clrscr;
    writeln('Mencari Luas Lingkaran');
    writeln('======================');
    write('Input Panjang jari-jari (cm) = '); readln(r);

    luas:= 22/7 * r * r;
    writeln('Luas adalah (cm2)            = ', luas:5:2);
    readln;
end.
