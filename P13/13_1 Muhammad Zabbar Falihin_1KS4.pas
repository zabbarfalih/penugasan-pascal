program Penugasan13_1;
uses crt;
Type 
	Larik = array [1..100] of integer;

var 
	A:Larik;
	i, n, x:integer;

Function BinarySearch(A:Larik; low: Integer; high: Integer; X:Integer): integer;
	var
		mid: integer;
	begin
		if (low > high) then
			BinarySearch := 0
		else
			begin
				mid := (low + high) div 2;
				if (A[mid] = X) then
					BinarySearch := mid
				else if (A[mid] > X) then
					BinarySearch := BinarySearch(A, low, mid-1, x)
				else if (A[mid] < X) then
					BinarySearch := BinarySearch(A, mid+1, high, x);
			end;
	end;

begin
	clrscr;
	write('Masukkan n = '); readln(n);
	write('Masukkan data yang dicari : '); readln(x);
	writeln;
	for i :=1 to n do A[i]:= i*5;
	if (BinarySearch(A,1,n,x)) = 0 then
		writeln('Data tidak ditemukan')
	else
		writeln('Data yang dicari berada pada indeks ke-', BinarySearch(A,1,n,x));
	readln;
end.