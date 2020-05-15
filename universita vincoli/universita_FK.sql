alter table Studente
	ADD FOREIGN KEY (corso_laurea) REFERENCES Corso_Laurea (codice);


alter table Docente
	ADD FOREIGN KEY (dipartimento) REFERENCES Dipartimento (codice);


alter table Esame
	ADD FOREIGN KEY (matric_studente) REFERENCES Studente (matricola),
	ADD FOREIGN KEY (matric_docente) REFERENCES Docente (matricola),
	ADD FOREIGN KEY (codice_modulo) REFERENCES Modulo (codice);


alter table Sede_Dipartimento
	ADD FOREIGN KEY (codice_sede) REFERENCES Sede (codice);