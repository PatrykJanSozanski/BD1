/*  CWICZENIA LABORATORYJNE Z PRZEDMIOTU BAZY DANYCH 1
 *
 *  PROJEKT: SZKOLA 
 *
 *  PROWADZACA:
 *  MGR AGNIESZKA M. SZMURLO
 *  
 *  WYKONAL:
 *  PATRYK JAN SOZANSKI
 *  WYDZIAL ELEKTRONIKI I TECHNIK INFORMACYJNYCH
 *  POLITECHNIKI WARSZAWSKIEJ
 *
 *  CZESC I:
 *  SKRYPT DO ZALOZENIA SCHEMATU BAZY DANYCH
 *
 *  SEMESTR LETNI 2020
 */

/*
 * PRZYGOTOWYWANIE BAZY DANYCH:
 */

/*
 * USUWANIE SEKWENCJI:
 */
 
DROP SEQUENCE kod_adresu_sek;
DROP SEQUENCE id_nauczyciela_sek;
DROP SEQUENCE kod_oceny_sek;
DROP SEQUENCE kod_oceny_koncowej_sek;
DROP SEQUENCE id_opiekuna_sek;
DROP SEQUENCE id_ucznia_sek;
 
 /*
  * USUWANIE WYZWALACZY:
  */
  
DROP TRIGGER kod_adresu_tg;
DROP TRIGGER id_nauczyciela_tg;
DROP TRIGGER kod_oceny_tg;
DROP TRIGGER kod_oceny_koncowej_tg;
DROP TRIGGER id_opiekuna_tg;
DROP TRIGGER id_ucznia_tg;
DROP TRIGGER usuniecie_oceny_tg;
-- DROP TRIGGER zmiana_sredniej_tg;
 
/*
 * USUWANIE PROCEDUR:
 */
 
DROP PROCEDURE srednia_ocen_pr;
DROP PROCEDURE wszystkie_srednie_ocen_pr;
DROP PROCEDURE oceny_proponowane_pr;
DROP PROCEDURE swiadectwo_pr;
 
 /*
  * USUWANIE FUNKCJI:
  */
 
DROP FUNCTION policz_srednia_fun;

/*
 * USUWANIE TABEL:
 */
 
DROP TABLE adresy CASCADE CONSTRAINTS;
DROP TABLE klasy CASCADE CONSTRAINTS;
DROP TABLE lata_szkolne CASCADE CONSTRAINTS;
DROP TABLE nauczyciele CASCADE CONSTRAINTS;
DROP TABLE oceny CASCADE CONSTRAINTS;
DROP TABLE oceny_koncowe CASCADE CONSTRAINTS;
DROP TABLE opiekunowie CASCADE CONSTRAINTS;
DROP TABLE przedmioty CASCADE CONSTRAINTS;
DROP TABLE realizacje CASCADE CONSTRAINTS;
DROP TABLE uczniowie CASCADE CONSTRAINTS;

-- TWORZENIE TABEL:

-- ADRESY

CREATE TABLE adresy (
    kod_adresu         NUMBER(4) NOT NULL,
    kraj               VARCHAR2(20) NOT NULL,
    miasto             VARCHAR2(20) NOT NULL,
    kod_pocztowy       NUMBER(5) NOT NULL,
    ulica              VARCHAR2(20) NOT NULL,
    numer_domu         NUMBER(4) NOT NULL,
    numer_mieszkania   NUMBER(3),
    numer_telefonu     NUMBER(12)
);

ALTER TABLE adresy ADD CONSTRAINT adresy_pk PRIMARY KEY ( kod_adresu );

-- KONIEC ADRESY

--KLASY

CREATE TABLE klasy (
    kod_klasy       VARCHAR2(6) NOT NULL,
    tytul           VARCHAR2(20) NOT NULL,
    id_wychowawcy   NUMBER(4) NOT NULL
);

CREATE UNIQUE INDEX klasy__idx ON
    klasy (
        id_wychowawcy
    ASC );

ALTER TABLE klasy ADD CONSTRAINT klasy_pk PRIMARY KEY ( kod_klasy );
ALTER TABLE klasy ADD CONSTRAINT klasy_tytul_uni UNIQUE ( tytul );

-- KONIEC KLASY

-- LATA SZKOLNE

CREATE TABLE lata_szkolne (
    kod_roku   NUMBER(4) NOT NULL,
    tytul      VARCHAR2(20) NOT NULL
);

ALTER TABLE lata_szkolne ADD CONSTRAINT lata_szkolne_pk PRIMARY KEY ( kod_roku );
ALTER TABLE lata_szkolne ADD CONSTRAINT lata_szkolne_tytul_uni UNIQUE ( tytul );

-- KONIEC LATA SZKOLNE

-- NAUCZYCIELE

CREATE TABLE nauczyciele (
    identyfikator_nauczyciela   NUMBER(4) NOT NULL,
    imie                        VARCHAR2(30) NOT NULL,
    drugie_imie                 VARCHAR2(30),
    nazwisko                    VARCHAR2(30) NOT NULL,
    data_zatrudnienia           DATE NOT NULL,
    kod_adresu                  NUMBER(4) NOT NULL,
    numer_kontaktowy            NUMBER(12) NOT NULL
);

ALTER TABLE nauczyciele ADD CONSTRAINT nauczyciele_pk PRIMARY KEY ( identyfikator_nauczyciela );

-- KONIEC NAUCZYCIELE

-- OCENY

CREATE TABLE oceny (
    kod_oceny        NUMBER(4) NOT NULL,
    ocena            NUMBER(3, 2) NOT NULL,
    opis             VARCHAR2(20) NOT NULL,
    komentarz        VARCHAR2(50),
    id_ucznia        NUMBER(4) NOT NULL,
    kod_realizacji   VARCHAR2(7) NOT NULL
);

ALTER TABLE oceny ADD CONSTRAINT oceny_pk PRIMARY KEY ( kod_oceny );

-- KONIEC OCENY

-- OCENY KONCOWE

CREATE TABLE oceny_koncowe (
    kod_oceny_koncowej   NUMBER(4) NOT NULL,
    srednia              NUMBER(3, 2),
    ocena_koncowa        NUMBER(2),
    id_ucznia            NUMBER(4) NOT NULL,
    kod_realizacji       VARCHAR2(7) NOT NULL
);

ALTER TABLE oceny_koncowe ADD CONSTRAINT oceny_koncowe_pk PRIMARY KEY ( kod_oceny_koncowej );

-- KONIEC OCENY KONCOWE

-- OPIEKUNOWIE

CREATE TABLE opiekunowie (
    identyfikator_opiekuna   NUMBER(4) NOT NULL,
    imie                     VARCHAR2(30) NOT NULL,
    drugi__imie              VARCHAR2(30),
    nazwisko                 VARCHAR2(30) NOT NULL,
    kod_adresu               NUMBER(4) NOT NULL,
    numer_kontaktowy         NUMBER(12) NOT NULL
    
);

ALTER TABLE opiekunowie ADD CONSTRAINT opiekunowie_pk PRIMARY KEY ( identyfikator_opiekuna );

-- KONIEC OPIEKUNOWIE

-- PRZEDMIOTY

CREATE TABLE przedmioty (
    kod_przedmiotu   VARCHAR2(3) NOT NULL,
    tytul            VARCHAR2(20) NOT NULL
);

ALTER TABLE przedmioty ADD CONSTRAINT przedmioty_pk PRIMARY KEY ( kod_przedmiotu );
ALTER TABLE przedmioty ADD CONSTRAINT przedmioty_tytul_uni UNIQUE ( tytul );

-- KONIEC PRZEDMIOTY

-- REALIZACJE

CREATE TABLE realizacje (
    kod_realizacji   VARCHAR2(7) NOT NULL,
    tytul            VARCHAR2(40) NOT NULL,
    id_nauczyciela   NUMBER(4) NOT NULL,
    kod_roku         NUMBER(4) NOT NULL,
    kod_przedmiotu   VARCHAR2(3) NOT NULL
);

ALTER TABLE realizacje ADD CONSTRAINT realizacje_pk PRIMARY KEY ( kod_realizacji );
ALTER TABLE realizacje ADD CONSTRAINT realizacje_tytul_uni UNIQUE ( tytul );

-- KONIEC REALIZACJE

-- UCZNIOWIE

CREATE TABLE uczniowie (
    identyfikator_ucznia   NUMBER(4) NOT NULL,
    imie                   VARCHAR2(30) NOT NULL,
    drugie_imie            VARCHAR2(30),
    nazwisko               VARCHAR2(30) NOT NULL,
    data_urodzenia         DATE NOT NULL,
    kod_klasy              VARCHAR2(6) NOT NULL,
    kod_adresu             NUMBER(4) NOT NULL,
    id_opiekuna            NUMBER(4) NOT NULL
);

ALTER TABLE uczniowie ADD CONSTRAINT uczniowie_pk PRIMARY KEY ( identyfikator_ucznia );

-- KONIEC UCZNIOWIE 

/*
 * WIEZY INTEGRALNOSCI:
 */
 
-- KLASY

ALTER TABLE klasy
    ADD CONSTRAINT wychowawca_klasy_fk FOREIGN KEY ( id_wychowawcy )
        REFERENCES nauczyciele ( identyfikator_nauczyciela );
        
-- KONIEC KLASY

-- NAUCZYCIELE

ALTER TABLE nauczyciele
    ADD CONSTRAINT adres_nauczyciela_fk FOREIGN KEY ( kod_adresu )
        REFERENCES adresy ( kod_adresu );

-- KONIEC NAUCZYCIELE

-- OCENY KONCOWE

ALTER TABLE oceny_koncowe
    ADD CONSTRAINT realizacja_oceny_koncowej_fk FOREIGN KEY ( kod_realizacji )
        REFERENCES realizacje ( kod_realizacji );

ALTER TABLE oceny_koncowe
    ADD CONSTRAINT uczen_oceny_koncowej_fk FOREIGN KEY ( id_ucznia )
        REFERENCES uczniowie ( identyfikator_ucznia );

-- KONIEC OCENY KONCOWE

-- OCENY

ALTER TABLE oceny
    ADD CONSTRAINT realizacja_oceny_fk FOREIGN KEY ( kod_realizacji )
        REFERENCES realizacje ( kod_realizacji );

ALTER TABLE oceny
    ADD CONSTRAINT uczen_oceny_fk FOREIGN KEY ( id_ucznia )
        REFERENCES uczniowie ( identyfikator_ucznia );

-- KONIEC OCENY

-- OPIEKUNOWIE

ALTER TABLE opiekunowie
    ADD CONSTRAINT adres_opiekuna_fk FOREIGN KEY ( kod_adresu )
        REFERENCES adresy ( kod_adresu );

-- KONIEC OPIEKUNOWIE

-- REALIZACJE

ALTER TABLE realizacje
    ADD CONSTRAINT rok_realizacji_fk FOREIGN KEY ( kod_roku )
        REFERENCES lata_szkolne ( kod_roku );

ALTER TABLE realizacje
    ADD CONSTRAINT nauczyciel_realizacji_fk FOREIGN KEY ( id_nauczyciela )
        REFERENCES nauczyciele ( identyfikator_nauczyciela );

ALTER TABLE realizacje
    ADD CONSTRAINT przedmiot_realizacji_fk FOREIGN KEY ( kod_przedmiotu )
        REFERENCES przedmioty ( kod_przedmiotu );

-- KONIEC REALIZACJE

-- UCZNIOWIE

ALTER TABLE uczniowie
    ADD CONSTRAINT adres_ucznia_fk FOREIGN KEY ( kod_adresu )
        REFERENCES adresy ( kod_adresu );

ALTER TABLE uczniowie
    ADD CONSTRAINT klasa_ucznia_fk FOREIGN KEY ( kod_klasy )
        REFERENCES klasy ( kod_klasy );

ALTER TABLE uczniowie
    ADD CONSTRAINT opiekun_ucznia_fk FOREIGN KEY ( id_opiekuna )
        REFERENCES opiekunowie ( identyfikator_opiekuna );
        
-- KONIEC UCZNIOWIE

/*
 * FUNKCJE:
 */
 
 -- WYLICZANIE SREDNIEJ

CREATE OR REPLACE FUNCTION policz_srednia_fun (
    kod_real IN VARCHAR2,
    uczen IN NUMERIC)
    RETURN NUMBER
    IS srednia NUMERIC(3, 2);
    BEGIN
        SELECT AVG(ocena)
        INTO srednia
        FROM oceny O
        WHERE O.kod_realizacji = kod_real AND O.id_ucznia = uczen;
        RETURN(srednia);
    END policz_srednia_fun;
/

-- KONIEC WYLICZANIE SREDNIEJ

/*
 * SEKWENCJE:
 */
 
-- KOD_ADRESU

CREATE SEQUENCE kod_adresu_sek
    START WITH 6001
    INCREMENT BY 1;
    
-- KONIEC KOD_ADRESU

-- ID_NAUCZYCIELA
    
CREATE SEQUENCE id_nauczyciela_sek
    START WITH 5001
    INCREMENT BY 1;

-- KONIEC ID_NAUCZYCIELA

-- KOD_OCENY

CREATE SEQUENCE kod_oceny_sek
    START WITH 1001
    INCREMENT BY 1;
    
-- KONIEC KOD_OCENY

-- KOD_OCENY_KONCOWEJ

CREATE SEQUENCE kod_oceny_koncowej_sek
    START WITH 2001
    INCREMENT BY 1;

-- KONIEC KOD_OCENY_KONCOWEJ
    
-- ID_OPIEKUNA

CREATE SEQUENCE id_opiekuna_sek
    START WITH 4001
    INCREMENT BY 1;
    
-- KONIEC ID_OPIEKUNA
    
-- ID_UCZNIA

CREATE SEQUENCE id_ucznia_sek
    START WITH 3001
    INCREMENT BY 1;
    
-- KONIEC ID_UCZNIA

/*
 * WYZWALACZE
 */
 
 -- KOD_ADRESU

CREATE OR REPLACE TRIGGER kod_adresu_tg
    BEFORE INSERT ON adresy
    FOR EACH ROW
    BEGIN
        IF :new.kod_adresu IS NULL
            THEN :new.kod_adresu := kod_adresu_sek.nextval;
        END IF;
    END;
/

-- KONIEC KOD_ADRESU

-- ID_NAUCZYCIELA
    
CREATE OR REPLACE TRIGGER id_nauczyciela_tg
    BEFORE INSERT ON nauczyciele
    FOR EACH ROW
    BEGIN
        IF :new.identyfikator_nauczyciela IS NULL
            THEN :new.identyfikator_nauczyciela := id_nauczyciela_sek.nextval;
        END IF;
    END;
/

-- KONIEC ID_NAUCZYCIELA

-- KOD_OCENY

CREATE OR REPLACE TRIGGER kod_oceny_tg
    BEFORE INSERT ON oceny
    FOR EACH ROW
    BEGIN
        IF :new.kod_oceny IS NULL
            THEN :new.kod_oceny := kod_oceny_sek.nextval;
        END IF;
    END;
/

-- KONIEC KOD_OCENY

-- KOD_OCENY_KONCOWEJ

CREATE OR REPLACE TRIGGER kod_oceny_koncowej_tg
    BEFORE INSERT ON oceny_koncowe
    FOR EACH ROW
    BEGIN
        IF :new.kod_oceny_koncowej IS NULL
            THEN :new.kod_oceny_koncowej := kod_oceny_koncowej_sek.nextval;
        END IF;
    END;
/

-- KONIEC KOD_OCENY_KONCOWEJ
    
-- ID_OPIEKUNA

CREATE OR REPLACE TRIGGER id_opiekuna_tg
    BEFORE INSERT ON opiekunowie
    FOR EACH ROW
    BEGIN
        IF :new.identyfikator_opiekuna IS NULL
            THEN :new.identyfikator_opiekuna := id_opiekuna_sek.nextval;
        END IF;
    END;
/

-- KONIEC ID_OPIEKUNA
    
-- ID_UCZNIA

CREATE OR REPLACE TRIGGER id_ucznia_tg
    BEFORE INSERT ON uczniowie
    FOR EACH ROW
    BEGIN
        IF :new.identyfikator_ucznia IS NULL
            THEN :new.identyfikator_ucznia := id_ucznia_sek.nextval;
        END IF;
    END;
/

-- KONIEC ID_UCZNIA

-- USUNIECIE OCENY
/*
 * NIE MOZNA USUNAC OCENY
 */
    
CREATE OR REPLACE TRIGGER usuniecie_oceny_tg
    BEFORE DELETE ON oceny
    FOR EACH ROW
    BEGIN
        raise_application_error(-20001,'Nie mozna usunac oceny!');
    END;
/

-- KONIEC USUNIECIE OCENY

-- ZMIANA SREDNIEJ OCEN
/*
 * NIE MOZNA ZMIENIC SREDNIEJ OCEN
 */

/* 
CREATE OR REPLACE TRIGGER zmiana_sredniej_tg
    BEFORE DELETE OR UPDATE OF srednia ON oceny_koncowe
    FOR EACH ROW
    BEGIN
        raise_application_error(-20001,'Nie mozna zmienic/usunac sredniej ocen!');
    END;
/
*/
-- KONIEC ZMIANA SREDNIEJ OCEN

/*
 * PROCEDURY:
 */
 
-- SREDNIA OCEN
/*
 * JESLI NIE ISTNIEJE OCENA KONCOWA DLA DANEGO UCZNIA I DANEJ REALIZACJI, TO STWORZ NOWY REKORD OCENY KONCOWEJ I POLICZ SREDNIA
 * JESLI ISTNIEJE JUZ OCENA KONCOWA DLA DANEGO UCZNIA I DANEJ REALIZACJI, TO UAKTUALNIJ SREDNIA
 */
 
CREATE OR REPLACE PROCEDURE srednia_ocen_pr (
    uczen IN NUMERIC,
    kod_real IN VARCHAR2)
    IS
        licznik NUMBER;
    BEGIN
        SELECT COUNT(*)
        INTO licznik
        FROM oceny_koncowe OK
        WHERE OK.id_ucznia = uczen AND OK.kod_realizacji = kod_real;
        IF licznik = 0
            THEN INSERT INTO oceny_koncowe VALUES (NULL, policz_srednia_fun(kod_real, uczen), NULL, uczen, kod_real);
        ELSE
            UPDATE oceny_koncowe OK
            SET OK.srednia = policz_srednia_fun(kod_real, uczen)
            WHERE OK.id_ucznia = uczen AND OK.kod_realizacji = kod_real;
        END IF;
    END;
/

-- KONIEC SREDNIA OCEN

-- WSZYSTKIE SREDNIE OCEN
/*
 * GENERUJE SREDNIE OCEN KONCOWYCH DLA WSZYSTKICH PRZEDMIOTOW DANEGO UCZNIA DLA DANEGO ROKU SZKOLNEGO
 */

CREATE OR REPLACE PROCEDURE wszystkie_srednie_ocen_pr (
    uczen IN NUMERIC, 
    rok IN NUMERIC)
    IS
        TYPE typ_zestawienie IS RECORD (                -- stworzenie typu
            kod_oceny oceny.kod_oceny%TYPE,
            ocena oceny.ocena%TYPE,
            id_ucznia oceny.id_ucznia%TYPE,
            kod_realizacji oceny.kod_realizacji%TYPE);
        zestawienie typ_zestawienie;                   
        i NUMBER(4);
        a NUMBER(4);
        b NUMBER(4);
    BEGIN
        a := 1;
        
        SELECT COUNT(*)
        INTO b
        FROM oceny O
        JOIN realizacje R
        ON O.kod_realizacji = R.kod_realizacji
        WHERE O.id_ucznia = uczen AND R.kod_roku = rok;
        
        FOR i IN 1..b
            LOOP
                SELECT kod_oceny, ocena, id_ucznia, kod_realizacji
                INTO zestawienie
                FROM   (SELECT ROWNUM AS rn, o.kod_oceny, o.ocena, o.id_ucznia, o.kod_realizacji
                        FROM oceny O
                        JOIN realizacje R
                        ON O.kod_realizacji = R.kod_realizacji
                        WHERE O.id_ucznia = uczen AND R.kod_roku = rok)
                WHERE rn = a;
                
                srednia_ocen_pr (zestawienie.id_ucznia, zestawienie.kod_realizacji);
                a := a + 1;
            END LOOP;
    END;
/      
        
-- KONIEC WSZYSTKIE SREDNIE OCEN
 
-- GENEROWANIE OCEN PROPONOWANYCH
/*
 * WYSTAWIA OCENE KONCOWA NA PODSTAWIE SREDNIEJ OCEN
 */

CREATE OR REPLACE PROCEDURE oceny_proponowane_pr
    AS
    BEGIN
        UPDATE oceny_koncowe OK
        SET OK.ocena_koncowa = ROUND(OK.srednia)
        WHERE OK.srednia IS NOT NULL;
    END oceny_proponowane_pr;
/

-- KONIEC GENEROWANIE OCEN PROPONOWANYCH

-- GENEROWANIE SWIADECTWA
/*
 * GENERUJE ZESTAWIENIE OCEN (A' LA SWIADECTWO) DLA PODANEGO UCZNIA
 */

CREATE OR REPLACE PROCEDURE swiadectwo_pr (
    uczen IN NUMERIC,
    kod_rok_szkolny IN NUMERIC)
    IS
        dane_ucznia uczniowie%ROWTYPE;
        rok_szkolny VARCHAR2(20);
        klasa VARCHAR2(20);
        TYPE typ_zestawienie IS RECORD (                -- stworzenie typu
            przedmiot przedmioty.tytul%TYPE,
            ocena oceny_koncowe.ocena_koncowa%TYPE);
        zestawienie typ_zestawienie;                    -- stworzenie zmiennej
        i NUMBER(2);
        a NUMBER(2);
        b NUMBER(2);
    BEGIN
        SELECT tytul
        INTO rok_szkolny
        FROM lata_szkolne LS
        WHERE LS.kod_roku = kod_rok_szkolny;
        
        SELECT *
        INTO dane_ucznia
        FROM uczniowie U
        WHERE U.identyfikator_ucznia = uczen;
        
        SELECT tytul
        INTO klasa
        FROM klasy K
        JOIN uczniowie U
        ON K.kod_klasy = U.kod_klasy
        WHERE U.identyfikator_ucznia = uczen;
        
        dbms_output.put_line('SWIADECTWO UKONCZENIA KURSU');
        dbms_output.put_line('');
        dbms_output.put_line('IMIE (IMIONA) I NAZWISKO: ' || dane_ucznia.imie || ' ' || dane_ucznia.drugie_imie || ' ' || dane_ucznia.nazwisko);
        dbms_output.put_line('URODZONY/A DNIA: ' || dane_ucznia.data_urodzenia);
        dbms_output.put_line('UCZESZCZAL/A W ROKU SZKOLNYM: ' || rok_szkolny || ' DO KLASY: ' || klasa);
        dbms_output.put_line('PRYWATNEJ SZKOLY "SOWA" IM. KRZYSZTOFA KAMILA BACZYNSKIEGO');
        dbms_output.put_line('PRZY ULICY WALOWEJ 24 WE WROCLAWIU');
        dbms_output.put_line('');
        dbms_output.put_line('WYNIKI KLASYFIKACJI ROCZNEJ:');
        dbms_output.put_line('');
        
        a := 1;
        
        SELECT COUNT(*)                 -- liczba przedmiotow na swiadectwie
        INTO b
        FROM oceny_koncowe OK
        WHERE OK.id_ucznia = id_ucznia;
        
        FOR i IN 1..b
            LOOP
                SELECT tytul, ocena_koncowa
                INTO zestawienie
                FROM   (SELECT ROWNUM AS rn, KT.tytul, KO.ocena_koncowa
                        FROM   (SELECT kod_realizacji, ocena_koncowa    -- tablica (kod_realizacji, ocena) dla danego ucznia
                                FROM oceny_koncowe OK
                                WHERE OK.id_ucznia = uczen) KO
                        JOIN   (SELECT R.kod_realizacji, P.tytul        -- tablica (kod_realizacji, tytul przedmiotu) dla wszystkich przedmiotow
                                FROM realizacje R
                                JOIN przedmioty P
                                ON R.kod_przedmiotu = P.kod_przedmiotu
                                WHERE R.kod_roku = kod_rok_szkolny) KT
                        ON KO.kod_realizacji = KT.kod_realizacji
                        ORDER BY KT.tytul)
                WHERE rn = a;
            
                dbms_output.put_line(zestawienie.przedmiot || ' : ' || zestawienie.ocena);
                a := a + 1;
            END LOOP;
        
    END swiadectwo_pr;
/

-- KONIEC GENEROWANIE SWIADECTWA