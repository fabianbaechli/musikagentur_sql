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
  ("Nico", "Lutz", "nico.lutz@bluewin.ch", "0784561232", 4, "Bahnhofstrasse"),
  ("Alex", "Maurer", "alex.maurer@gmail.com", "0766341232", 2, "Föhrenstrasse 32");

INSERT INTO tbl_band (fk_promoter, name_band) VALUES
  (1, "Sliky Johnson's");
  
INSERT INTO tbl_auftritt (fk_band, fk_veranstaltung,fk_dj,von,bis) VALUES
  (1,1,1,'18:00','18:30'),
  (2,1,2,'19:00','19:30'),
  (3,2,3,'20:00','20:30'),
  (5,3,4,'23:00','23:30'),
  (2,4,4,'22:15','22:45'),
  (5,5,5,'15:15','16:00'),
  (2,3,3,'13:35','14:00'),
  (3,2,1,'14:00','14:30'),
  (4,1,2,'12:00','12:30'),
  (1,3,2,'21:00','21:30'),
  (1,3,3,'21:30','22:00'),
  (2,2,4,'19:30','20:00');
