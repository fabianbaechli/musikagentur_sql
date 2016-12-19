DROP DATABASE IF EXISTS musikagentur;
CREATE DATABASE musikagentur;
USE musikagentur;

CREATE TABLE tbl_ort (
  id int(11) NOT NULL AUTO_INCREMENT UNIQUE,
  plz varchar(10),
  name_ortschaft(50),
  kanton varchar(50),
  land varchar(5)
)

CREATE TABLE tbl_person (
	id int(11) NOT NULL AUTO_INCREMENT UNIQUE,
	vorname varchar(50),
  nachname varchar(50),
  email varchar(50),
  tel_num varchar(15),
  fk_ort int(11),
  strasse varchar(50),

	PRIMARY KEY (id),
  FOREIGN KEY (fk_ort) REFERENCES tbl_ort (id)
);

CREATE TABLE tbl_musiker_band (
  id int(11) NOT NULL AUTO_INCREMENT UNIQUE,
  fk_musiker int(11),
  fk_band int(11),
  fk_instrument int(11),

  FOREIGN KEY (fk_musiker) REFERENCES tbl_person (id),
  FOREIGN KEY (fk_band) REFERENCES tbl_band (id),
  FOREIGN KEY (fk_instrument) REFERENCES tbl_instrument (id)
);
