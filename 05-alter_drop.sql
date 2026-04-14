alter table alunos add column celular varchar(11);

alter table alunos drop column celular;

alter table alunos add column celular varchar(11) after nome;
alter table alunos add cel varchar(11) first;

alter table alunos modify celular varchar(15) not null default '';
alter table alunos change celular telefone varchar(11);

alter table alunos rename to estudantes;

-- Cláusula, constraints