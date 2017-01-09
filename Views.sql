Create View VeranstaltungAuftrittBandDJ as select
A.fk_band, A.kuenstlername_dj , A.von, A.bis ,V.name_veranstaltung, V.von, V.bis, V.fk_veranstalter, V.fk_ort, DJ.vorname, DJ.nachname, B.name_band,  from tbl_auftritt A
join tbl_veranstaltung V on V.id = A.fk_veranstaltung
join tbl_Band B on B.id = A.fk_band
join tbl_Person DJ on DJ.id = A.fk_dj
join tbl_Person P on P.id = B.fk_promoter;

Create View BandMitglieder as select
M.vorname,M.nachname, B.name_band,P.vorname, P.nachname, I.name_instrument from tbl_Personen M
join tbl_musiker_band MB on MB.fk_musiker = P.id
join tbl_instrumente I on I.id = MB.fk_instrument
join tbl_band B on B.id = MB.fk_band
