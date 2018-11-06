var name, verb, verbi, adjective, creature, noun, exclamation, yes: string;
begin
writeln('введите существительное в предложном падеже');
readln(noun);
writeln('введите существительное в именительном падеже');
readln(name);
writeln('введите прилагательное');
readln(adjective);
writeln('введите существительное в именительном падеже (СУШЕСТВИТЕЛЬНОЕ ДОЛЖНО БЫТЬ ТОГО ЖЕ РОДА, ЧТО И ПРИЛАГАТЕЛЬНОЕ КОТОРОЕ ТЫ ВВЁЛ');
readln(creature);
writeln('введите глагол');
readln(verbi);
writeln('введите глагол');
readln(verb);
writeln('введите восклицание');
readln(exclamation);
writeln('Однажды на конкурсе по ',noun,name,'   создал ',creature,'   .  И тогда ',creature ,verbi,' .  После этого ',name ,verb,' и воскликнул ' ,exclamation,'. После этого ' ,creature,' больше никогда не делал этого');
writeln('Ты молодец. Хочешь пройти тест ещё раз? Если хочешь то напиши YES если нет то напиши, что хочешь');
end.