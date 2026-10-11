CREATE TABLE Klienci (
    id int PRIMARY KEY AUTO_INCREMENT NOT NULL ,
    imie varchar(100) NOT NULL ,
    nazwisko varchar(100) NOT NULL ,
    telefon int NOT NULL
);
CREATE TABLE Samochody (
    samochody_id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    klient_id int NOT NULL,
    rejestracja varchar(8) NOT NULL,
    marka varchar(255) NOT NULL,
    model varchar(255) NOT NULL,
    przyjety_dnia datetime
);
CREATE TABLE Pracownicy (
    pracownik_id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    imie varchar(100) NOT NULL,
    nazwisko varchar(100) NOT NULL,
    telefon int NOT NULL,
    email varchar(100),
    miejsce_zamieszkania varchar(255),
    rola varchar(100),
    placa double
);
CREATE TABLE Problem (
    problem_id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    opis text,
    czesci_id int,
    pracownik_id int
);
CREATE TABLE Magazyn (
    czesci_id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nazwa varchar(255) NOT NULL,
    model varchar(255),
    ilosc int
);
CREATE TABLE Platnosc (
    platnosc_id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    kwota double NOT NULL,
    data_platnosci datetime DEFAULT timestamp NULL,
    skonczona boolean NOT NULL
);

