CREATE TABLE courses(   
   id INTEGER PRIMARY KEY,
   nomCourse TEXT,
   catégorie TEXT
);
CREATE TABLE chevaux(   
   id INTEGER PRIMARY KEY,
   nomCheval TEXT,
   idPère INTEGER,
   FOREIGN KEY(idPère) REFERENCES chevaux(id)
);
CREATE TABLE participations(
   idCourse INTEGER,   
   idCheval INTEGER,  
   date TEXT,
   classement INT,
   PRIMARY KEY (idCourse,idCheval),
   FOREIGN KEY (idCourse) REFERENCES courses(id),
   FOREIGN KEY (idCheval) REFERENCES chevaux(id)
);