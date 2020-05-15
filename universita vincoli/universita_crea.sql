drop database if exists universita;
create database if not exists universita;
use universita;


create table if not exists Studente (
    matricola		numeric (6),
    corso_laurea	numeric (10) NOT NULL,
    nome			varchar (30) NOT NULL, 
    cognome			varchar (30) NOT NULL,
    data_nascita	date		 NOT NULL,
    codice_fiscale	varchar (16) NOT NULL,
    foto			blob,
	
	CHECK (matricola>0),
	CHECK (DATEDIFF (SYSDATE(), data_nascita)>18*365.25),
	PRIMARY KEY (matricola)
);


create table if not exists Docente (
    matricola		numeric (6),
    dipartimento	numeric (10) NOT NULL,
    nome			varchar (30) NOT NULL,
    cognome			varchar (30) NOT NULL,
    data_nascita 	date		 NOT NULL,
    codice_fiscale	varchar (16) NOT NULL,
    foto			blob,
	
	CHECK (matricola>0),
	PRIMARY KEY (matricola)
);


create table if not exists Modulo (
    codice			numeric (10),
    nome			varchar (30) NOT NULL,
    descrizione		TEXT,
    CFU 			numeric (2)  NOT NULL,
	
	CHECK (codice>0),
	CHECK (CFU>0),
	PRIMARY KEY (codice)
);


create table if not exists Esame (
    matric_studente	numeric (6),
    codice_modulo	numeric (10),
    matric_docente	numeric (6)  NOT NULL,
    data			date 		 NOT NULL,
    voto			numeric (2)  NOT NULL,
    note			TEXT,
	
	CHECK (voto>=0 AND voto<=30),
	PRIMARY KEY (codice_modulo, matric_studente)
);


create table if not exists Corso_Laurea (
    codice			numeric (10),
    nome			varchar (30) NOT NULL,
    descrizione		TEXT,
	
	CHECK (codice>0),
	PRIMARY KEY (codice)
);


create table if not exists Dipartimento (
    codice			numeric (10),
    nome			varchar (30) NOT NULL,
	
	CHECK (codice>0),
	PRIMARY KEY (codice)
);


create table if not exists Sede (
    codice			numeric (10),
    indirizzo		varchar (50) NOT NULL,
    citta			varchar (50) NOT NULL,
	
	CHECK (codice>0),
	PRIMARY KEY (codice)
);


create table if not exists Sede_Dipartimento (
    codice_sede		numeric (10),
    cod_dipart		numeric (10),
    note			TEXT,
	
	PRIMARY KEY (cod_dipart, codice_sede)
);