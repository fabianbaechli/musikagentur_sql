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
  (1, "Sliky Johnson's"),
  (1, "Die Rollenden Steine"),
  (2, "Raped By The Raccoon"),
  (2, "Gibe Me Tha SuCC Boi"),
  (1, "Attack Helicopter")

INSERT INTO tbl_veranstaltung (name_veranstaltung, von, bis, fk_ort, fk_veranstalter) VALUES
  ("Harem Festival", )
