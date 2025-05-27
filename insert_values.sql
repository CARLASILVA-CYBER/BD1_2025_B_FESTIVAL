INSERT INTO Realizador VALUES (1, 'João Costa', 'Portugal', 'joao@email.pt');
INSERT INTO Realizador VALUES (2, 'Maria Silva', 'Brasil', 'maria@email.pt');

INSERT INTO Sala VALUES (1, 'Sala Lisboa', 250, 'Lisboa');
INSERT INTO Sala VALUES (2, 'Sala Porto', 300, 'Porto');

INSERT INTO Festival VALUES (101, 'FestCine Lisboa', 'Lisboa', '2025-10-01', '2025-10-07', 1, 1);
INSERT INTO Festival VALUES (102, 'CineSul', 'Faro', '2025-09-15', '2025-09-20', 2, 2);

INSERT INTO Filme VALUES (11, 'O Silêncio', 120, 2023, 1);
INSERT INTO Filme VALUES (12, 'A Chuva e o Mar', 95, 2024, 2);

INSERT INTO Patrocinio VALUES (501, 20000, 'Fundação Arte', '2025-08-01', 101);
INSERT INTO Patrocinio VALUES (502, 15000, 'Cultura XXI', '2025-08-10', 102);

INSERT INTO Participacao VALUES (101, 11);
INSERT INTO Participacao VALUES (101, 12);
INSERT INTO Participacao VALUES (102, 12);

INSERT INTO Premiacao VALUES (101, 11, 'Melhor Filme', 5000);
INSERT INTO Premiacao VALUES (101, 12, 'Melhor Realização', 3000);
INSERT INTO Premiacao VALUES (102, 12, 'Melhor Argumento', 2500);
