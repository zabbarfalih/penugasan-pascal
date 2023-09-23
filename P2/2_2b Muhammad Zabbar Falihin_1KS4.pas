program penugasan2b;
uses crt;

var
    jumlah_barang:integer;
    harga_satuan,pajak,harga_bayar:real;

begin
    clrscr;
    writeln('Menentukan Harga Bayar');
    writeln('======================');
    write('Jumlah barang    = '); readln(jumlah_barang);
    write('harga Satuan Rp. = '); readln(harga_satuan);
    write('Pajak Rp.        = '); readln(pajak);

    harga_bayar:= jumlah_barang * harga_satuan + pajak;

    writeln('Harga Bayar Rp.  = ', harga_bayar:5:2);
    readln;
end.
