CREATE TABLE Klienci (
    id int PRIMARY KEY AUTO_INCREMENT,
    imie varchar(100) NOT NULL,
    nazwisko varchar(100) NOT NULL,
    telefon varchar(20) NOT NULL
);

CREATE TABLE Samochody (
    samochody_id int PRIMARY KEY AUTO_INCREMENT,
    klient_id int NOT NULL,
    rejestracja varchar(8) NOT NULL,
    marka varchar(255) NOT NULL,
    model varchar(255) NOT NULL,
    przyjety_dnia datetime DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Pracownicy (
    pracownik_id int PRIMARY KEY AUTO_INCREMENT,
    imie varchar(100) NOT NULL,
    nazwisko varchar(100) NOT NULL,
    telefon varchar(20) NOT NULL,
    email varchar(100),
    miejsce_zamieszkania varchar(255),
    rola varchar(100),
    placa decimal(10,2)
);

CREATE TABLE Magazyn (
    czesci_id int PRIMARY KEY AUTO_INCREMENT,
    nazwa varchar(255) NOT NULL,
    model varchar(255),
    ilosc int DEFAULT 0
);

CREATE TABLE Problem (
    problem_id int PRIMARY KEY AUTO_INCREMENT,
    samochody_id int NOT NULL,
    czesci_id int,
    pracownik_id int,
    opis text
);

CREATE TABLE Platnosc (
    platnosc_id int PRIMARY KEY AUTO_INCREMENT,
    problem_id int NOT NULL,
    kwota decimal(10,2) NOT NULL,
    data_platnosci datetime DEFAULT CURRENT_TIMESTAMP,
    skonczona boolean NOT NULL DEFAULT FALSE
);