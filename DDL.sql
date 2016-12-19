DROP DATABASE IF EXISTS musikagentur;
CREATE DATABASE musikagentur;
USE musikagentur;

CREATE TABLE tbl_ort (
  id int(11) NOT NULL AUTO_INCREMENT UNIQUE,
  plz varchar(10),
  name_ortschaft varchar(50),
  kanton varchar(50),
  land varchar(5),

  PRIMARY KEY (id)
);

CREATE TABLE tbl_instrument (
  id int(11) NOT NULL AUTO_INCREMENT UNIQUE,
  name_instrument varchar(50),

  PRIMARY KEY (id)
);

CREATE TABLE tbl_person (
  id int(11) NOT NULL AUTO_INCREMENT UNIQUE,
  vorname varchar(50),
  nachname varchar(50),
  email varchar(50),
  tel_num varchar(15),
  fk_ort int(11),
  strasse varchar(50),

  PRIMARY KEY (id),
  FOREIGN KEY(fk_ort) REFERENCES tbl_ort (id)
);

CREATE TABLE tbl_band (
  id int(11) NOT NULL AUTO_INCREMENT UNIQUE,
  fk_promoter int(11),
  name_band varchar(50),

  PRIMARY KEY (id),
  FOREIGN KEY(fk_promoter) REFERENCES tbl_person(id)
);

CREATE TABLE tbl_veranstaltung (
  id int(11) NOT NULL AUTO_INCREMENT UNIQUE,
  name_veranstaltung varchar(50),
  von Date,
  bis Date,
  fk_veranstalter int(11),

  PRIMARY KEY (id),
  FOREIGN KEY(fk_veranstalter) REFERENCES tbl_person (id)
);

CREATE TABLE tbl_musiker_band (
  id int(11) NOT NULL AUTO_INCREMENT UNIQUE,
  fk_musiker int(11),
  fk_band int(11),
  fk_instrument int(11),

  PRIMARY KEY (id),
  FOREIGN KEY(fk_musiker) REFERENCES tbl_person (id),
  FOREIGN KEY(fk_band) REFERENCES tbl_band (id),
  FOREIGN KEY(fk_instrument) REFERENCES tbl_instrument (id)
);

CREATE TABLE tbl_dj (
  id int(11) NOT NULL AUTO_INCREMENT UNIQUE,
  kuenstler_name varchar(50),
  plattform varchar(50),
  fk_person int(11),

  PRIMARY KEY (id),
  FOREIGN KEY(fk_person) REFERENCES tbl_person (id)
);

CREATE TABLE tbl_auftritt (
  id int(11) NOT NULL AUTO_INCREMENT UNIQUE,
  fk_band int(11),
  fk_veranstaltung int(11),
  fk_dj int(11),
  von datetime,
  bis datetime,

  PRIMARY KEY (id),
  FOREIGN KEY(fk_band) REFERENCES tbl_band (id),
  FOREIGN KEY (fk_veranstaltung) REFERENCES tbl_veranstaltung (id),
  FOREIGN KEY(fk_dj) REFERENCES tbl_dj (id)
);
