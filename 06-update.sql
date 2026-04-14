select * from estudantes;
update estudantes set nome = 'Tamires Parisotto' where id = 2;
update estudantes set nome = 'Tamires Parisotto', peso = "60" limit 1;
update estudantes set nacionalidade = 'BR' limit 4;
update estudantes set altura = 2 where nacionalidade = "BR";
select * from estudantes;