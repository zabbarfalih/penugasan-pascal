program penugasan2a;
uses crt;

var
    celcius,fahrenheit:real;

begin
    clrscr;
    writeln('MENCARI KONVERSI SUHU');
    writeln('=====================');
    write('Input Derajat Celsius = '); readln(celcius);

    fahrenheit:=9/5*celcius + 32;

    writeln('Derajat Fahrenheit    = ',fahrenheit:5:2);
    readln;
end.
