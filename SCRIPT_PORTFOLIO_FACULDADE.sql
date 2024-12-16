use db_portifolio_faculdade;

create table tbl_Alunos (
   id int unique primary key auto_increment,
   nome varchar(250),
   Data_Nascimento date,
   Endereco text,
   telefone float,
   e_mail varchar(45),
   senha varchar(100)
   );
   
create table tbl_Professores (
   id int primary key auto_increment,
   Nome varchar (250), 
   Data_Nascimento date,
   Titulacao varchar (250),
   Area_especializacao varchar(250),
   Endereco text,
   telefone varchar(45)
   );
   
   create table tbl_Cursos (
      id int primary key auto_increment,
      Nome varchar(250),
      Duração float,
      Descricao text
   );
   
create table tbl_disciplinas (
   id int primary key auto_increment,
   Nome varchar(250),
   Descricao text,
   Carga_horaria int
);

create table tbl_turmas (
   id int primary key auto_increment,
   Ano float,
   Semestre float,
   Data_Inicio date,
   Data_Fim date
);

create table tbl_matricula (
   id int primary key auto_increment,
   Data_Matricula date,
   id_tbl_alunos int,
   foreign key (id_tbl_alunos) references tbl_alunos (id)
   on delete cascade
   on update cascade
);
    
create table tbl_notas (
   id int primary key auto_increment,
   Nota decimal(3,2),
   Data_Avaliacao date,
   id_tbl_matricula int,
   foreign key (id_tbl_matricula) references tbl_matricula (id)
 );
 
 create table tbl_turmas_tbl_matricula (
    id int primary key auto_increment,
    id_tbl_turmas int,
    id_tbl_matricula int,
    foreign key (id_tbl_matricula) references tbl_matricula (id),
    foreign key (id_tbl_turmas) references tb_turmas
 );
 
 create table tbl_turmas_tbl_professores ( 
     id int primary key auto_increment,
     id_tbl_professores int,
     id_tbl_turmas int,
     foreign key (id_tbl_professores) references tbl_professores (id),
     foreign key (id_tbl_turmas) references tbl_turmas (id)
 );
 
 create table tbl_turmas_tbl_disciplinas (
    id int primary key auto_increment,
    id_tbl_turmas int,
    id_tbl_disciplinas int,
    foreign key (id_tbl_turmas) references tbl_turmas (id),
    foreign key (id_tbl_disciplinas) references tbl_disciplinas (id)
 );
 
 create table tbl_notas_tbl_disciplinas (
    id int primary key auto_increment,
    id_tbl_notas int,
    id_tbl_disciplinas int,
    foreign key (id_tbl_notas) references tbl_notas (id),
    foreign key (id_tbl_disciplinas) references tbl_disciplinas (id)
   );
   
create table tbl_cursos_tbl_disciplinas ( 
   id int primary key auto_increment,
   id_tbl_cursos int,
   id_tbl_disciplinas int,
   foreign key (id_tbl_cursos) references tbl_cursos (id),
   foreign key (id_tbl_disciplinas) references tbl_disciplinas (id)

);

create table tbl_professores_disciplinas (
   id int primary key auto_increment,
   id_tbl_professores int,
   id_tbl_disciplinas int,
   foreign key (id_tbl_professores) references tbl_professores (id),
   foreign key (id_tbl_disciplinas) references tbl_disciplinas (id) 
 );
   
   
 
 
 
   