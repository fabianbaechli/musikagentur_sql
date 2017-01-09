DROP DATABASE IF EXISTS musikagentur;
CREATE DATABASE musikagentur;
USE musikagentur;

CREATE TABLE tbl_ort (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    plz INT(11) NOT NULL,
    name_ortschaft VARCHAR(50) NOT NULL,
    Provinz VARCHAR(50) NOT NULL,
    land VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_instrument (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name_instrument VARCHAR(50)
);

CREATE TABLE tbl_person (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    vorname VARCHAR(50) NOT NULL,
    nachname VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    tel_num VARCHAR(15) NOT NULL,
    fk_ort INT(11) NOT NULL,
    strasse VARCHAR(50) NOT NULL,
    FOREIGN KEY (fk_ort)
        REFERENCES tbl_ort (id)
);

CREATE TABLE tbl_band (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fk_promoter INT(11) NOT NULL,
    name_band VARCHAR(50) NOT NULL,
    FOREIGN KEY (fk_promoter)
        REFERENCES tbl_person (id)
);

CREATE TABLE tbl_veranstaltung (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name_veranstaltung VARCHAR(50) NOT NULL,
    von DATE NOT NULL,
    bis DATE NOT NULL,
    fk_ort INT(11) NOT NULL,
    fk_veranstalter INT(11) NOT NULL,
    FOREIGN KEY (fk_ort)
        REFERENCES tbl_ort (id),
    FOREIGN KEY (fk_veranstalter)
        REFERENCES tbl_person (id)
);

CREATE TABLE tbl_musiker_band (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fk_musiker INT(11) NOT NULL,
    fk_band INT(11) NOT NULL,
    fk_instrument INT(11) NOT NULL,
    FOREIGN KEY (fk_musiker)
        REFERENCES tbl_person (id),
    FOREIGN KEY (fk_band)
        REFERENCES tbl_band (id),
    FOREIGN KEY (fk_instrument)
        REFERENCES tbl_instrument (id)
);

CREATE TABLE tbl_auftritt (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fk_band INT(11) NOT NULL,
    fk_veranstaltung INT(11) NOT NULL,
    fk_dj INT(11) NOT NULL,
    von DATETIME NOT NULL,
    bis DATETIME NOT NULL,
    FOREIGN KEY (fk_band)
        REFERENCES tbl_band (id),
    FOREIGN KEY (fk_veranstaltung)
        REFERENCES tbl_veranstaltung (id),
    FOREIGN KEY (fk_dj)
        REFERENCES tbl_person (id)
);
