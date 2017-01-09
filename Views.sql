Drop View if exists VeranstaltungAuftrittBandDJ;
Create View VeranstaltungAuftrittBandDJ as select
V.name_veranstaltung as Veranstaltungsname,  O.name_ortschaft as Veranstaltungsort, V.von as VeranstaltungVon,  V.bis as VeranstaltungBis, VR.vorname as VeranstalterName, VR.nachname as VeranstalterNachname,name_band as Bandname, A.von as AuftrittVon, A.bis as AuftrittBis, DJ.vorname as DJVorname, DJ.nachname as DJNachname from tbl_auftritt A
join tbl_veranstaltung V on V.id = A.fk_veranstaltung
join tbl_Band B on B.id = A.fk_band
join tbl_Person DJ on DJ.id = A.fk_dj
join tbl_Person VR on VR.id = V.fk_veranstalter
join tbl_ort O on O.id = V.fk_ort
join tbl_Person P on P.id = B.fk_promoter
order by V.id asc;

Select * from VeranstaltungAuftrittBandDJ;

Drop View if exists BandMitglieder;
Create View BandMitglieder as select
M.vorname as MitgliedName, M.nachname as MitgliedNachname, B.name_band as Bandname, P.vorname as PromoterName, P.nachname as PromoterNachname, I.name_instrument as Instrument from tbl_person as M
join tbl_musiker_band as MB on MB.fk_musiker = M.id
join tbl_instrument as I on I.id = MB.fk_instrument
join tbl_band as B on B.id = MB.fk_band
join tbl_person P on  B.fk_promoter = P.id 
order by B.id asc;

Select * from BandMitglieder;

Drop View if exists AVeranstaltungZwischenZeitrahme;
Create View AVeranstaltungZwischenZeitrahme as select
 V.von,V.bis, V.name_veranstaltung, VR.vorname, VR.nachname, O.name_ortschaft from tbl_veranstaltung V
 join tbl_person VR on VR.id = V.fk_veranstalter
 join tbl_ort O on O.id = V.fk_ort
 where V.von > '2017-05-01';
 
 Select * from AVeranstaltungZwischenZeitrahme;
