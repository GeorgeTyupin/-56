var  hp,  znania, cila, m, h, reg, bombpop, GTO1, von  :integer; 
z, fiz1, zanovo :string;

label  s, k1, k2, k3, k4, v, fizS, ko1, ko2, ss ;

begin

hp:=100;
znania:=0;
cila:=2;
bombpop:=0;


 ss:writeln('������ ����� � �����, ������� ��������');
fizS:GTO1:=random(3);

 if GTO1=1 then
begin
 
 writeln('� ������ ������� ���-��� ��������� ����� ���. ������ ����� ��� �� �����'); 
 readln(fiz1);
if fiz1='�����' then goto k2;
 if fiz1='�� �����' then goto s;
end 

else
goto s;
s:if hp>0 then
writeln('�������� ���� ������: ������, ����������, ������� ����, �����������,')
else
writeln('������ ������, �� �������� �������� � ������ �����');
readln(z);
 if z='������' then goto k1;
 if z='�����������' then goto k2;
 if z='����������' then goto k3;

 
 k1:writeln('������ ����� ���� ������ � �� ���� ��������� ����');
 

 
if cila<5 then 
begin hp:=hp-20;

writeln('���� ���������� ���� � ����� ���������� �� ������. '   ,hp,  ' o������� ������. ������ ��������� �� ����');
bombpop:=bombpop+1;
end 

else  

 begin

 writeln('����� ���-�� �� ������ ����� .������ ������� ���� � ����� ������');

 if m>0 then
 
 begin
 
 znania:=znania+1;
 
 writeln('������ �� �� ���������� �� �����  � �������� ����� ������ ������ ��� �����. ��� ���� ���� ������ ���� �� ������������');
 hp:=hp-10;
 m:=m-1;
 
  end 
  
 else
 
 znania:=znania+3;
 
 writeln('������ ��������� � <<����� � ���>> � �������� + 3 � ������. ������ ���H�� ������ = ' ,znania, '�� ����� ������ �������� ����������, � ������ ����� ������');
 h:=h+1;
 end;
 
 goto fizS ;
 
k2:
cila:=cila+3;
reg:=random(50);
hp:=hp+reg;
writeln('K����� ����� ���� ����������� � �����������. ������ � ���� �����  ' ,cila, ' ��� ���� ������ ���������� ���� �������� �� ' ,reg);


goto fizS ;

k3:if bombpop<2 then 

begin
hp:=hp-70;
writeln('K����� ����� ��������� ����, �� ��� ���. ���������� ��� �� �������. � ���� ���� ����, �� ����� ������ ������ , � � �� �������� ���������� ���� ������ (' ,hp, '), �� ��� ������'); 

bombpop:=bombpop+1;
if hp<0 then 
goto s;
end
else

if hp<15 then begin
writeln('������ ���� �� ����� ������ ����������, ������ ��� ������� ���� HP (' ,hp,') �������  �� ������ ����� ��');
m:=m+1;
goto fizS;
end
else
begin
m:=m-1;
znania:=znania+3;
writeln('������ ������ ���������� � ���� ������ ������� �� �� �����. ������ � ������',znania);
goto fizS;
end;


if bombpop>2 then
begin
writeln('������� ����� �����. ������ ������ ������� ����� � ������� ����� ������ ��������� �����-�������. � ���-�� ���� �� �������� �� �� ��� �������� �. ��� ����� ��� , � � ������ � ���������. �������� ����� ��������� ������');
 von:=random(3);
 case von  of
 von= 1 : goto ko1;
  von= 2 : goto fizS;
   von= 3 : goto ss;
 
 end
end;


 
ko1:writeln('����� ������ �������. ��� �������� ������� �������.'

 

'������ ������� �٨ ���. ������ �� ��� ���');
 readln(zanovo);
 if zanovo='��' then goto ss;
end.