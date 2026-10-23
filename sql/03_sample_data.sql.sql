INSERT INTO Klienci (imie, nazwisko, telefon) VALUES
('Jan', 'Kowalski', '501234567'),
('Anna', 'Nowak', '602345678'),
('Piotr', 'Wiśniewski', '503456789'),
('Katarzyna', 'Wójcik', '704567890'),
('Michał', 'Kamiński', '505678901'),
('Magdalena', 'Lewandowska', '606789012'),
('Tomasz', 'Zieliński', '507890123'),
('Agnieszka', 'Szymańska', '708901234'),
('Krzysztof', 'Woźniak', '609012345'),
('Ewa', 'Dąbrowska', '510123456');

INSERT INTO Pracownicy (imie, nazwisko, telefon, email, miejsce_zamieszkania, rola, placa) VALUES
('Marek', 'Kaczmarek', '601111222', 'm.kaczmarek@warsztat.pl', 'Gdańsk', 'Kierownik serwisu', 8500.00),
('Łukasz', 'Mazur', '602222333', 'l.mazur@warsztat.pl', 'Sopot', 'Mechanik główny', 6500.00),
('Robert', 'Krawczyk', '603333444', 'r.krawczyk@warsztat.pl', 'Gdynia', 'Elektromechanik', 6800.00),
('Damian', 'Piotrowski', '604444555', 'd.piotrowski@warsztat.pl', 'Gdańsk', 'Mechanik', 5400.00),
('Mateusz', 'Grabowski', '605555666', 'm.grabowski@warsztat.pl', 'Pruszcz Gdański', 'Pomocnik mechanika', 4300.00),
('Paweł', 'Pawlak', '606666777', 'p.pawlak@warsztat.pl', 'Gdynia', 'Diagnosta', 6200.00),
('Kamil', 'Michalski', '607777888', 'k.michalski@warsztat.pl', 'Gdańsk', 'Mechanik', 5500.00),
('Jakub', 'Nowicki', '608888999', 'j.nowicki@warsztat.pl', 'Rumia', 'Wulkanizator', 4800.00),
('Grzegorz', 'Adamczyk', '609999000', 'g.adamczyk@warsztat.pl', 'Gdańsk', 'Doradca serwisowy', 5900.00),
('Marcin', 'Dudek', '610000111', 'm.dudek@warsztat.pl', 'Gdynia', 'Magazynier', 4600.00);

INSERT INTO Samochody (klient_id, rejestracja, marka, model, przyjety_dnia) VALUES
(1, 'GD1234A', 'Volkswagen', 'Golf VII', '2026-10-01 08:30:00'),
(2, 'GD5678B', 'Toyota', 'Corolla', '2026-10-02 09:15:00'),
(3, 'GA9012C', 'Skoda', 'Octavia III', '2026-10-03 10:00:00'),
(4, 'GSP345D', 'Ford', 'Focus Mk3', '2026-10-04 11:30:00'),
(5, 'GD6789E', 'BMW', 'Seria 3 E90', '2026-10-05 08:00:00'),
(6, 'GA1234F', 'Audi', 'A4 B8', '2026-10-06 13:45:00'),
(7, 'GD4321G', 'Opel', 'Astra J', '2026-10-07 14:20:00'),
(8, 'GKA987H', 'Renault', 'Megane IV', '2026-10-08 09:00:00'),
(9, 'GD7654J', 'Hyundai', 'i30', '2026-10-09 15:10:00'),
(10, 'GA5432K', 'Kia', 'Ceed II', '2026-10-10 11:00:00');

INSERT INTO Magazyn (nazwa, model, ilosc) VALUES
('Klocki hamulcowe przód', 'Bosch', 15),
('Tarcze hamulcowe przód', 'Brembo', 8),
('Filtr oleju', 'Filter x', 25),
('Olej silnikowy', 'Castrol', 12),
('Amortyzator przód', 'Amo 123', 6),
('Końcówka drążka', 'Końcówka 01', 14),
('Świeca zapłonowa', 'NGK', 40),
('Akumulator 74Ah', 'Varta', 5),
('Pasek klinowy', 'Continental', 18),
('Zestaw rozrządu', 'ROZ 321', 4);

INSERT INTO Problem (samochody_id, czesci_id, pracownik_id, opis) VALUES
(1, 1, 2, 'Pisk przy hamowaniu z przedniej osi, zużyte klocki'),
(2, 3, 4, 'Okresowy przegląd olejowy z wymianą filtra'),
(3, 5, 2, 'Stuki w przednim zawieszeniu na nierównościach'),
(4, 7, 3, 'Nierówna praca silnika'),
(5, 8, 3, 'Trudności z rozruchem po nocy, słaby akumulator'),
(6, 10, 6, 'Wymiana kompletnego rozrządu według zaleceń producenta'),
(7, 2, 7, 'Bicie na kierownicy podczas hamowania'),
(8, 6, 4, 'Luz na lewym kole, ściąganie pojazdu w prawo'),
(9, 4, 7, 'Wymiana oleju oraz filtra oleju'),
(10, 9, 8, 'Piszczący pasek przy włączonej klimatyzacji');

INSERT INTO Platnosc (problem_id, kwota, data_platnosci, skonczona) VALUES
(1, 350.00, '2026-10-01 16:30:00', TRUE),
(2, 280.00, '2026-10-02 12:00:00', TRUE),
(3, 720.00, '2026-10-03 17:00:00', TRUE),
(4, 210.00, '2026-10-04 14:15:00', TRUE),
(5, 450.00, '2026-10-05 11:30:00', TRUE),
(6, 1250.00, '2026-10-06 18:00:00', FALSE),
(7, 560.00, '2026-10-07 16:45:00', TRUE),
(8, 190.00, '2026-10-08 12:30:00', TRUE),
(9, 290.00, '2026-10-09 17:30:00', FALSE),
(10, 160.00, '2026-10-10 13:00:00', TRUE);