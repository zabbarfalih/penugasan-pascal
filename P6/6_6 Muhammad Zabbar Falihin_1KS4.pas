program penugasan6_6;
uses crt;

var
   n, i : integer;
   karakter , karakter2 : string;

const
   harga=125;

begin
   clrscr;
   writeln('TABEL HARGA FOTOKOPI');
   writeln('|---------|--------|');
   writeln('|LEMBAR   |HARGA   |');
   writeln('|---------|--------|');
   for i:=1 to 100 do
      begin
         str(i, karakter);
	      str(i*harga, karakter2);
	      writeln('|', i, ' ':9-length(karakter), '|', i*harga, ' ':8-length(karakter2), '|');
      end;
   writeln('|---------|--------|');
   readln;
end.