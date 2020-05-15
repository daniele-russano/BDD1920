insert into Modulo
	values(01284, 'Metodi di Osservazione', NULL, 9);


insert into Corso_Laurea
	values(05631, 'ICD-TA', NULL);


insert into Dipartimento
	values(37201, 'Dipartimento Informatica Bari');


insert into Sede
	values (81035, 'Lorem Ipsum', 'Taranto');


insert into Sede_Dipartimento
	values(81035, 37201, NULL);
	
	
insert into Studente
    values(697800, 05631, 'Daniele', 'Russano', '1999-10-11', 'RSSDNL99R11H281J', NULL);
insert into Studente
    values(697830, 05631, 'Davide', 'Ippolito', '2000-07-03', 'PPLDVD00H03H483H', NULL);
	
	
insert into Docente
	values(854237, 37201, 'Mario', 'Rossi', '1980-03-20', 'RSSMRA80D20J391Y', NULL);
	
	
insert into Esame
	values(697800, 01284, 854237, '2020-06-19', 25, NULL);