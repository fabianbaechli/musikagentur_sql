DROP DATABASE IF EXISTS musikagentur;
CREATE DATABASE musikagentur;
USE musikagentur;

CREATE TABLE tbl_ort (
  id int(11) NOT NULL AUTO_INCREMENT Primary KEY,
  plz int(11) not null,
  name_ortschaft varchar(50) not null,
  Provinz varchar(50) not null,
  land varchar(50) not null
);

CREATE TABLE tbl_instrument (
  id int(11) NOT NULL AUTO_INCREMENT Primary KEY,
  name_instrument varchar(50)
);

CREATE TABLE tbl_person (
  id int(11) NOT NULL AUTO_INCREMENT Primary KEY,
  vorname varchar(50) not null,
  nachname varchar(50) not null,
  email varchar(50) not null,
  tel_num varchar(15) not null,
  fk_ort int(11) not null,
  strasse varchar(50) not null,

  FOREIGN KEY(fk_ort) REFERENCES tbl_ort (id)
);

CREATE TABLE tbl_band (
  id int(11) NOT NULL AUTO_INCREMENT Primary KEY,
  fk_promoter int(11) not null,
  name_band varchar(50) not null,

  FOREIGN KEY(fk_promoter) REFERENCES tbl_person(id)
);

CREATE TABLE tbl_veranstaltung (
  id int(11) NOT NULL AUTO_INCREMENT Primary KEY,
  name_veranstaltung varchar(50) not null,
  von Date not null,
  bis Date not null,
  fk_veranstalter int(11) not null,
  fk_ort int(11) not null,

  FOREIGN KEY (fk_ort) REFERENCES tbl_ort(id),
  FOREIGN KEY(fk_veranstalter) REFERENCES tbl_person (id)
);

CREATE TABLE tbl_musiker_band (
  id int(11) NOT NULL AUTO_INCREMENT Primary KEY,
  fk_musiker int(11) not null,
  fk_band int(11) not null,
  fk_instrument int(11) not null,


  FOREIGN KEY(fk_musiker) REFERENCES tbl_person (id),
  FOREIGN KEY(fk_band) REFERENCES tbl_band (id),
  FOREIGN KEY(fk_instrument) REFERENCES tbl_instrument (id)
);

CREATE TABLE tbl_auftritt (
  id int(11) NOT NULL AUTO_INCREMENT Primary KEY,
  fk_band int(11) not null,
  fk_veranstaltung int(11) not null,
  kuenstlername_dj varchar(50),
  fk_dj int(11) not null,
  von datetime not null,
  bis datetime not null,

  FOREIGN KEY(fk_band) REFERENCES tbl_band (id),
  FOREIGN KEY (fk_veranstaltung) REFERENCES tbl_veranstaltung (id),
  FOREIGN KEY (fk_dj) REFERENCES tbl_person (id)
);
