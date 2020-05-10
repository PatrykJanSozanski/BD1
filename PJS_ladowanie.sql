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
 *  SKRYPT DO ZALADOWANIA BAZY DANYCH
 *
 *  SEMESTR LETNI 2020
 */
 
/*
 * PRZYGOTOWYWANIE BAZY DANYCH:
 */
 
ALTER SESSION SET NLS_DATE_FORMAT = "dd/mm/yy";
 
/*
 * CZYSZCZENIE TABELI:
 */
 
DELETE FROM oceny_koncowe;
DELETE FROM oceny;
DELETE FROM uczniowie;
DELETE FROM realizacje;
DELETE FROM przedmioty;
DELETE FROM lata_szkolne;
DELETE FROM klasy;
DELETE FROM nauczyciele;
DELETE FROM opiekunowie;
DELETE FROM adresy;
 
/*
 * PRZEDMIOTY:
 */

INSERT INTO przedmioty VALUES ('HIS', 'Historia');
INSERT INTO przedmioty VALUES ('INF', 'Informatyka');
INSERT INTO przedmioty VALUES ('JAN', 'Jezyk angielski');
INSERT INTO przedmioty VALUES ('JPO', 'Jezyk polski');
INSERT INTO przedmioty VALUES ('MAT', 'Matematyka');
INSERT INTO przedmioty VALUES ('MUZ', 'Muzyka');
INSERT INTO przedmioty VALUES ('PLA', 'Plastyka');
INSERT INTO przedmioty VALUES ('PRZ', 'Przyroda');
INSERT INTO przedmioty VALUES ('TEC', 'Technika');
INSERT INTO przedmioty VALUES ('WFI', 'Wychowanie fizyczne');

/*
 * LATA SZKOLNE:
 */

INSERT INTO lata_szkolne VALUES (2017, '2017/2018');
INSERT INTO lata_szkolne VALUES (2018, '2018/2019');

/*
 * ADRESY:
 */
 
-- ADRESY NAUCZYCIELI:
INSERT INTO adresy VALUES (NULL, 'Polska', 'Wroclaw', 52340, 'Dluga', 68, NULL, NULL);
INSERT INTO adresy VALUES (NULL, 'Polska', 'Wroclaw', 54007, 'Krotka', 3, 12, NULL);
INSERT INTO adresy VALUES (NULL, 'Polska', 'Wroclaw', 54207, 'Polna', 14, NULL, NULL);
INSERT INTO adresy VALUES (NULL, 'Polska', 'Wroclaw', 50003, 'Olawska', 23, 67, 48777232001);
INSERT INTO adresy VALUES (NULL, 'Polska', 'Wroclaw', 50003, 'Walowa', 18, 12, NULL);
INSERT INTO adresy VALUES (NULL, 'Polska', 'Wroclaw', 50003, 'Walowa', 18, 23, 48600727121);
INSERT INTO adresy VALUES (NULL, 'Polska', 'Wroclaw', 50004, 'Zamkowa', 2, 10, NULL);
INSERT INTO adresy VALUES (NULL, 'Polska', 'Wroclaw', 50004, 'Basztowa', 40, 7, NULL);
INSERT INTO adresy VALUES (NULL, 'Polska', 'Wroclaw', 50004, 'Wiezienna', 38, 28, NULL);
INSERT INTO adresy VALUES (NULL, 'Polska', 'Wroclaw', 50006, 'Sadowa', 8, 11, NULL);
INSERT INTO adresy VALUES (NULL, 'Polska', 'Trzebnica', 55100, 'Lipowa', 16, NULL, NULL);
INSERT INTO adresy VALUES (NULL, 'Polska', 'Oborniki Slaskie', 50120, 'Kasztanowa', 10, NULL, NULL);

-- ADRESY OPIEKUNOW:
INSERT INTO adresy VALUES (NULL, 'Polska', 'Wroclaw', 50001, 'Dworcowa', 55, 12, NULL);
INSERT INTO adresy VALUES (NULL, 'Polska', 'Wroclaw', 50001, 'Peronowa', 16, 9, NULL);
INSERT INTO adresy VALUES (NULL, 'Polska', 'Wroclaw', 54207, 'Wiatrakowa', 14, NULL, NULL);
INSERT INTO adresy VALUES (NULL, 'Polska', 'Wroclaw', 50004, 'Zamkowa', 31, 7, NULL);
INSERT INTO adresy VALUES (NULL, 'Polska', 'Wroclaw', 52230, 'Makowa', 18, NULL, NULL);
INSERT INTO adresy VALUES (NULL, 'Polska', 'Wroclaw', 50004, 'Wolnosci', 11, 11, NULL);
INSERT INTO adresy VALUES (NULL, 'Polska', 'Wroclaw', 50004, 'Targowa', 20, 1, NULL);
INSERT INTO adresy VALUES (NULL, 'Polska', 'Wroclaw', 50000, 'Rynek', 12, 4, NULL);
INSERT INTO adresy VALUES (NULL, 'Polska', 'Wroclaw', 50004, 'Parkowa', 3, 8, NULL);
INSERT INTO adresy VALUES (NULL, 'Polska', 'Wroclaw', 50004, 'Parkowa', 3, 10, NULL);
INSERT INTO adresy VALUES (NULL, 'Polska', 'Wroclaw', 53100, 'Lipowa', 12, NULL, NULL);
INSERT INTO adresy VALUES (NULL, 'Polska', 'Wroclaw', 53100, 'Lesna', 1, NULL, NULL);
INSERT INTO adresy VALUES (NULL, 'Polska', 'Wroclaw', 50004, 'Gwarna', 7, 3, NULL);
INSERT INTO adresy VALUES (NULL, 'Polska', 'Wroclaw', 50006, 'Licealna', 10, 1, NULL);

-- ADRESY UCZNIOW (GDY INNE NIZ OPIEKUNA):

INSERT INTO adresy VALUES (NULL, 'Polska', 'Wroclaw', 50010, 'Solidarnosci', 5, 16, NULL);

/*
 * NAUCZYCIELE:
 */

INSERT INTO nauczyciele VALUES (NULL, 'Jan', 'Marian', 'Kowalski', '01/09/16', 6001, 48607803000);
INSERT INTO nauczyciele VALUES (NULL, 'Marek', NULL, 'Nowak', '01/09/16', 6002, 48505404123);
INSERT INTO nauczyciele VALUES (NULL, 'Ewa', 'Anna', 'Wroblewska', '01/09/16', 6003, 48600103203);
INSERT INTO nauczyciele VALUES (NULL, 'Marta', 'Wanda', 'Lisek', '01/09/16', 6004, 48777232001);
INSERT INTO nauczyciele VALUES (NULL, 'Barbara', 'Magdalena', 'Szyszko', '01/09/16', 6005, 48504503783);
INSERT INTO nauczyciele VALUES (NULL, 'Anna', NULL, 'Wisniewska', '01/09/16', 6006, 48600727121);
INSERT INTO nauczyciele VALUES (NULL, 'Kamil', 'Michal', 'Korcz', '01/09/16', 6007, 48549832432);
INSERT INTO nauczyciele VALUES (NULL, 'Bozena', NULL, 'Wabik', '01/09/17', 6008, 48809978001);
INSERT INTO nauczyciele VALUES (NULL, 'Izabela', 'Helena', 'Mrozek', '01/09/17', 6009, 48801201323);
INSERT INTO nauczyciele VALUES (NULL, 'Arkadiusz', NULL, 'Mrozek', '01/09/17', 6010, 48812212415);
INSERT INTO nauczyciele VALUES (NULL, 'Bartosz', 'Jan', 'Kolarz', '01/09/18', 6011, 48550680125);
INSERT INTO nauczyciele VALUES (NULL, 'Anna', NULL, 'Cwir', '01/09/18', 6012, 48607230973);

/*
 * REALIZACJE:
 */

-- 2017/2018
INSERT INTO realizacje VALUES ('HIS1718', 'Historia 2017/2018', 5001, 2017, 'HIS');
INSERT INTO realizacje VALUES ('INF1718', 'Informatyka 2017/2018', 5002, 2017, 'INF');
INSERT INTO realizacje VALUES ('JAN1718', 'Jezyk angielski 2017/2018', 5003, 2017, 'JAN');
INSERT INTO realizacje VALUES ('JPO1718', 'Jezyk polski 2017/2018', 5004, 2017, 'JPO');
INSERT INTO realizacje VALUES ('MAT1718', 'Matematyka 2017/2018', 5005, 2017, 'MAT');
INSERT INTO realizacje VALUES ('MUZ1718', 'Muzyka 2017/2018', 5006, 2017, 'MUZ');
INSERT INTO realizacje VALUES ('PLA1718', 'Plastyka 2017/2018', 5007, 2017, 'PLA');
INSERT INTO realizacje VALUES ('PRZ1718', 'Przyroda 2017/2018', 5008, 2017, 'PRZ');
INSERT INTO realizacje VALUES ('TEC1718', 'Technika 2017/2018', 5009, 2017, 'TEC');
INSERT INTO realizacje VALUES ('WFI1718', 'Wychowanie fizyczne 2017/2018', 5010, 2017, 'WFI');

-- 2018/2019
INSERT INTO realizacje VALUES ('HIS1819', 'Historia 2018/2019', 5001, 2018, 'HIS');
INSERT INTO realizacje VALUES ('INF1819', 'Informatyka 2018/2019', 5002, 2018, 'INF');
INSERT INTO realizacje VALUES ('JAN1819', 'Jezyk angielski 2018/2019', 5011, 2018, 'JAN');
INSERT INTO realizacje VALUES ('JPO1819', 'Jezyk polski 2018/2019', 5004, 2018, 'JPO');
INSERT INTO realizacje VALUES ('MAT1819', 'Matematyka 2018/2019', 5012, 2018, 'MAT');
INSERT INTO realizacje VALUES ('MUZ1819', 'Muzyka 2018/2019', 5006, 2018, 'MUZ');
INSERT INTO realizacje VALUES ('PLA1819', 'Plastyka 2018/2019', 5007, 2018, 'PLA');
INSERT INTO realizacje VALUES ('PRZ1819', 'Przyroda 2018/2019', 5008, 2018, 'PRZ');
INSERT INTO realizacje VALUES ('TEC1819', 'Technika 2018/2019', 5009, 2018, 'TEC');
INSERT INTO realizacje VALUES ('WFI1819', 'Wychowanie fizyczne 2018/2019', 5010, 2018, 'WFI');

/*
 * KLASY:
 */
 
-- 2017-2019
INSERT INTO klasy VALUES ('17-18A', 'Klasa A 2017-2018', 5001);
INSERT INTO klasy VALUES ('17-18B', 'Klasa B 2017-2018', 5004);
INSERT INTO klasy VALUES ('18-19A', 'Klasa A 2018-2019', 5008);

/*
 * OPIEKUNOWIE:
 */

-- OPIEKUNOWIE UCZNIOW KLASY 2017-2018 A
INSERT INTO opiekunowie VALUES (NULL, 'Karol', 'Tomasz', 'Kos', 6013, 48603904628);
INSERT INTO opiekunowie VALUES (NULL, 'Katarzyna', 'Anna', 'Fasola', 6014, 48803904100);
INSERT INTO opiekunowie VALUES (NULL, 'Karol', NULL, 'Mrowka', 6015, 48773894641);
INSERT INTO opiekunowie VALUES (NULL, 'Grzegorz', 'Jan', 'Malek', 6016, 48555900120);
INSERT INTO opiekunowie VALUES (NULL, 'Natalia', 'Paulina', 'Krol', 6017, 48777005550);

-- OPIEKUNOWIE UCZNIOW KLASY 2017-2018 B
INSERT INTO opiekunowie VALUES (NULL, 'Karolina', NULL, 'Adamczyk', 6018, 48500123225);
INSERT INTO opiekunowie VALUES (NULL, 'Sabina', NULL, 'Kasza', 6019, 48802209334);
INSERT INTO opiekunowie VALUES (NULL, 'Agnieszka', 'Teresa', 'Lampa', 6020, 48598808322);
INSERT INTO opiekunowie VALUES (NULL, 'Janusz', NULL, 'Nowak', 6021, 48605623356);

-- OPIEKUNOWIE UCZNIOW KLASY 2018-2019 A
INSERT INTO opiekunowie VALUES (NULL, 'Tomasz', NULL, 'Korek', 6022, 48623911628);
INSERT INTO opiekunowie VALUES (NULL, 'Mariusz', NULL, 'Kot', 6023, 48504504328);
INSERT INTO opiekunowie VALUES (NULL, 'Hanna', 'Henryka', 'Czajka', 6024, 48623922633);
INSERT INTO opiekunowie VALUES (NULL, 'Iwona', NULL, 'Igla', 6025, 48600004608);
INSERT INTO opiekunowie VALUES (NULL, 'Dorota', 'Barbara', 'Bulka', 6026, 48521304622);

/*
 * UCZNIOWIE:
 */
 
-- UCZNIOWIE KLASY 2017-2018 A
INSERT INTO uczniowie VALUES (NULL, 'Adam', NULL, 'Kos', '11/12/05', '17-18A', 6013, 4001);
INSERT INTO uczniowie VALUES (NULL, 'Jakub', 'Maciej', 'Fasola', '05/07/05', '17-18A', 6014, 4002);
INSERT INTO uczniowie VALUES (NULL, 'Kamila', NULL, 'Mrowka', '03/04/05', '17-18A', 6015, 4003);
INSERT INTO uczniowie VALUES (NULL, 'Michal', 'Jan', 'Malek', '17/02/06', '17-18A', 6016, 4004);
INSERT INTO uczniowie VALUES (NULL, 'Joanna', NULL, 'Krol', '14/02/06', '17-18A', 6017, 4005);

-- UCZNIOWIE KLASY 2017-2018 B
INSERT INTO uczniowie VALUES (NULL, 'Roksana', NULL, 'Adamczyk', '21/06/05', '17-18B', 6018, 4006);
INSERT INTO uczniowie VALUES (NULL, 'Wiktoria', NULL, 'Adamczyk','21/06/05', '17-18B', 6018, 4006);
INSERT INTO uczniowie VALUES (NULL, 'Sebastian', NULL, 'Rozalski', '30/04/06', '17-18B', 6027, 4007);
INSERT INTO uczniowie VALUES (NULL, 'Celina', 'Zofia', 'Lampa', '10/09/05', '17-18B', 6020, 4008);
INSERT INTO uczniowie VALUES (NULL, 'Maciej', NULL, 'Nowak', '03/01/06', '17-18B', 6021, 4009);

-- UCZNIOWIE KLASY 2018-2019 A
INSERT INTO uczniowie VALUES (NULL, 'Milosz', 'Dariusz', 'Korek', '30/03/06', '18-19A', 6022, 4010);
INSERT INTO uczniowie VALUES (NULL, 'Malwina', 'Natasza', 'Kot', '22/05/06', '18-19A', 6023, 4011);
INSERT INTO uczniowie VALUES (NULL, 'Aleksandra', NULL, 'Czajka', '07/08/07', '18-19A', 6024, 4012);
INSERT INTO uczniowie VALUES (NULL, 'Julia', 'Federyka', 'Igla', '12/10/07', '18-19A', 6025, 4013);
INSERT INTO uczniowie VALUES (NULL, 'Patrycja', NULL, 'Bulka', '24/11/08', '18-19A', 6026, 4014);

/*
 * OCENY:
 */
 
-- OCENY UCZNIOW KLASY 2017-2018 A

-- *** --

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3001, 'HIS1718');
INSERT INTO oceny VALUES (NULL, 4, 'Kartkowka', NULL, 3001, 'HIS1718');
INSERT INTO oceny VALUES (NULL, 5, 'Odpowiedz', NULL, 3001, 'HIS1718');

INSERT INTO oceny VALUES (NULL, 3, 'Sprawdzian', NULL, 3001, 'INF1718');
INSERT INTO oceny VALUES (NULL, 6, 'Projekt', NULL, 3001, 'INF1718');
INSERT INTO oceny VALUES (NULL, 5, 'Prezentacja', NULL, 3001, 'INF1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3001, 'JAN1718');
INSERT INTO oceny VALUES (NULL, 1, 'Kartkowka 1', 'Brak mozliwosci poprawy.', 3001, 'JAN1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka 2', NULL, 3001, 'JAN1718');

INSERT INTO oceny VALUES (NULL, 4.5, 'Wypracowanie', NULL, 3001, 'JPO1718');
INSERT INTO oceny VALUES (NULL, 4, 'Praca domowa', NULL, 3001, 'JPO1718');
INSERT INTO oceny VALUES (NULL, 4, 'Odpowiedz', NULL, 3001, 'JPO1718');

INSERT INTO oceny VALUES (NULL, 3.5, 'Sprawdzian 1', NULL, 3001, 'MAT1718');
INSERT INTO oceny VALUES (NULL, 4, 'Praca domowa', NULL, 3001, 'MAT1718');
INSERT INTO oceny VALUES (NULL, 3, 'Sprawdzan 2', NULL, 3001, 'MAT1718');

INSERT INTO oceny VALUES (NULL, 5.5, 'Sprawdzian', NULL, 3001, 'MUZ1718');
INSERT INTO oceny VALUES (NULL, 4, 'Odpowiedz', NULL, 3001, 'MUZ1718');
INSERT INTO oceny VALUES (NULL, 5, 'Prezentacja', NULL, 3001, 'MUZ1718');

INSERT INTO oceny VALUES (NULL, 6, 'Praca domowa', NULL, 3001, 'PLA1718');
INSERT INTO oceny VALUES (NULL, 4, 'Kartkowka', NULL, 3001, 'PLA1718');
INSERT INTO oceny VALUES (NULL, 6, 'Praca na lekcji', NULL, 3001, 'PLA1718');

INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian 1', NULL, 3001, 'PRZ1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka', NULL, 3001, 'PRZ1718');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian 2', NULL, 3001, 'PRZ1718');

INSERT INTO oceny VALUES (NULL, 1, 'Praca domowa', 'Brak pracy domowej.', 3001, 'TEC1718');
INSERT INTO oceny VALUES (NULL, 0, 'Sprawdzian', 'Nieobecnosc.', 3001, 'TEC1718');
INSERT INTO oceny VALUES (NULL, 4, 'Praca na lekcji', NULL, 3001, 'TEC1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3001, 'WFI1718');
INSERT INTO oceny VALUES (NULL, 5, 'Rozgrzewka', NULL, 3001, 'WFI1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3001, 'WFI1718');

-- *** --

INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian', NULL, 3002, 'HIS1718');
INSERT INTO oceny VALUES (NULL, 4, 'Kartkowka', NULL, 3002, 'HIS1718');
INSERT INTO oceny VALUES (NULL, 4, 'Odpowiedz', NULL, 3002, 'HIS1718');

INSERT INTO oceny VALUES (NULL, 3.5, 'Sprawdzian', NULL, 3002, 'INF1718');
INSERT INTO oceny VALUES (NULL, 3, 'Projekt', NULL, 3002, 'INF1718');
INSERT INTO oceny VALUES (NULL, 4, 'Prezentacja', NULL, 3002, 'INF1718');

INSERT INTO oceny VALUES (NULL, 3, 'Sprawdzian', NULL, 3002, 'JAN1718');
INSERT INTO oceny VALUES (NULL, 3, 'Kartkowka 1', NULL, 3002, 'JAN1718');
INSERT INTO oceny VALUES (NULL, 4, 'Kartkowka 2', NULL, 3002, 'JAN1718');

INSERT INTO oceny VALUES (NULL, 5, 'Wypracowanie', NULL, 3002, 'JPO1718');
INSERT INTO oceny VALUES (NULL, 3.5, 'Praca domowa', NULL, 3002, 'JPO1718');
INSERT INTO oceny VALUES (NULL, 4, 'Odpowiedz', NULL, 3002, 'JPO1718');

INSERT INTO oceny VALUES (NULL, 3, 'Sprawdzian 1', NULL, 3002, 'MAT1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca domowa', NULL, 3002, 'MAT1718');
INSERT INTO oceny VALUES (NULL, 3.5, 'Sprawdzan 2', NULL, 3002, 'MAT1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3002, 'MUZ1718');
INSERT INTO oceny VALUES (NULL, 4, 'Odpowiedz', NULL, 3002, 'MUZ1718');
INSERT INTO oceny VALUES (NULL, 4, 'Prezentacja', NULL, 3002, 'MUZ1718');

INSERT INTO oceny VALUES (NULL, 4, 'Praca domowa', NULL, 3002, 'PLA1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka', NULL, 3002, 'PLA1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3002, 'PLA1718');

INSERT INTO oceny VALUES (NULL, 2, 'Sprawdzian 1', NULL, 3002, 'PRZ1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka', NULL, 3002, 'PRZ1718');
INSERT INTO oceny VALUES (NULL, 3.5, 'Sprawdzian 2', NULL, 3002, 'PRZ1718');

INSERT INTO oceny VALUES (NULL, 5, 'Praca domowa', NULL, 3002, 'TEC1718');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3002, 'TEC1718');
INSERT INTO oceny VALUES (NULL, 6, 'Praca na lekcji', NULL, 3002, 'TEC1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3002, 'WFI1718');
INSERT INTO oceny VALUES (NULL, 5, 'Rozgrzewka', NULL, 3002, 'WFI1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3002, 'WFI1718');

-- *** --

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3003, 'HIS1718');
INSERT INTO oceny VALUES (NULL, 4, 'Kartkowka', NULL, 3003, 'HIS1718');
INSERT INTO oceny VALUES (NULL, 5, 'Odpowiedz', NULL, 3003, 'HIS1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3003, 'INF1718');
INSERT INTO oceny VALUES (NULL, 5, 'Projekt', NULL, 3003, 'INF1718');
INSERT INTO oceny VALUES (NULL, 5, 'Prezentacja', NULL, 3003, 'INF1718');

INSERT INTO oceny VALUES (NULL, 6, 'Sprawdzian', NULL, 3003, 'JAN1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka 1', NULL, 3003, 'JAN1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka 2', NULL, 3003, 'JAN1718');

INSERT INTO oceny VALUES (NULL, 5, 'Wypracowanie', NULL, 3003, 'JPO1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca domowa', NULL, 3003, 'JPO1718');
INSERT INTO oceny VALUES (NULL, 4, 'Odpowiedz', NULL, 3003, 'JPO1718');

INSERT INTO oceny VALUES (NULL, 4.5, 'Sprawdzian 1', NULL, 3003, 'MAT1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca domowa', NULL, 3003, 'MAT1718');
INSERT INTO oceny VALUES (NULL, 5.5, 'Sprawdzan 2', NULL, 3003, 'MAT1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3003, 'MUZ1718');
INSERT INTO oceny VALUES (NULL, 4.5, 'Odpowiedz', NULL, 3003, 'MUZ1718');
INSERT INTO oceny VALUES (NULL, 5, 'Prezentacja', NULL, 3003, 'MUZ1718');

INSERT INTO oceny VALUES (NULL, 5, 'Praca domowa', NULL, 3003, 'PLA1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka', NULL, 3003, 'PLA1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3003, 'PLA1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian 1', NULL, 3003, 'PRZ1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka', NULL, 3003, 'PRZ1718');
INSERT INTO oceny VALUES (NULL, 5.5, 'Sprawdzian 2', NULL, 3003, 'PRZ1718');

INSERT INTO oceny VALUES (NULL, 5, 'Praca domowa', NULL, 3003, 'TEC1718');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3003, 'TEC1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3003, 'TEC1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3003, 'WFI1718');
INSERT INTO oceny VALUES (NULL, 5, 'Rozgrzewka', NULL, 3003, 'WFI1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3003, 'WFI1718');

-- *** --

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3004, 'HIS1718');
INSERT INTO oceny VALUES (NULL, 4, 'Kartkowka', NULL, 3004, 'HIS1718');
INSERT INTO oceny VALUES (NULL, 5, 'Odpowiedz', NULL, 3004, 'HIS1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3004, 'INF1718');
INSERT INTO oceny VALUES (NULL, 5, 'Projekt', NULL, 3004, 'INF1718');
INSERT INTO oceny VALUES (NULL, 5, 'Prezentacja', NULL, 3004, 'INF1718');

INSERT INTO oceny VALUES (NULL, 6, 'Sprawdzian', NULL, 3004, 'JAN1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka 1', NULL, 3004, 'JAN1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka 2', NULL, 3004, 'JAN1718');

INSERT INTO oceny VALUES (NULL, 5, 'Wypracowanie', NULL, 3004, 'JPO1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca domowa', NULL, 3004, 'JPO1718');
INSERT INTO oceny VALUES (NULL, 4, 'Odpowiedz', NULL, 3004, 'JPO1718');

INSERT INTO oceny VALUES (NULL, 4.5, 'Sprawdzian 1', NULL, 3004, 'MAT1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca domowa', NULL, 3004, 'MAT1718');
INSERT INTO oceny VALUES (NULL, 5.5, 'Sprawdzan 2', NULL, 3004, 'MAT1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3004, 'MUZ1718');
INSERT INTO oceny VALUES (NULL, 4, 'Odpowiedz', NULL, 3004, 'MUZ1718');
INSERT INTO oceny VALUES (NULL, 4, 'Prezentacja', NULL, 3004, 'MUZ1718');

INSERT INTO oceny VALUES (NULL, 4, 'Praca domowa', NULL, 3004, 'PLA1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka', NULL, 3004, 'PLA1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3004, 'PLA1718');

INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian 1', NULL, 3004, 'PRZ1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka', NULL, 3004, 'PRZ1718');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian 2', NULL, 3004, 'PRZ1718');

INSERT INTO oceny VALUES (NULL, 5, 'Praca domowa', NULL, 3004, 'TEC1718');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3004, 'TEC1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3004, 'TEC1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3004, 'WFI1718');
INSERT INTO oceny VALUES (NULL, 5, 'Rozgrzewka', NULL, 3004, 'WFI1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3004, 'WFI1718');

-- *** --

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3005, 'HIS1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka', NULL, 3005, 'HIS1718');
INSERT INTO oceny VALUES (NULL, 5, 'Odpowiedz', NULL, 3005, 'HIS1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3005, 'INF1718');
INSERT INTO oceny VALUES (NULL, 6, 'Projekt', NULL, 3005, 'INF1718');
INSERT INTO oceny VALUES (NULL, 5, 'Prezentacja', NULL, 3005, 'INF1718');

INSERT INTO oceny VALUES (NULL, 6, 'Sprawdzian', NULL, 3005, 'JAN1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka 1', NULL, 3005, 'JAN1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka 2', NULL, 3005, 'JAN1718');

INSERT INTO oceny VALUES (NULL, 4, 'Wypracowanie', NULL, 3005, 'JPO1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca domowa', NULL, 3005, 'JPO1718');
INSERT INTO oceny VALUES (NULL, 4, 'Odpowiedz', NULL, 3005, 'JPO1718');

INSERT INTO oceny VALUES (NULL, 4.5, 'Sprawdzian 1', NULL, 3005, 'MAT1718');
INSERT INTO oceny VALUES (NULL, 1, 'Praca domowa', 'Brak pracy domowej.', 3005, 'MAT1718');
INSERT INTO oceny VALUES (NULL, 5.5, 'Sprawdzan 2', NULL, 3005, 'MAT1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3005, 'MUZ1718');
INSERT INTO oceny VALUES (NULL, 5, 'Odpowiedz', NULL, 3005, 'MUZ1718');
INSERT INTO oceny VALUES (NULL, 4, 'Prezentacja', NULL, 3005, 'MUZ1718');

INSERT INTO oceny VALUES (NULL, 4.5, 'Praca domowa', NULL, 3005, 'PLA1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka', NULL, 3005, 'PLA1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3005, 'PLA1718');

INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian 1', NULL, 3005, 'PRZ1718');
INSERT INTO oceny VALUES (NULL, 3, 'Kartkowka', NULL, 3005, 'PRZ1718');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian 2', NULL, 3005, 'PRZ1718');

INSERT INTO oceny VALUES (NULL, 4, 'Praca domowa', NULL, 3005, 'TEC1718');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3005, 'TEC1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3005, 'TEC1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3005, 'WFI1718');
INSERT INTO oceny VALUES (NULL, 5, 'Rozgrzewka', NULL, 3005, 'WFI1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3005, 'WFI1718');

-- *** --

-- OCENY UCZNIOW KLASY 2017-2018 B

-- *** --

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3006, 'HIS1718');
INSERT INTO oceny VALUES (NULL, 4, 'Kartkowka', NULL, 3006, 'HIS1718');
INSERT INTO oceny VALUES (NULL, 5, 'Odpowiedz', NULL, 3006, 'HIS1718');

INSERT INTO oceny VALUES (NULL, 3, 'Sprawdzian', NULL, 3006, 'INF1718');
INSERT INTO oceny VALUES (NULL, 6, 'Projekt', NULL, 3006, 'INF1718');
INSERT INTO oceny VALUES (NULL, 5, 'Prezentacja', NULL, 3006, 'INF1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3006, 'JAN1718');
INSERT INTO oceny VALUES (NULL, 4, 'Kartkowka 1', NULL, 3006, 'JAN1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka 2', NULL, 3006, 'JAN1718');

INSERT INTO oceny VALUES (NULL, 4.5, 'Wypracowanie', NULL, 3006, 'JPO1718');
INSERT INTO oceny VALUES (NULL, 4, 'Praca domowa', NULL, 3006, 'JPO1718');
INSERT INTO oceny VALUES (NULL, 5, 'Odpowiedz', NULL, 3006, 'JPO1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian 1', NULL, 3006, 'MAT1718');
INSERT INTO oceny VALUES (NULL, 4, 'Praca domowa', NULL, 3006, 'MAT1718');
INSERT INTO oceny VALUES (NULL, 3, 'Sprawdzan 2', NULL, 3006, 'MAT1718');

INSERT INTO oceny VALUES (NULL, 5.5, 'Sprawdzian', NULL, 3006, 'MUZ1718');
INSERT INTO oceny VALUES (NULL, 4, 'Odpowiedz', NULL, 3006, 'MUZ1718');
INSERT INTO oceny VALUES (NULL, 5, 'Prezentacja', NULL, 3006, 'MUZ1718');

INSERT INTO oceny VALUES (NULL, 6, 'Praca domowa', NULL, 3006, 'PLA1718');
INSERT INTO oceny VALUES (NULL, 4, 'Kartkowka', NULL, 3006, 'PLA1718');
INSERT INTO oceny VALUES (NULL, 6, 'Praca na lekcji', NULL, 3006, 'PLA1718');

INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian 1', NULL, 3006, 'PRZ1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka', NULL, 3006, 'PRZ1718');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian 2', NULL, 3006, 'PRZ1718');

INSERT INTO oceny VALUES (NULL, 5, 'Praca domowa', NULL, 3006, 'TEC1718');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3006, 'TEC1718');
INSERT INTO oceny VALUES (NULL, 4, 'Praca na lekcji', NULL, 3006, 'TEC1718');

INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian', NULL, 3006, 'WFI1718');
INSERT INTO oceny VALUES (NULL, 5, 'Rozgrzewka', NULL, 3006, 'WFI1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3006, 'WFI1718');

-- *** --

INSERT INTO oceny VALUES (NULL, 2, 'Sprawdzian', NULL, 3007, 'HIS1718');
INSERT INTO oceny VALUES (NULL, 2, 'Kartkowka', NULL, 3007, 'HIS1718');
INSERT INTO oceny VALUES (NULL, 2.5, 'Odpowiedz', NULL, 3007, 'HIS1718');

INSERT INTO oceny VALUES (NULL, 3.5, 'Sprawdzian', NULL, 3007, 'INF1718');
INSERT INTO oceny VALUES (NULL, 2, 'Projekt', NULL, 3007, 'INF1718');
INSERT INTO oceny VALUES (NULL, 3, 'Prezentacja', NULL, 3007, 'INF1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3007, 'JAN1718');
INSERT INTO oceny VALUES (NULL, 4, 'Kartkowka 1', NULL, 3007, 'JAN1718');
INSERT INTO oceny VALUES (NULL, 5.5, 'Kartkowka 2', NULL, 3007, 'JAN1718');

INSERT INTO oceny VALUES (NULL, 2, 'Wypracowanie', NULL, 3007, 'JPO1718');
INSERT INTO oceny VALUES (NULL, 3.5, 'Praca domowa', NULL, 3007, 'JPO1718');
INSERT INTO oceny VALUES (NULL, 4, 'Odpowiedz', NULL, 3007, 'JPO1718');

INSERT INTO oceny VALUES (NULL, 3, 'Sprawdzian 1', NULL, 3007, 'MAT1718');
INSERT INTO oceny VALUES (NULL, 2.5, 'Praca domowa', NULL, 3007, 'MAT1718');
INSERT INTO oceny VALUES (NULL, 3.5, 'Sprawdzan 2', NULL, 3007, 'MAT1718');

INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian', NULL, 3007, 'MUZ1718');
INSERT INTO oceny VALUES (NULL, 4, 'Odpowiedz', NULL, 3007, 'MUZ1718');
INSERT INTO oceny VALUES (NULL, 4, 'Prezentacja', NULL, 3007, 'MUZ1718');

INSERT INTO oceny VALUES (NULL, 6, 'Praca domowa', NULL, 3007, 'PLA1718');
INSERT INTO oceny VALUES (NULL, 2, 'Kartkowka', NULL, 3007, 'PLA1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3007, 'PLA1718');

INSERT INTO oceny VALUES (NULL, 2, 'Sprawdzian 1', NULL, 3007, 'PRZ1718');
INSERT INTO oceny VALUES (NULL, 3, 'Kartkowka', NULL, 3007, 'PRZ1718');
INSERT INTO oceny VALUES (NULL, 3.5, 'Sprawdzian 2', NULL, 3007, 'PRZ1718');

INSERT INTO oceny VALUES (NULL, 2, 'Praca domowa', NULL, 3007, 'TEC1718');
INSERT INTO oceny VALUES (NULL, 2, 'Sprawdzian', NULL, 3007, 'TEC1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3007, 'TEC1718');

INSERT INTO oceny VALUES (NULL, 6, 'Sprawdzian', NULL, 3007, 'WFI1718');
INSERT INTO oceny VALUES (NULL, 5, 'Rozgrzewka', NULL, 3007, 'WFI1718');
INSERT INTO oceny VALUES (NULL, 6, 'Praca na lekcji', NULL, 3007, 'WFI1718');

-- *** --

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3008, 'HIS1718');
INSERT INTO oceny VALUES (NULL, 4, 'Kartkowka', NULL, 3008, 'HIS1718');
INSERT INTO oceny VALUES (NULL, 5, 'Odpowiedz', NULL, 3008, 'HIS1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3008, 'INF1718');
INSERT INTO oceny VALUES (NULL, 5, 'Projekt', NULL, 3008, 'INF1718');
INSERT INTO oceny VALUES (NULL, 5, 'Prezentacja', NULL, 3008, 'INF1718');

INSERT INTO oceny VALUES (NULL, 6, 'Sprawdzian', NULL, 3008, 'JAN1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka 1', NULL, 3008, 'JAN1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka 2', NULL, 3008, 'JAN1718');

INSERT INTO oceny VALUES (NULL, 5, 'Wypracowanie', NULL, 3008, 'JPO1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca domowa', NULL, 3008, 'JPO1718');
INSERT INTO oceny VALUES (NULL, 4, 'Odpowiedz', NULL, 3008, 'JPO1718');

INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian 1', NULL, 3008, 'MAT1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca domowa', NULL, 3008, 'MAT1718');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzan 2', NULL, 3008, 'MAT1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3008, 'MUZ1718');
INSERT INTO oceny VALUES (NULL, 5, 'Odpowiedz', NULL, 3008, 'MUZ1718');
INSERT INTO oceny VALUES (NULL, 5, 'Prezentacja', NULL, 3008, 'MUZ1718');

INSERT INTO oceny VALUES (NULL, 5, 'Praca domowa', NULL, 3008, 'PLA1718');
INSERT INTO oceny VALUES (NULL, 4.5, 'Kartkowka', NULL, 3008, 'PLA1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3008, 'PLA1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian 1', NULL, 3008, 'PRZ1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka', NULL, 3008, 'PRZ1718');
INSERT INTO oceny VALUES (NULL, 4.5, 'Sprawdzian 2', NULL, 3008, 'PRZ1718');

INSERT INTO oceny VALUES (NULL, 2, 'Praca domowa', NULL, 3008, 'TEC1718');
INSERT INTO oceny VALUES (NULL, 2, 'Sprawdzian', NULL, 3008, 'TEC1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3008, 'TEC1718');

INSERT INTO oceny VALUES (NULL, 3, 'Sprawdzian', NULL, 3008, 'WFI1718');
INSERT INTO oceny VALUES (NULL, 5, 'Rozgrzewka', NULL, 3008, 'WFI1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3008, 'WFI1718');

-- *** --

INSERT INTO oceny VALUES (NULL, 2, 'Sprawdzian', NULL, 3009, 'HIS1718');
INSERT INTO oceny VALUES (NULL, 4, 'Kartkowka', NULL, 3009, 'HIS1718');
INSERT INTO oceny VALUES (NULL, 5, 'Odpowiedz', NULL, 3009, 'HIS1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3009, 'INF1718');
INSERT INTO oceny VALUES (NULL, 5, 'Projekt', NULL, 3009, 'INF1718');
INSERT INTO oceny VALUES (NULL, 5, 'Prezentacja', NULL, 3009, 'INF1718');

INSERT INTO oceny VALUES (NULL, 6, 'Sprawdzian', NULL, 3009, 'JAN1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka 1', NULL, 3009, 'JAN1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka 2', NULL, 3009, 'JAN1718');

INSERT INTO oceny VALUES (NULL, 5, 'Wypracowanie', NULL, 3009, 'JPO1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca domowa', NULL, 3009, 'JPO1718');
INSERT INTO oceny VALUES (NULL, 5, 'Odpowiedz', NULL, 3009, 'JPO1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian 1', NULL, 3009, 'MAT1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca domowa', NULL, 3009, 'MAT1718');
INSERT INTO oceny VALUES (NULL, 5.5, 'Sprawdzan 2', NULL, 3009, 'MAT1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3009, 'MUZ1718');
INSERT INTO oceny VALUES (NULL, 4, 'Odpowiedz', NULL, 3009, 'MUZ1718');
INSERT INTO oceny VALUES (NULL, 4, 'Prezentacja', NULL, 3009, 'MUZ1718');

INSERT INTO oceny VALUES (NULL, 5, 'Praca domowa', NULL, 3009, 'PLA1718');
INSERT INTO oceny VALUES (NULL, 4.5, 'Kartkowka', NULL, 3009, 'PLA1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3009, 'PLA1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian 1', NULL, 3009, 'PRZ1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka', NULL, 3009, 'PRZ1718');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian 2', NULL, 3009, 'PRZ1718');

INSERT INTO oceny VALUES (NULL, 6, 'Praca domowa', NULL, 3009, 'TEC1718');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3009, 'TEC1718');
INSERT INTO oceny VALUES (NULL, 6, 'Praca na lekcji', NULL, 3009, 'TEC1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3009, 'WFI1718');
INSERT INTO oceny VALUES (NULL, 5, 'Rozgrzewka', NULL, 3009, 'WFI1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3009, 'WFI1718');

-- *** --

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3010, 'HIS1718');
INSERT INTO oceny VALUES (NULL, 4, 'Kartkowka', NULL, 3010, 'HIS1718');
INSERT INTO oceny VALUES (NULL, 5, 'Odpowiedz', NULL, 3010, 'HIS1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3010, 'INF1718');
INSERT INTO oceny VALUES (NULL, 5, 'Projekt', NULL, 3010, 'INF1718');
INSERT INTO oceny VALUES (NULL, 5, 'Prezentacja', NULL, 3010, 'INF1718');

INSERT INTO oceny VALUES (NULL, 6, 'Sprawdzian', NULL, 3010, 'JAN1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka 1', NULL, 3010, 'JAN1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka 2', NULL, 3010, 'JAN1718');

INSERT INTO oceny VALUES (NULL, 4, 'Wypracowanie', NULL, 3010, 'JPO1718');
INSERT INTO oceny VALUES (NULL, 1, 'Praca domowa', 'Brak pracy domowej.', 3010, 'JPO1718');
INSERT INTO oceny VALUES (NULL, 4, 'Odpowiedz', NULL, 3010, 'JPO1718');

INSERT INTO oceny VALUES (NULL, 4.5, 'Sprawdzian 1', NULL, 3010, 'MAT1718');
INSERT INTO oceny VALUES (NULL, 1, 'Praca domowa', 'Brak pracy domowej.', 3010, 'MAT1718');
INSERT INTO oceny VALUES (NULL, 5.5, 'Sprawdzan 2', NULL, 3005, 'MAT1718');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3010, 'MUZ1718');
INSERT INTO oceny VALUES (NULL, 5, 'Odpowiedz', NULL, 3010, 'MUZ1718');
INSERT INTO oceny VALUES (NULL, 4, 'Prezentacja', NULL, 3010, 'MUZ1718');

INSERT INTO oceny VALUES (NULL, 1, 'Praca domowa', 'Brak pracy domowej.', 3010, 'PLA1718');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka', NULL, 3010, 'PLA1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3010, 'PLA1718');

INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian 1', NULL, 3010, 'PRZ1718');
INSERT INTO oceny VALUES (NULL, 3, 'Kartkowka', NULL, 3010, 'PRZ1718');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian 2', NULL, 3010, 'PRZ1718');

INSERT INTO oceny VALUES (NULL, 4, 'Praca domowa', NULL, 3010, 'TEC1718');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3010, 'TEC1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3010, 'TEC1718');

INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian', NULL, 3010, 'WFI1718');
INSERT INTO oceny VALUES (NULL, 5, 'Rozgrzewka', NULL, 3010, 'WFI1718');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3010, 'WFI1718');

-- *** --

-- OCENY UCZNIOW KLASY 2018-2019 A

-- *** --

INSERT INTO oceny VALUES (NULL, 2, 'Sprawdzian 1', NULL, 3011, 'HIS1819');
INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian 2', NULL, 3011, 'HIS1819');
INSERT INTO oceny VALUES (NULL, 5, 'Odpowiedz', NULL, 3011, 'HIS1819');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3011, 'INF1819');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka', NULL, 3011, 'INF1819');
INSERT INTO oceny VALUES (NULL, 5, 'Prezentacja', NULL, 3011, 'INF1819');

INSERT INTO oceny VALUES (NULL, 6, 'Sprawdzian', NULL, 3011, 'JAN1819');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka 1', NULL, 3011, 'JAN1819');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka 2', NULL, 3011, 'JAN1819');

INSERT INTO oceny VALUES (NULL, 5, 'Wypracowanie', NULL, 3011, 'JPO1819');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3011, 'JPO1819');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka', NULL, 3011, 'JPO1819');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian 1', NULL, 3011, 'MAT1819');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka', NULL, 3011, 'MAT1819');
INSERT INTO oceny VALUES (NULL, 5.5, 'Sprawdzan 2', NULL, 3011, 'MAT1819');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3011, 'MUZ1819');
INSERT INTO oceny VALUES (NULL, 4, 'Odpowiedz 1', NULL, 3011, 'MUZ1819');
INSERT INTO oceny VALUES (NULL, 4, 'Odpowiedz 2', NULL, 3011, 'MUZ1819');

INSERT INTO oceny VALUES (NULL, 5, 'Praca domowa 1', NULL, 3011, 'PLA1819');
INSERT INTO oceny VALUES (NULL, 4.5, 'Kartkowka', NULL, 3011, 'PLA1819');
INSERT INTO oceny VALUES (NULL, 5, 'Praca domowa 2', NULL, 3011, 'PLA1819');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian 1', NULL, 3011, 'PRZ1819');
INSERT INTO oceny VALUES (NULL, 5, 'Odpowiedz', NULL, 3011, 'PRZ1819');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian 2', NULL, 3011, 'PRZ1819');

INSERT INTO oceny VALUES (NULL, 6, 'Praca na lekcji 1', NULL, 3011, 'TEC1819');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3011, 'TEC1819');
INSERT INTO oceny VALUES (NULL, 6, 'Praca na lekcji 2', NULL, 3011, 'TEC1819');

INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian 1', NULL, 3011, 'WFI1819');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian 2', NULL, 3011, 'WFI1819');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3011, 'WFI1819');

-- *** --

INSERT INTO oceny VALUES (NULL, 3, 'Sprawdzian 1', NULL, 3012, 'HIS1819');
INSERT INTO oceny VALUES (NULL, 3, 'Sprawdzian 2', NULL, 3012, 'HIS1819');
INSERT INTO oceny VALUES (NULL, 3, 'Odpowiedz', NULL, 3012, 'HIS1819');

INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian', NULL, 3012, 'INF1819');
INSERT INTO oceny VALUES (NULL, 3, 'Kartkowka', NULL, 3012, 'INF1819');
INSERT INTO oceny VALUES (NULL, 4, 'Prezentacja', NULL, 3012, 'INF1819');

INSERT INTO oceny VALUES (NULL, 3, 'Sprawdzian', NULL, 3012, 'JAN1819');
INSERT INTO oceny VALUES (NULL, 3, 'Kartkowka 1', NULL, 3012, 'JAN1819');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka 2', NULL, 3012, 'JAN1819');

INSERT INTO oceny VALUES (NULL, 3, 'Wypracowanie', NULL, 3012, 'JPO1819');
INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian', NULL, 3012, 'JPO1819');
INSERT INTO oceny VALUES (NULL, 5.5, 'Kartkowka', NULL, 3012, 'JPO1819');

INSERT INTO oceny VALUES (NULL, 2, 'Sprawdzian 1', NULL, 3012, 'MAT1819');
INSERT INTO oceny VALUES (NULL, 3, 'Kartkowka', NULL, 3012, 'MAT1819');
INSERT INTO oceny VALUES (NULL, 2.5, 'Sprawdzan 2', NULL, 3012, 'MAT1819');

INSERT INTO oceny VALUES (NULL, 2, 'Sprawdzian', NULL, 3012, 'MUZ1819');
INSERT INTO oceny VALUES (NULL, 3, 'Odpowiedz 1', NULL, 3012, 'MUZ1819');
INSERT INTO oceny VALUES (NULL, 4.5, 'Odpowiedz 2', NULL, 3012, 'MUZ1819');

INSERT INTO oceny VALUES (NULL, 1, 'Praca domowa 1', 'Brak pracy domowej.', 3012, 'PLA1819');
INSERT INTO oceny VALUES (NULL, 4.5, 'Kartkowka', NULL, 3012, 'PLA1819');
INSERT INTO oceny VALUES (NULL, 5, 'Praca domowa 2', NULL, 3012, 'PLA1819');

INSERT INTO oceny VALUES (NULL, 0, 'Sprawdzian 1', 'Nieobecnosc.', 3012, 'PRZ1819');
INSERT INTO oceny VALUES (NULL, 1, 'Odpowiedz', NULL, 3012, 'PRZ1819');
INSERT INTO oceny VALUES (NULL, 3, 'Sprawdzian 2', NULL, 3012, 'PRZ1819');

INSERT INTO oceny VALUES (NULL, 6, 'Praca na lekcji 1', NULL, 3012, 'TEC1819');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3012, 'TEC1819');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji 2', NULL, 3012, 'TEC1819');

INSERT INTO oceny VALUES (NULL, 6, 'Sprawdzian 1', NULL, 3012, 'WFI1819');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian 2', NULL, 3012, 'WFI1819');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3012, 'WFI1819');

-- *** --

INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian 1', NULL, 3013, 'HIS1819');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian 2', NULL, 3013, 'HIS1819');
INSERT INTO oceny VALUES (NULL, 3, 'Odpowiedz', NULL, 3013, 'HIS1819');

INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian', NULL, 3013, 'INF1819');
INSERT INTO oceny VALUES (NULL, 4, 'Kartkowka', NULL, 3013, 'INF1819');
INSERT INTO oceny VALUES (NULL, 4, 'Prezentacja', NULL, 3013, 'INF1819');

INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian', NULL, 3013, 'JAN1819');
INSERT INTO oceny VALUES (NULL, 4, 'Kartkowka 1', NULL, 3013, 'JAN1819');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka 2', NULL, 3013, 'JAN1819');

INSERT INTO oceny VALUES (NULL, 5, 'Wypracowanie', NULL, 3013, 'JPO1819');
INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian', NULL, 3013, 'JPO1819');
INSERT INTO oceny VALUES (NULL, 5.5, 'Kartkowka', NULL, 3013, 'JPO1819');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian 1', NULL, 3013, 'MAT1819');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka', NULL, 3013, 'MAT1819');
INSERT INTO oceny VALUES (NULL, 4.5, 'Sprawdzan 2', NULL, 3013, 'MAT1819');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3013, 'MUZ1819');
INSERT INTO oceny VALUES (NULL, 5, 'Odpowiedz 1', NULL, 3013, 'MUZ1819');
INSERT INTO oceny VALUES (NULL, 4.5, 'Odpowiedz 2', NULL, 3013, 'MUZ1819');

INSERT INTO oceny VALUES (NULL, 4, 'Praca domowa 1', NULL, 3013, 'PLA1819');
INSERT INTO oceny VALUES (NULL, 4.5, 'Kartkowka', NULL, 3013, 'PLA1819');
INSERT INTO oceny VALUES (NULL, 5, 'Praca domowa 2', NULL, 3013, 'PLA1819');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian 1', NULL, 3013, 'PRZ1819');
INSERT INTO oceny VALUES (NULL, 4, 'Odpowiedz', NULL, 3013, 'PRZ1819');
INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian 2', NULL, 3013, 'PRZ1819');

INSERT INTO oceny VALUES (NULL, 6, 'Praca na lekcji 1', NULL, 3013, 'TEC1819');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3013, 'TEC1819');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji 2', NULL, 3013, 'TEC1819');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian 1', NULL, 3013, 'WFI1819');
INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian 2', NULL, 3013, 'WFI1819');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3013, 'WFI1819');

-- *** --

INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian 1', NULL, 3014, 'HIS1819');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian 2', NULL, 3014, 'HIS1819');
INSERT INTO oceny VALUES (NULL, 0, 'Odpowiedz', 'Nieobecnosc.', 3014, 'HIS1819');

INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian', NULL, 3014, 'INF1819');
INSERT INTO oceny VALUES (NULL, 4, 'Kartkowka', NULL, 3014, 'INF1819');
INSERT INTO oceny VALUES (NULL, 0, 'Prezentacja', 'Nieobecnosc.', 3014, 'INF1819');

INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian', NULL, 3014, 'JAN1819');
INSERT INTO oceny VALUES (NULL, 4, 'Kartkowka 1', NULL, 3014, 'JAN1819');
INSERT INTO oceny VALUES (NULL, 0, 'Kartkowka 2','Nieobecnosc.', 3014, 'JAN1819');

INSERT INTO oceny VALUES (NULL, 5, 'Wypracowanie', NULL, 3014, 'JPO1819');
INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian', NULL, 3014, 'JPO1819');
INSERT INTO oceny VALUES (NULL, 0, 'Kartkowka', 'Nieobecnosc.', 3014, 'JPO1819');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian 1', NULL, 3014, 'MAT1819');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka', NULL, 3014, 'MAT1819');
INSERT INTO oceny VALUES (NULL, 0, 'Sprawdzan 2', 'Nieobecnosc.', 3014, 'MAT1819');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3014, 'MUZ1819');
INSERT INTO oceny VALUES (NULL, 5, 'Odpowiedz 1', NULL, 3014, 'MUZ1819');
INSERT INTO oceny VALUES (NULL, 0, 'Odpowiedz 2', 'Nieobecnosc.', 3014, 'MUZ1819');

INSERT INTO oceny VALUES (NULL, 4, 'Praca domowa 1', NULL, 3014, 'PLA1819');
INSERT INTO oceny VALUES (NULL, 4.5, 'Kartkowka', NULL, 3014, 'PLA1819');
INSERT INTO oceny VALUES (NULL, 0, 'Praca domowa 2', 'Nieobecnosc.', 3014, 'PLA1819');

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian 1', NULL, 3014, 'PRZ1819');
INSERT INTO oceny VALUES (NULL, 4, 'Odpowiedz', NULL, 3014, 'PRZ1819');
INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian 2', 'Nieobecnosc.', 3014, 'PRZ1819');

INSERT INTO oceny VALUES (NULL, 6, 'Praca na lekcji 1', NULL, 3014, 'TEC1819');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3014, 'TEC1819');
INSERT INTO oceny VALUES (NULL, 0, 'Praca na lekcji 2', 'Nieobecnosc.', 3014, 'TEC1819');

INSERT INTO oceny VALUES (NULL, 6, 'Sprawdzian 1', NULL, 3014, 'WFI1819');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian 2', NULL, 3014, 'WFI1819');
INSERT INTO oceny VALUES (NULL, 0, 'Praca na lekcji', 'Nieobecnosc.', 3014, 'WFI1819');

-- *** --

INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian 1', NULL, 3015, 'HIS1819');
INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian 2', NULL, 3015, 'HIS1819');
INSERT INTO oceny VALUES (NULL, 3, 'Odpowiedz', NULL, 3012, 'HIS1819');

INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian', NULL, 3015, 'INF1819');
INSERT INTO oceny VALUES (NULL, 3, 'Kartkowka', NULL, 3015, 'INF1819');
INSERT INTO oceny VALUES (NULL, 4.5, 'Prezentacja', NULL, 3015, 'INF1819');

INSERT INTO oceny VALUES (NULL, 3, 'Sprawdzian', NULL, 3015, 'JAN1819');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka 1', NULL, 3015, 'JAN1819');
INSERT INTO oceny VALUES (NULL, 5, 'Kartkowka 2', NULL, 3015, 'JAN1819');

INSERT INTO oceny VALUES (NULL, 4, 'Wypracowanie', NULL, 3015, 'JPO1819');
INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian', NULL, 3015, 'JPO1819');
INSERT INTO oceny VALUES (NULL, 5.5, 'Kartkowka', NULL, 3015, 'JPO1819');

INSERT INTO oceny VALUES (NULL, 1, 'Sprawdzian 1', NULL, 3015, 'MAT1819');
INSERT INTO oceny VALUES (NULL, 3, 'Kartkowka', NULL, 3015, 'MAT1819');
INSERT INTO oceny VALUES (NULL, 3.5, 'Sprawdzan 2', NULL, 3015, 'MAT1819');

INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian', NULL, 3015, 'MUZ1819');
INSERT INTO oceny VALUES (NULL, 5, 'Odpowiedz 1', NULL, 3015, 'MUZ1819');
INSERT INTO oceny VALUES (NULL, 4.5, 'Odpowiedz 2', NULL, 3015, 'MUZ1819');

INSERT INTO oceny VALUES (NULL, 5, 'Praca domowa 1', NULL, 3015, 'PLA1819');
INSERT INTO oceny VALUES (NULL, 4.5, 'Kartkowka', NULL, 3015, 'PLA1819');
INSERT INTO oceny VALUES (NULL, 5, 'Praca domowa 2', NULL, 3015, 'PLA1819');

INSERT INTO oceny VALUES (NULL, 3, 'Sprawdzian 1', NULL, 3015, 'PRZ1819');
INSERT INTO oceny VALUES (NULL, 3, 'Odpowiedz', NULL, 3015, 'PRZ1819');
INSERT INTO oceny VALUES (NULL, 3.5, 'Sprawdzian 2', NULL, 3015, 'PRZ1819');

INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji 1', NULL, 3015, 'TEC1819');
INSERT INTO oceny VALUES (NULL, 5, 'Sprawdzian', NULL, 3015, 'TEC1819');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji 2', NULL, 3015, 'TEC1819');

INSERT INTO oceny VALUES (NULL, 4, 'Sprawdzian 1', NULL, 3015, 'WFI1819');
INSERT INTO oceny VALUES (NULL, 3, 'Sprawdzian 2', NULL, 3015, 'WFI1819');
INSERT INTO oceny VALUES (NULL, 5, 'Praca na lekcji', NULL, 3015, 'WFI1819');
