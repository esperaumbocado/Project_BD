-- Campeonato
INSERT INTO Campeonato (nome, local, premio) VALUES ('ESL Katowice 2019', 'Katowice', 1000000);

--Grupos 
INSERT INTO Grupo (letraDoGrupo, DataDeInicio, DataDoFim, Campeonato) VALUES ('A', '2023-01-01', '2023-02-01', 'ESL Katowice');
INSERT INTO Grupo (letraDoGrupo, DataDeInicio, DataDoFim, Campeonato) VALUES ('B', '2023-01-01', '2023-02-01', 'ESL Katowice');
INSERT INTO Grupo (letraDoGrupo, DataDeInicio, DataDoFim, Campeonato) VALUES ('C', '2023-01-01', '2023-02-01', 'ESL Katowice');
INSERT INTO Grupo (letraDoGrupo, DataDeInicio, DataDoFim, Campeonato) VALUES ('D', '2023-01-01', '2023-02-01', 'ESL Katowice');

--Playoffs
INSERT INTO Playoffs (playoffsID, DataDeInicio, DataDeFim, Campeonato) VALUES (1, '2023-02-10', '2023-03-01', 'ESL Katowice');

--FaseDePlayoffs
INSERT INTO FaseDePlayoffs (tipoDeFase, percentagemPremio, DataDeInicio, DataDeFim, Playoffs) VALUES ('Quarter-Finals', 10, '2023-02-22', '2023-02-24', 1);
INSERT INTO FaseDePlayoffs (tipoDeFase, percentagemPremio, DataDeInicio, DataDeFim, Playoffs) VALUES ('Semi-Finals', 30, '2023-02-25', '2023-02-28', 1);
INSERT INTO FaseDePlayoffs (tipoDeFase, percentagemPremio, DataDeInicio, DataDeFim, Playoffs) VALUES ('Finals', 60, '2023-03-01', '2023-03-01', 1);

--Equipa Astralis
INSERT INTO Equipa (nome, vitorias, derrotas, classificação, letraDoGrupo, treinador) VALUES ('Astralis', 8, 1, '1', 'A', 'zonic');
INSERT INTO TreinadorDaEquipa (treinadorID, nome, birthday) VALUES (1, 'zonic', '1987-06-27');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (1, 'dupreeh', '1993-03-26', 12, 18, 22, 520, 'Astralis');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (2, 'xyp9x', '1995-09-11', 10, 21, 19, 510, 'Astralis');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (3, 'device', '1995-03-08', 16, 14, 18, 515, 'Astralis');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (4, 'gla1ve', '1995-07-07', 11, 19, 20, 540, 'Astralis');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (5, 'magisk', '1998-03-05', 9, 16, 21, 525, 'Astralis');

--Equipa Liquid
INSERT INTO Equipa (nome, vitorias, derrotas, classificação, letraDoGrupo, treinador) VALUES ('Liquid', 6, 2, '2', 'A', 'adreN');
INSERT INTO TreinadorDaEquipa (treinadorID, nome, birthday) VALUES (2, 'adreN', '1990-06-26');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (6, 'nitr0', '1995-02-28', 12, 17, 22, 520, 'Liquid');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (7, 'elige', '1995-02-29', 11, 21, 23, 530, 'Liquid');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (8, 'twistzz', '1997-06-28', 18, 16, 21, 510, 'Liquid');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (9, 'NAF', '1995-02-29', 11, 22, 20, 560, 'Liquid');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (10, 'stewie2k', '1992-02-28', 12, 16, 21, 530, 'Liquid');

--Equipa NAVI
INSERT INTO Equipa (nome, vitorias, derrotas, classificação, letraDoGrupo, treinador) VALUES ('NAVI', 6, 2, '1', 'A', 'zeus');
INSERT INTO TreinadorDaEquipa (treinadorID, nome, birthday) VALUES (3, 'zeus', '1987-10-08');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (11, 's1mple', '1997-10-02', 8, 25, 15, 600, 'NAVI');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (12, 'electronic', '1998-12-15', 10, 20, 18, 550, 'NAVI');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (13, 'boombl4', '1998-12-20', 12, 18, 20, 500, 'NAVI');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (14, 'perfecto', '2000-08-20', 15, 15, 16, 480, 'NAVI');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (15, 'B1t', '2003-06-25', 5, 10, 10, 400, 'NAVI');

--Equipa AVANGAR
INSERT INTO Equipa (nome, vitorias, derrotas, classificação, letraDoGrupo, treinador) VALUES ('AVANGAR', 5, 3, '3', 'A', 'kade0');
INSERT INTO TreinadorDaEquipa (treinadorID, nome, birthday) VALUES (4, 'kade0', '1985-04-18');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (16, 'buster', '1996-06-02', 12, 18, 20, 500, 'AVANGAR');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (17, 'qikert', '1998-08-15', 11, 20, 17, 480, 'AVANGAR');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (18, 'Jame', '1997-02-19', 10, 22, 15, 550, 'AVANGAR');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (19, 'SANJI', '1999-11-05', 14, 16, 18, 450, 'AVANGAR');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (20, 'AdreN', '1990-03-01', 13, 17, 16, 520, 'AVANGAR');


--Equipa MIBR
INSERT INTO Equipa (nome, vitorias, derrotas, classificação, letraDoGrupo, treinador)VALUES ('MIBR', 4, 4, '4', 'B', 'zews');
INSERT INTO TreinadorDaEquipa (treinadorID, nome, birthday) VALUES (5, 'zews', '1991-03-17');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (21, 'FalleN', '1991-05-30', 14, 20, 18, 540, 'MIBR');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (22, 'fer', '1991-10-30', 15, 18, 17, 520, 'MIBR');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (23, 'TACO', '1995-03-27', 12, 22, 16, 480, 'MIBR');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (24, 'kNgV-', '1993-10-15', 18, 15, 19, 550, 'MIBR');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (25, 'Lucas1', '1995-07-07', 16, 18, 18, 510, 'MIBR');


--Equipa Renegades
INSERT INTO Equipa (nome, vitorias, derrotas, classificação, letraDoGrupo, treinador) VALUES ('Renegades', 6, 2, '5', 'B', 'kassad');
INSERT INTO TreinadorDaEquipa (treinadorID, nome, birthday) VALUES (6, 'kassad', '1989-09-29');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (26, 'jks', '1995-10-22', 12, 20, 15, 520, 'Renegades');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (27, 'AZR', '1993-03-09', 14, 18, 16, 500, 'Renegades');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (28, 'jkaem', '1993-06-27', 16, 16, 17, 510, 'Renegades');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (29, 'Gratisfaction', '1992-01-01', 18, 14, 19, 530, 'Renegades');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (30, 'Liazz', '1997-10-05', 15, 16, 18, 490, 'Renegades');

--Equipa NIP
INSERT INTO Equipa (nome, vitorias, derrotas, classificação, letraDoGrupo, treinador) VALUES ('NIP', 5, 3, '6', 'B', 'pita');
INSERT INTO TreinadorDaEquipa (treinadorID, nome, birthday) VALUES (7, 'pita', '1990-12-20');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (31, 'f0rest', '1988-06-10', 10, 22, 14, 550, 'NIP');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (32, 'GeT_RiGhT', '1990-06-29', 14, 20, 15, 520, 'NIP');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (33, 'Lekr0', '1993-07-17', 12, 18, 16, 510, 'NIP');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (34, 'REZ', '1998-09-01', 16, 16, 17, 500, 'NIP');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (35, 'dennis', '1990-08-27', 18, 14, 18, 490, 'NIP');


--Equipa Faze
INSERT INTO Equipa (nome, vitorias, derrotas, classificação, letraDoGrupo, treinador) VALUES ('FaZe', 6, 2, '7', 'B', 'YNk');
INSERT INTO TreinadorDaEquipa (treinadorID, nome, birthday) VALUES (8, 'YNk', '1992-09-08');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (36, 'NiKo', '1997-02-16', 14, 20, 17, 540, 'FaZe');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (37, 'GuardiaN', '1991-10-30', 16, 18, 15, 530, 'FaZe');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (38, 'rain', '1994-08-27', 12, 20, 16, 510, 'FaZe');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (39, 'olofmeister', '1992-01-31', 18, 16, 17, 520, 'FaZe');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (40, 'AdreN', '1990-03-01', 15, 17, 18, 500, 'FaZe');

--Equipa Cloud9
INSERT INTO Equipa (nome, vitorias, derrotas, classificação, letraDoGrupo, treinador) VALUES ('Cloud9', 3, 5, '8', 'C', 'valens');
INSERT INTO TreinadorDaEquipa (treinadorID, nome, birthday) VALUES (9, 'valens', '1990-06-15');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (41, 'autimatic', '1996-09-29', 15, 18, 16, 520, 'Cloud9');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (42, 'Golden', '1994-06-20', 12, 20, 15, 510, 'Cloud9');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (43, 'flusha', '1993-08-12', 16, 17, 16, 500, 'Cloud9');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (44, 'kioshima', '1993-02-26', 18, 15, 17, 490, 'Cloud9');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (45, 'RUSH', '1994-05-05', 14, 18, 16, 500, 'Cloud9');

--Equipa Vitality
INSERT INTO Equipa (nome, vitorias, derrotas, classificação, letraDoGrupo, treinador) VALUES ('Vitality', 7, 1, '9', 'C', 'XTQZZZ');
INSERT INTO TreinadorDaEquipa (treinadorID, nome, birthday) VALUES (10, 'XTQZZZ', '1985-12-25');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (46, 'ZywOo', '2000-11-09', 10, 25, 18, 560, 'Vitality');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (47, 'apEX', '1993-02-22', 14, 20, 16, 530, 'Vitality');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (48, 'NBK-', '1994-06-05', 16, 18, 15, 510, 'Vitality');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (49, 'RpK', '1989-07-06', 18, 16, 14, 500, 'Vitality');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (50, 'Alex', '1995-08-18', 12, 18, 17, 490, 'Vitality');

--Equipa Complexity
INSERT INTO Equipa (nome, vitorias, derrotas, classificação, letraDoGrupo, treinador) VALUES ('Complexity', 4, 4, '10', 'C', 'rambo');
INSERT INTO TreinadorDaEquipa (treinadorID, nome, birthday) VALUES (11, 'rambo', '1986-09-07');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (51, 'stanislaw', '1994-03-17', 15, 18, 17, 510, 'Complexity');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (52, 'dephh', '1992-07-07', 17, 16, 18, 500, 'Complexity');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (53, 'ShahZaM', '1993-05-07', 14, 20, 16, 490, 'Complexity');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (54, 'Rickeh', '1992-02-22', 16, 17, 17, 480, 'Complexity');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (55, 'n0thing', '1990-06-26', 18, 15, 16, 470, 'Complexity');

--Equipa Hellraisers
INSERT INTO Equipa (nome, vitorias, derrotas, classificação, letraDoGrupo, treinador) VALUES ('HellRaisers', 3, 5, '11', 'C', 'johnta');
INSERT INTO TreinadorDaEquipa (treinadorID, nome, birthday) VALUES (12, 'johnta', '1991-04-12');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (56, 'ANGE1', '1989-06-25', 16, 17, 16, 510, 'HellRaisers');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (57, 'oskar', '1991-12-15', 14, 19, 17, 520, 'HellRaisers');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (58, 'ISSAA', '1997-08-29', 17, 18, 16, 490, 'HellRaisers');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (59, 'woxic', '1998-09-02', 15, 20, 18, 500, 'HellRaisers');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (60, 'DeadFox', '1994-10-13', 18, 15, 16, 490, 'HellRaisers');

--Equipa G2
INSERT INTO Equipa (nome, vitorias, derrotas, classificação, letraDoGrupo, treinador) VALUES ('G2', 5, 3, '12', 'D', 'SmithZz');
INSERT INTO TreinadorDaEquipa (treinadorID, nome, birthday) VALUES (13, 'SmithZz', '1988-12-29');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (61, 'kennyS', '1995-05-19', 15, 22, 20, 550, 'G2');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (62, 'shox', '1992-05-27', 17, 20, 18, 530, 'G2');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (63, 'Lucky', '1999-12-29', 16, 18, 16, 510, 'G2');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (64, 'AmaNEk', '1995-12-06', 14, 19, 17, 520, 'G2');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (65, 'JACKZ', '1992-04-06', 18, 15, 16, 500, 'G2');


--Equipa NRG
INSERT INTO Equipa (nome, vitorias, derrotas, classificação, letraDoGrupo, treinador) VALUES ('NRG', 6, 2, '13', 'D', 'ImAPet');
INSERT INTO TreinadorDaEquipa (treinadorID, nome, birthday) VALUES (14, 'ImAPet', '1990-04-14');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (66, 'Brehze', '1997-04-22', 14, 21, 17, 540, 'NRG');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (67, 'Ethan', '2000-06-26', 16, 19, 16, 530, 'NRG');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (68, 'CeRq', '1999-09-06', 15, 20, 18, 520, 'NRG');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (69, 'tarik', '1996-02-19', 18, 16, 17, 510, 'NRG');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (70, 'stanislaw', '1994-08-17', 17, 18, 16, 500, 'NRG');

--Equipa BIG
INSERT INTO Equipa (nome, vitorias, derrotas, classificação, letraDoGrupo, treinador) VALUES ('BIG', 2, 6, '14', 'D', 'kakafu');
INSERT INTO TreinadorDaEquipa (treinadorID, nome, birthday) VALUES (15, 'kakafu', '1988-11-23');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (71, 'tabseN', '1995-02-22', 16, 17, 16, 510, 'BIG');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (72, 'tiziaN', '1996-07-30', 15, 18, 17, 520, 'BIG');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (73, 'XANTARES', '1995-08-07', 17, 19, 15, 530, 'BIG');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (74, 'gob b', '1987-01-01', 18, 15, 16, 490, 'BIG');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (75, 'nex', '1992-06-16', 17, 16, 17, 500, 'BIG');

--Equipa ENCE
INSERT INTO Equipa (nome, vitorias, derrotas, classificação, letraDoGrupo, treinador) VALUES ('ENCE', 8, 2, '1', 'D', 'natu');
INSERT INTO TreinadorDaEquipa (treinadorID, nome, birthday) VALUES (16, 'natu', '1985-07-22');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (76, 'allu', '1992-03-22', 150, 180, 90, 500, 'ENCE');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (77, 'Aleksib', '1997-06-30', 120, 200, 100, 520, 'ENCE');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (78, 'sergej', '2001-06-15', 140, 150, 110, 490, 'ENCE');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (79, 'Aerial', '1993-12-13', 110, 190, 80, 480, 'ENCE');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (80, 'xseveN', '1993-01-05', 130, 160, 95, 510, 'ENCE');




/*
-- Populating Campeonato table
INSERT INTO Campeonato (nome, local, premio) VALUES ('Liga A', 'Brazil', 100000);
INSERT INTO Campeonato (nome, local, premio) VALUES ('Championship B', 'USA', 75000);

-- Populating Grupo table
INSERT INTO Grupo (letraDoGrupo, DataDeInicio, DataDoFim, Campeonato) VALUES (1, '2023-01-01', '2023-02-01', 'Liga A');
INSERT INTO Grupo (letraDoGrupo, DataDeInicio, DataDoFim, Campeonato) VALUES (2, '2023-01-15', '2023-02-15', 'Championship B');

-- Populating Equipa table
INSERT INTO Equipa (nome, vitorias, derrotas, classificação, letraDoGrupo, treinador) VALUES ('Team A', 5, 2, 'First', 1, 'Coach 1');
INSERT INTO Equipa (nome, vitorias, derrotas, classificação, letraDoGrupo, treinador) VALUES ('Team B', 4, 3, 'Second', 1, 'Coach 2');

-- Populating TreinadorDaEquipa table
INSERT INTO TreinadorDaEquipa (treinadorID, nome, birthday) VALUES (1, 'Coach 1', '1980-05-15');
INSERT INTO TreinadorDaEquipa (treinadorID, nome, birthday) VALUES (2, 'Coach 2', '1975-10-22');

-- Populating Jogador table
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (1, 'Player 1', '1995-02-28', 10, 15, 20, 500, 'Team A');
INSERT INTO Jogador (jogadorID, nome, birthday, mortes, abates, assistências, danoMedioCausado, Equipa) VALUES (2, 'Player 2', '1990-07-12', 8, 18, 25, 600, 'Team B');

-- Populating EstatisticasEquipaGrupo table
INSERT INTO EstatisticasEquipaGrupo (Equipa, letraDoGrupo, vitorias, derrotas, diferençaDeRondas) VALUES ('Team A', 1, 5, 2, 20);
INSERT INTO EstatisticasEquipaGrupo (Equipa, letraDoGrupo, vitorias, derrotas, diferençaDeRondas) VALUES ('Team B', 1, 4, 3, 15);

-- Populating Playoffs table
INSERT INTO Playoffs (playoffsID, DataDeInicio, DataDeFim, Campeonato) VALUES (1, '2023-02-10', '2023-03-01', 'Liga A');
INSERT INTO Playoffs (playoffsID, DataDeInicio, DataDeFim, Campeonato) VALUES (2, '2023-02-20', '2023-03-15', 'Championship B');

-- Populating FaseDePlayoffs table
INSERT INTO FaseDePlayoffs (tipoDeFase, percentagemPremio, DataDeInicio, DataDeFim, Playoffs) VALUES ('Semi-Finals', 50, '2023-02-25', '2023-02-28', 1);
INSERT INTO FaseDePlayoffs (tipoDeFase, percentagemPremio, DataDeInicio, DataDeFim, Playoffs) VALUES ('Finals', 100, '2023-03-01', '2023-03-01', 1);

-- Populating Série table
INSERT INTO Série (matchID, nomeEquipa1, nomeEquipa2, jogosEquipa1, jogosEquipa2, Grupo, FaseDePlayoffs) VALUES (1, 'Team A', 'Team B', 2, 1, 1, NULL);
INSERT INTO Série (matchID, nomeEquipa1, nomeEquipa2, jogosEquipa1, jogosEquipa2, Grupo, FaseDePlayoffs) VALUES (2, 'Team B', 'Team A', 1, 2, NULL, 'Semi-Finals');

-- Populating Jogo table
INSERT INTO Jogo (jogoID, rondasEquipa1, rondasEquipa2, mapa, Série) VALUES (1, 13, 11, 'Map 1', 1);
INSERT INTO Jogo (jogoID, rondasEquipa1, rondasEquipa2, mapa, Série) VALUES (2, 9, 16, 'Map 2', 1);

-- Populating Ronda table
INSERT INTO Ronda (rondaID, numeroDeRonda, vencedorDaRonda, Jogo) VALUES (1, 1, 'Team A', 1);
INSERT INTO Ronda (rondaID, numeroDeRonda, vencedorDaRonda, Jogo) VALUES (2, 2, 'Team B', 2);

-- Populating Evento table
INSERT INTO Evento (eventoID, ronda) VALUES (1, 1);
INSERT INTO Evento (eventoID, ronda) VALUES (2, 2);

-- Populating Assistência table
INSERT INTO Assistência (eventoID, JogadorQueAssistiu) VALUES (1, 1);
INSERT INTO Assistência (eventoID, JogadorQueAssistiu) VALUES (2, 2);

-- Populating MorteAbate table
INSERT INTO MorteAbate (eventoID, jogadorMorto, jogadorQueMatou) VALUES (1, 2, 1);
INSERT INTO MorteAbate (eventoID, jogadorMorto, jogadorQueMatou) VALUES (2, 1, 2);

-- Populating Dano table
INSERT INTO Dano (eventoID, dano, jogadorQueCausouDano) VALUES (1, 300, 1);
INSERT INTO Dano (eventoID, dano, jogadorQueCausouDano) VALUES (2, 250, 2);

*/