drop database Company;
create database Company;
use Company;

CREATE TABLE Mitarbeiter (
    MitarbeiterID INT AUTO_INCREMENT,
    Nachname VARCHAR(20) NOT NULL,
    Vorname VARCHAR(20) NOT NULL,
    Geschlecht VARCHAR(2),
    Email_Adresse VARCHAR(50),
    TEL_Nummer VARCHAR(20),
    Straße_Hausnummer VARCHAR(30),
    Ort_PLZ VARCHAR(30),
    Gehalt DECIMAL(6 , 2 ) CHECK (Gehalt > 800),
    Arbeitszeit TIME (6),
    Urlaubs INT  CHECK (Urlaubs > 30 || Urlaubs < 27),
    PRIMARY KEY (MitarbeiterID)

); describe mitarbeiter;

CREATE TABLE Verkaufsvorgaenge (
    VerkaufsvorgaengeID INT AUTO_INCREMENT,
    ArtikelID INT,
    MitarbeiterID INT,
    Datum DATETIME,
    PRIMARY KEY (VerkaufsvorgaengeID , MitarbeiterID , ArtikelID),
    FOREIGN KEY (MitarbeiterID)
        REFERENCES Mitarbeiter (MitarbeiterID),
    FOREIGN KEY (ArtikelID)
        REFERENCES Artikel (ArtikelID)
);
describe verkaufsvorgaenge;
CREATE TABLE Kunden (
    KundenID INT AUTO_INCREMENT,
    VerkaufsvorgaengeID INT,
    BankKontoID INT,
    Nachname VARCHAR(20) NOT NULL,
    Vorname VARCHAR(20) NOT NULL,
    Email_Adresse VARCHAR(50) NOT NULL,
    TEL_Nummer VARCHAR(20) NULL,
    Straße_Hausnummer VARCHAR(30) NOT NULL,
    Ort_PLZ VARCHAR(30) NOT NULL,
    PRIMARY KEY (KundenID , VerkaufsvorgaengeID , BankKontoID),
    FOREIGN KEY (VerkaufsvorgaengeID)
        REFERENCES Verkaufsvorgaenge (VerkaufsvorgaengeID),
    FOREIGN KEY (BankKontoID)
        REFERENCES BankKonto(BankKontoID)
);
describe kunden;
CREATE TABLE Artikel (
    ArtikelID INT AUTO_INCREMENT,
    VerkaufsvorgaengeID INT,
    Preis DECIMAL(5 , 2 ) DEFAULT '0',
    Lieferkosten DECIMAL(4 , 2 ) DEFAULT '0',
    Artikel_Bezeichnung VARCHAR(10),
    PRIMARY KEY (ArtikelID , VerkaufsvorgaengeID),
    FOREIGN KEY (VerkaufsvorgaengeID)
        REFERENCES Verkaufsvorgaenge (VerkaufsvorgaengeID)
);
describe artikel;
CREATE TABLE Lieferversand (
    LieferversandID INT AUTO_INCREMENT,
    ArtikelID INT,
    Name VARCHAR(20) NOT NULL,
    Vorname VARCHAR(20) NOT NULL,
    Kennzeichen VARCHAR(15) NOT NULL,
    PRIMARY KEY (LieferversandID , ArtikelID),
    FOREIGN KEY (ArtikelID)
        REFERENCES Artikel (ArtikelID)
);
describe lieferversand;


insert into Mitarbeiter(
    Nachname,
    Vorname,
	Geschlecht,
	Email_Adresse,
    TEL_Nummer,
    Straße_Hausnummer,
	Ort_PLZ,
    Gehalt,    
	Arbeitszeit
    
   
 ) values(

'Alwais',
'Ahmad',
'M',
'alwais-ahmad@hotmail.com',
'+49 15770424441',
'Graitengraben 8',
'Essen 45326',
1200,
12

) ;

insert into Kunden (

Vorname
) values(
'Ahmad'


);

show columns from Mitarbeiter;

drop database sys;
use sys;