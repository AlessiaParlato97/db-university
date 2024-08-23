# university


- Modellare la struttura di un database per memorizzare tutti i dati riguardanti una università:
sono presenti diversi Dipartimenti (es.: Lettere e Filosofia, Matematica, Ingegneria ecc.);
ogni Dipartimento offre più Corsi di Laurea (es.: Civiltà e Letterature Classiche, Informatica, Ingegneria Elettronica ecc..)
ogni Corso di Laurea prevede diversi Corsi (es.: Letteratura Latina, Sistemi Operativi 1, Analisi Matematica 2 ecc.);
ogni Corso può essere tenuto da diversi Insegnanti;
ogni Corso prevede più appelli d'Esame;
ogni Studente è iscritto ad un solo Corso di Laurea;
ogni Studente può iscriversi a più appelli di Esame;
per ogni appello d'Esame a cui lo Studente ha partecipato, è necessario memorizzare il voto ottenuto, anche se non sufficiente. Pensiamo a quali entità (tabelle) creare per il nostro database e cerchiamo poi di stabilirne le relazioni. Infine, andiamo a definire le colonne e i tipi di dato di ogni tabella.
Utilizzare https://www.drawio.com/ per la creazione dello schema. Esportare quindi il diagramma in jpg e caricarlo nella repo.





table : Dipartimenti
- id_dipartimento (INT, PK)
- nome (VARCHAR)
- descrizione (TEXT)

table : Corsi di Laurea
- id_corso_laurea (INT, PK)
- nome (VARCHAR)
- id_dipartimento (INT, FK)
- descrizione (TEXT)

table : Corsi
- id_corso (INT, PK)
- nome (VARCHAR)
- id_corso_laurea (INT, FK)
- descrizione (TEXT)
- cfu (INT)

table : Insegnanti
- id_insegnante (INT, PK)
- nome (VARCHAR)
- cognome (VARCHAR)
- email (VARCHAR)
- id_dipartimento (INT, FK)

table : Corsi_Insegnanti (Tabella di relazione tra Corsi e Insegnanti)
- id_corso (INT, FK)
- id_insegnante (INT, FK)
- PK composta da (id_corso, id_insegnante)

tabele : Appelli d'Esame
- id_appello (INT, PK)
- data (DATE)
- id_corso (INT, FK)

table : Studenti
- id_studente (INT, PK)
- nome (VARCHAR)
- cognome (VARCHAR)
- matricola (VARCHAR)
- id_corso_laurea (INT, FK)
- email (VARCHAR)

table : Iscrizione_Appelli (Tabella di relazione tra Studenti e Appelli d'Esame)
- id_studente (INT, FK)
- id_appello (INT, FK)
- voto (INT)
- PK composta da (id_studente, id_appello)

Relazioni
Un Dipartimento può offrire più Corsi di Laurea.
Un Corso di Laurea può appartenere a un solo Dipartimento.
Un Corso di Laurea può avere più Corsi.
Un Corso può essere tenuto da più Insegnanti (relazione molti-a-molti).
Un Insegnante può tenere più Corsi (relazione molti-a-molti).
Un Corso può avere più Appelli d'Esame.
Uno Studente può iscriversi a un solo Corso di Laurea.
Uno Studente può iscriversi a più Appelli d'Esame (relazione molti-a-molti).
Uno Studente può ottenere un voto per ogni Appello d'Esame a cui partecipa.
