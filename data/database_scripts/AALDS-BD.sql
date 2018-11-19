create database LDS;

use LDS;

#PLANILHA CURSOS

create table curso (
	id_curso int (15) not null auto_increment,/*ID DO Curso*/
    nome_curso varchar(255) not null,/*Cursos*/
    fec_curso varchar(45),/*FEC*/
    cargahora_curso varchar(45),/*"C.H min. Regulamentada SUB/CON/n.a."*/
    cargahora_cursointegrado varchar(45),/*"C.H min. Regulamentada INTEGRADOS"*/
    eixo_tecnologico varchar(45),/*Eixo Tecnológico*/
    tipo_curso varchar(45),/*Tipo de Curso*/
    obs_curso varchar(255),/*OBSERVAÇÕES*/
    primary key (id_curso)
);


#PLANILHA AREAS

create table areas (
	id_area int not null auto_increment, /*ID area*/
    sigla_area varchar(15) not null, /*Sigla*/
    area_atua varchar(255) not null, /*Área Atuação Docente (POCV)*/
    equi_area varchar(45) not null, /*Equivalencia*/
    obs_area varchar(255) not null, /*Observação*/
	primary key (id_area)
);

#PLANILHA BASE

create table base (
	id_base int not null auto_increment,/*ID BASE*/
    campus_base varchar(45) not null,/*CAMPUS*/
    eixo varchar(45) not null,/*Eixo*/
    tipo_curso varchar(45) not null,/*Tipo de Curso*/
    curso_base varchar(255) not null,/*Curso - Chave Estrangeira id_curso*/
    tipo_oferta varchar(45) not null,/*Tipo de Oferta*/
    dis_oferta varchar(45) not null,/*Distrib. Oferta*/
    modalidade varchar(45) not null,/*Modalidade*/
    turno varchar(45) not null,/*Turno*/
    semestre_inicio varchar(45) not null,/*Semestre de início da oferta*/
    periocidade_curricular varchar(45) not null,/*Periodicidade Curricular*/
    periocidade_ingresso varchar(45) not null,/*Periodicidade do Ingresso*/
    situacao_oferta varchar(45) not null,/*Situação da oferta*/
    situacao_ppc varchar(45) not null,/*Situação do PPC*/
    fomento varchar(45) not null,/*Fomento*/
    local_curso varchar(45) not null,/*Local*/
    cargahora_base varchar(45) not null,/*CH da fase (Prevista no PPC)*/
    fase_semestre varchar(45) not null,/*Fase semestral*/
    qtd_vagas varchar(45) not null,/*Vagas*/
    duracao_semestre varchar(45) not null,/*Duração (semestres)*/
    semana_semestre varchar(45) not null,/*Semana por semestre*/
    observacao varchar(255),/*NOME DO CURSO em caso de constar na lista de opçoes ou OBSERVAÇÕES*/
    qtd_turmas varchar(45) not null,/*No de turmas*/
    cargahora_fase varchar(45) not null,/*CH da fase (Prevista no PPC)*/
    cargahora_minima varchar(45) not null,
    fech varchar(45),/*FECH*/
    fec varchar(45),/*FEC*/
    primary key (id_base)
    
);


#PLANILHA DOCENTES

create table docentes (
	id_docente int not null auto_increment, /*ID DOCENTE*/
    campus_docente varchar (45) not null, /*Câmpus*/
    nome_docente varchar (255) not null, /*Nome do Professor*/
    area_docente varchar (45) not null, /*Área*/
    desc_area varchar(255) not null, /*Descrição da Área*/
    regime_trabalho varchar(30) not null, /*Regime Trabalho*/
    fg_fcc varchar(30) not null, /*FG, FCC, CD ou S/F*/
    cont_docente varchar (45) not null, /*Contagem Docente*/
    docente_integral varchar(15) not null, /*Docente Tempo Integral (RAP)*/
    docente_equi varchar(15) not null, /*Docente Equivalente (com FCC, FG ou CD)*/
    obs_docente varchar (255) not null, /*Observação docente*/ 
    primary key (id_docente)
);

#PLANILHA INFRA

create table infra(
	id_infra int not null auto_increment, /*ID INFRA*/
    campus_infra varchar(45) not null, /*Câmpus*/
    situacao_infra varchar(45) not null, /*Situação*/
    tipo_espaco varchar(45) not null, /*Tipo de Espaço*/
    nome_espaco varchar(255) not null, /*Nome do Espaço*/
    capacidade_esp int not null, /*Capacidade (Nº de alunos)*/
    primary key (id_infra)
);