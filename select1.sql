


select * from Bestellungen;
select Bestellnr, Kundencode, Bestelldatum from Bestellungen;
select Bestellnr, Frachtkosten from Bestellungen
	where Frachtkosten =< 100;
select Bestellnr, Kundencode from Bestellungen
	where Versandueber = 2;
select Bestellnr, Kundencode, Lieferdatum from Bestellungen
	where Versandueber = 2
	and Lieferdatum <= 1.1.1998,
	and Lieferdatum >= 30.6.1998;
