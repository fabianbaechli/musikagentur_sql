INSERT INTO tbl_ort (plz, name_ortschaft, provinz, land) VALUES
  ("8320", "Fehraltorf", "Zürich", "Schweiz"),
  ("8442", "Hettlingen", "Zürich", "Schweiz"),
  ("8303", "Bassersdorf", "Zürich", "Schweiz"),
  ("8053", "Zürich Stadt", "Zürich", "Schweiz"),
  ("90079", "Los Angeles", "California", "United States Of America"),
  ("10011", "New York", "Colorado", "United States Of America");

INSERT INTO tbl_instrument (name_instrument) VALUES
  ("Vocal"),
  ("Piano"),
  ("Gitarre, Elektronisch"),
  ("Gitarre, Akustisch"),
  ("Tamburin"),
  ("Drums");

INSERT INTO tbl_person (vorname, nachname, email, tel_num, fk_ort, strasse) VALUES
  ("Fabian", "Bächli", "fb@spline.ch", "0449450663", 1, "Chüeferistrasse 14c"),
  ("Fabrice", "Bosshard", "fabice.bosshard@gmail.com", "0449549050", 3, "Fliederweg 12"),
  ("Leonard", "Schütz", "leni.schuetz@me.com", "0449430543", 6, "Mainstreet 59"),
  ("Dennis", "Schäppi", "dennis.schaeppi@hotmail.com", "0791323212", 5, "Marketstreet 94"),
  ("Nico", "Lutz", "nico.lutz@bluewin.ch", "0724561232", 4, "Bahnhofstrasse"),
  ("Aline", "Freud", "aline.freud@bluewin.ch", "0734561232", 2, "Müllstrasse"),
  ("Demir", "Sols", "demir.sols@bluewin.ch", "0744561232", 3, "Hopfweg"),
  ("Henry", "Hamat", "henry.hamat@bluewin.ch", "0764561232", 4, "Sürlistrasse"),
  ("Abnam", "Solut", "as@bluewin.ch", "0784561232", 5, "Moorweg"),
  ("Savir", "Rabish", "sr@bluewin.ch", "0774561232", 5, "Sulmanweg"),
  ("Lolo", "kurtz", "lolok@bluewin.ch", "0794561232", 1, "Bahnhofstrasse"),
  ("Alex", "Maurer", "alex.maurer@gmail.com", "0767341232", 2, "Föhrenstrasse 32");

INSERT INTO tbl_band (fk_promoter, name_band) VALUES
  (1, "Sliky Johnson's"),
  (1, "Die Rollenden Steine"),
  (2, "Raped By The Raccoon"),
  (2, "Gibe Me Tha SuCC Boi"),
  (1, "Attack Helicopter");

INSERT INTO tbl_veranstaltung (name_veranstaltung, von, bis, fk_ort, fk_veranstalter) VALUES
  ("Harem Festival", "2017-5-27", "2017-5-30", 1, 3),
  ("Frauenfeld", "2017-7-6", "2017-7-9", 2, 3),
  ("Greenfield", "2017-2-4", "2017-2-7", 1, 2),
  ("Burning Man", "2017-3-3", "2017-3-10", 5, 3),
  ("Frauenfeld", "2018-7-6", "2018-7-9", 2, 3),
  ("Tomorrowland", "2017-4-10", "2017-4-24", 6, 5);


INSERT INTO tbl_musiker_band (fk_musiker, fk_band,fk_instrument) VALUES
  (1,2,1),
  (2,2,2),
  (3,2,3),
  (4,2,4),
  (5,3,5),
  (6,3,1),
  (7,3,2),
  (8,3,2),
  (9,3,3),
  (10,3,4),
  (11,4,5),
  (2,5,1),
  (3,4,3),
  (12,4,2),
  (12,1,4);

INSERT INTO tbl_auftritt (fk_band, fk_veranstaltung,fk_dj,von,bis) VALUES
  (1,1,1,'2017-12-12 18:00','2017-12-1 18:30'),
  (2,1,2,'2017-12-1 19:00','2017-12-1 19:30'),
  (3,2,3,'2017-12-1 20:00','2017-12-1 20:30'),
  (5,3,4,'2017-12-1 23:00','2017-12-1 23:30'),
  (2,4,4,'2017-12-1 22:15','2017-12-1 22:45'),
  (5,5,5,'2017-12-1 15:15','2017-12-1 16:00'),
  (2,3,3,'2017-12-1 13:35','2017-12-1 14:00'),
  (3,2,1,'2017-12-1 14:00','2017-12-1 14:30'),
  (4,1,2,'2017-12-1 12:00','2017-12-1 12:30'),
  (1,3,2,'2017-12-1 21:00','2017-12-1 21:30'),
  (1,3,3,'2017-12-1 21:30','2017-12-1 22:00'),
  (2,2,4,'2017-12-1 19:30','2017-12-1 20:00');
