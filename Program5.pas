var  hp,  floor, znania  :integer; 
z :string;

label  s, k1, k2, k3, k4, v;

begin

hp:=100;
znania:=0;



s: writeln('корова вошла в школу, история начилась');

writeln('выберите куда пойдёте: чтение, математика, русский язык, физкультура,');

readln(z);
 
 if z='чтение'
 then
 
   begin
 
 writeln('корова пошла урок чтения и по пути встретила Васю');
 

 goto k1                        ;
end;

k1:floor:=random(10); 
 
if floor>5 then 
begin hp:=hp-20;

writeln('Вася прогуливал урок и решил покататься на корове. '   ,hp,  ' oсталось жизней');
end 

else  

 begin

 writeln('Корова лягнула Васю и пошла дальше');

 
 znania:=znania+3;
 
 writeln('Корова прочитала и <<Войну и мир>> и получила + 2 к знания. Теперь значия коровы = ' ,znania );
 
 end;

writeln('КАНЕЦ');

end.