create table if not exists cursos (
    sigla char(5) not null unique,
    nome varchar(30) not null unique,
    descricao text,
    carga int unsigned,
    aulas int,
    ano year default '2026',
    ativo boolean default true
) engine InnoDB;

alter table cursos add idcurso int primary key first;

describe cursos;

drop table if exists cursos;