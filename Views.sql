Create View VeranstaltungAuftrittBandDJ as select
A.fk_band, A.kuenstlername_dj , A.von, A.bis ,V.name_veranstaltung, V.von, V.bis, V.fk_veranstalter, V.fk_ort, DJ.vorname, DJ.nachname, B.name_band,  from tbl_auftritt A
join tbl_veranstaltung V on V.id = A.fk_veranstaltung
join tbl_Band B on B.id = A.fk_band
join tbl_Person DJ on DJ.id = A.fk_dj
join tbl_Person P on P.id = B.fk_promoter;