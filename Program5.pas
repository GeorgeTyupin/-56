var  hp,  floor, znania  :integer; 
z :string;

label  s, k1, k2, k3, k4, v;

begin

hp:=100;
znania:=0;



s: writeln('������ ����� � �����, ������� ��������');

writeln('�������� ���� ������: ������, ����������, ������� ����, �����������,');

readln(z);
 
 if z='������'
 then
 
   begin
 
 writeln('������ ����� ���� ������ � �� ���� ��������� ����');
 

 goto k1                        ;
end;

k1:floor:=random(10); 
 
if floor>5 then 
begin hp:=hp-20;

writeln('���� ���������� ���� � ����� ���������� �� ������. '   ,hp,  ' o������� ������');
end 

else  

 begin

 writeln('������ ������� ���� � ����� ������');

 
 znania:=znania+3;
 
 writeln('������ ��������� � <<����� � ���>> � �������� + 2 � ������. ������ ������ ������ = ' ,znania );
 
 end;

writeln('�����');

end.