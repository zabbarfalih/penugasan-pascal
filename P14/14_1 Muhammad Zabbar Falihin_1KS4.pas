program penugasan14_1;
type Larik = array [1..100] of integer;


procedure BubbleSort(var data: Larik; n:integer);
var
	i, j, temp:integer;
	
begin
	for i:=1 to n-1 do
		for j:=n downto i+1 do
			if (data[j]>data[j-1]) then
				begin
					temp := data[j];
					data[j] := data[j-1];
					data[j-1] := temp;
				end;
end;

procedure SelectionSort(var Data:Larik; n:integer);
var
	i, j, max, temp:integer;

begin
	For i:=1 to n-1 do
		begin
			max:=i;
			For j:= i+1 to n do
				begin
 					If Data[j] > Data[max] then
						Max:=j;
				End;
			Temp:=Data[i];
			Data[i]:=Data[max];
			Data[max]:=temp;
		end;
end;

procedure InsertionSort(var data:larik; n:integer);
var
	i, j, key:integer;

begin
	for i:=2 to n do
		begin
			key:=data[i];
			j:=i-1;
				while (j>0) and (data[j]<key) do
					begin
						data[j+1]:=data[j];
						j:=j-1;
					end;
			data[j+1]:=key;
		end;
end;


var
	data:larik;
	i, n:integer;

begin
	n:=5;
	data[1]:=5;
	data[2]:=8;
	data[3]:=6;
	data[4]:=9;
	data[5]:=1;
	Insertionsort(data,n);
	{Bubblesort(data,n);}
	{Selectionsort(data,n);}
	for i:=1 to n do
		writeln(data[i]);
	readln;
end.