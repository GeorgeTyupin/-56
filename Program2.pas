var  hp,  znania, cila, m, h, reg, bombpop, GTO1, von  :integer; 
z, fiz1, zanovo :string;

label  s, k1, k2, k3, k4, v, fizS, ko1, ko2, ss ;

begin

hp:=100;
znania:=0;
cila:=2;
bombpop:=0;


 ss:writeln('корова вошла в школу, история начилась');
fizS:GTO1:=random(3);

 if GTO1=1 then
begin
 
 writeln('К корове подошёл физ-рук предложил сдать ГТО. выбери сдать или не сдать'); 
 readln(fiz1);
if fiz1='сдать' then goto k2;
 if fiz1='не сдать' then goto s;
end 

else
goto s;
s:if hp>0 then
writeln('выберите куда пойдёте: чтение, математика, русский язык, физкультура,')
else
writeln('Корова умерла, но навсегда осталось о памяти школы');
readln(z);
 if z='чтение' then goto k1;
 if z='физкультура' then goto k2;
 if z='математика' then goto k3;

 
 k1:writeln('корова пошла урок чтения и по пути встретила Васю');
 

 
if cila<5 then 
begin hp:=hp-20;

writeln('Вася прогуливал урок и решил покататься на корове. '   ,hp,  ' oсталось жизней. Корова обиделась на Васю');
bombpop:=bombpop+1;
end 

else  

 begin

 writeln('Уроки физ-ры не прошли даром .Корова лягнула Васю и пошла дальше');

 if m>0 then
 
 begin
 
 znania:=znania+1;
 
 writeln('Корова дз по математике на уроке  и получила втрое меньше знаний чем могла. При этом злая училка дала ей подзатыльник');
 hp:=hp-10;
 m:=m-1;
 
  end 
  
 else
 
 znania:=znania+3;
 
 writeln('Корова прочитала и <<Войну и мир>> и получила + 3 к знания. Теперь знаHия коровы = ' ,znania, 'Но очень сильно полубила литературу, и читала почти всегда');
 h:=h+1;
 end;
 
 goto fizS ;
 
k2:
cila:=cila+3;
reg:=random(50);
hp:=hp+reg;
writeln('Kорова пошла урок физкультуры и подкачалась. Теперь её сила равна  ' ,cila, ' при этом корова зарегенила себе здоровье на ' ,reg);


goto fizS ;

k3:if bombpop<2 then 

begin
hp:=hp-70;
writeln('Kорова опять встретила Васю, но тут физ. подготовка уже не помогла. У Васи была бита, он побил бедную корову , и у неё осталось критически мало жизней (' ,hp, '), но тут корова'); 

bombpop:=bombpop+1;
if hp<0 then 
goto s;
end
else

if hp<15 then begin
writeln('Корова пока не может хорошо заниматься, потому что слишком мало HP (' ,hp,') поэтому  ей задали много ДЗ');
m:=m+1;
goto fizS;
end
else
begin
m:=m-1;
znania:=znania+3;
writeln('Корова хорошо занималась и даже успела сделать ДЗ на уроке. Теперь её знания',znania);
goto fizS;
end;


if bombpop>2 then
begin
writeln('Настало время мести. Корова еадела подковы пошла в кабенет химии выпила сыворотку супер-солдата. И как-бы Вася не старался он не мог победить её. Она убила его , и её повели к директору. Директор хотел отчислить корову');
 von:=random(3);
 case von  of
 von= 1 : goto ko1;
  von= 2 : goto fizS;
   von= 3 : goto ss;
 
 end
end;


 
ko1:writeln('КАНЕЦ корову выгнали. Она осталась обычной коровой.'

 

'ХОЧЕШЬ СЫГРАТЬ ЕЩЁ РАЗ. НАПИШИ ДА ИЛИ НЕТ');
 readln(zanovo);
 if zanovo='ДА' then goto ss;
end.