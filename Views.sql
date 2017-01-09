Drop View if exists VeranstaltungAuftrittBandDJ;
CREATE VIEW VeranstaltungAuftrittBandDJ AS
    SELECT 
        V.name_veranstaltung AS Veranstaltungsname,
        O.name_ortschaft AS Veranstaltungsort,
        V.von AS VeranstaltungVon,
        V.bis AS VeranstaltungBis,
        VR.vorname AS VeranstalterName,
        VR.nachname AS VeranstalterNachname,
        name_band AS Bandname,
        A.von AS AuftrittVon,
        A.bis AS AuftrittBis,
        DJ.vorname AS DJVorname,
        DJ.nachname AS DJNachname
    FROM
        tbl_auftritt A
            JOIN
        tbl_veranstaltung V ON V.id = A.fk_veranstaltung
            JOIN
        tbl_Band B ON B.id = A.fk_band
            JOIN
        tbl_Person DJ ON DJ.id = A.fk_dj
            JOIN
        tbl_Person VR ON VR.id = V.fk_veranstalter
            JOIN
        tbl_ort O ON O.id = V.fk_ort
            JOIN
        tbl_Person P ON P.id = B.fk_promoter
    ORDER BY V.id ASC;

SELECT 
    *
FROM
    VeranstaltungAuftrittBandDJ;

Drop View if exists BandMitglieder;
CREATE VIEW BandMitglieder AS
    SELECT 
        M.vorname AS MitgliedName,
        M.nachname AS MitgliedNachname,
        B.name_band AS Bandname,
        P.vorname AS PromoterName,
        P.nachname AS PromoterNachname,
        I.name_instrument AS Instrument
    FROM
        tbl_person AS M
            JOIN
        tbl_musiker_band AS MB ON MB.fk_musiker = M.id
            JOIN
        tbl_instrument AS I ON I.id = MB.fk_instrument
            JOIN
        tbl_band AS B ON B.id = MB.fk_band
            JOIN
        tbl_person P ON B.fk_promoter = P.id
    ORDER BY B.id ASC;

SELECT 
    *
FROM
    BandMitglieder;

Drop View if exists VeranstaltungZwischenZeitrahme;
CREATE VIEW VeranstaltungZwischenZeitrahme AS
    SELECT 
        V.von AS VeranstaltungVon,
        V.bis AS VeranstaltungBis,
        V.name_veranstaltung AS VeranstaltungsName,
        VR.vorname AS VeranstalterName,
        VR.nachname AS VeranstalterVorname,
        O.name_ortschaft AS VeranstalterOrt
    FROM
        tbl_veranstaltung V
            JOIN
        tbl_person VR ON VR.id = V.fk_veranstalter
            JOIN
        tbl_ort O ON O.id = V.fk_ort
    WHERE
        V.von > '2017-05-01';
 
SELECT 
    *
FROM
    VeranstaltungZwischenZeitrahme;
 
Drop View if exists PersonenMitGleichemInstrument;
CREATE VIEW PersonenMitGleichemInstrument AS
    SELECT 
        M.vorname AS Vorname,
        M.nachname AS Nachname,
        I.name_instrument AS Instrument
    FROM
        tbl_musiker_band MB
            JOIN
        tbl_person M ON M.id = MB.fk_musiker
            JOIN
        tbl_instrument I ON I.id = MB.fk_instrument
    WHERE
        I.id = 1;
 
SELECT 
    *
FROM
    PersonenMitGleichemInstrument;
 
