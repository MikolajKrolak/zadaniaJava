ALTER TABLE Samochody ADD CONSTRAINT fk_samochody_klient FOREIGN KEY (klient_id) REFERENCES Klienci(id) ON DELETE RESTRICT ON UPDATE CASCADE;


ALTER TABLE Problem
ADD CONSTRAINT fk_problem_samochody
FOREIGN KEY (samochody_id)
REFERENCES Samochody(samochody_id)
ON DELETE CASCADE
ON UPDATE CASCADE;


ALTER TABLE Problem
ADD CONSTRAINT fk_problem_pracownicy
FOREIGN KEY (pracownik_id)
REFERENCES Pracownicy(pracownik_id)
ON DELETE SET NULL
ON UPDATE CASCADE;


ALTER TABLE Problem
ADD CONSTRAINT fk_problem_czesci
FOREIGN KEY (czesci_id)
REFERENCES Magazyn(czesci_id)
ON DELETE SET NULL
ON UPDATE CASCADE;


ALTER TABLE Platnosc
ADD CONSTRAINT fk_platnosc_problem
FOREIGN KEY (problem_id)
REFERENCES Problem(problem_id)
ON DELETE RESTRICT
ON UPDATE CASCADE;
ALTER TABLE Platnosc
ADD CONSTRAINT uq_platnosc_problem
UNIQUE (problem_id);
