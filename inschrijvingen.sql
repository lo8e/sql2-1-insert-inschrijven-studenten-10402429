USE lo8e_sql2;

SELECT studenten.ov_nummer, studenten.voornaam,studenten.tussenvoegsel,studenten.achternaam,klassen.klas_code,klassen_cohort,docenten.voorletters,docenten.tussenvoegsel,docenten.achternaam
 FROM studenten
 LEFT JOIN klassen_studenten ON klassen_studenten.ov_nummer = studenten.ov_nummer
LEFT JOIN klassen ON klassen.klas_code = klassen_studenten.klas_code
LEFT JOIN docenten ON docenten.docent_code = klassen.slb_code
 ORDER BY klassen.klas_code, studenten.achternaam