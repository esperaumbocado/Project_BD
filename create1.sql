BEGIN TRANSACTION;
DROP TABLE IF EXISTS "Campeonato";
CREATE TABLE IF NOT EXISTS "Campeonato" (
	"nome"	TEXT NOT NULL,
	"local"	TEXT NOT NULL,
	"premio"	INTEGER NOT NULL,
	PRIMARY KEY("nome")
);
DROP TABLE IF EXISTS "Grupo";
CREATE TABLE IF NOT EXISTS "Grupo" (
	"letraDoGrupo"	INTEGER NOT NULL,
	"DataDeInicio"	INTEGER NOT NULL,
	"DataDoFim"	INTEGER NOT NULL,
	"Campeonato"	TEXT NOT NULL,
	FOREIGN KEY("Campeonato") REFERENCES "Campeonato",
	PRIMARY KEY("letraDoGrupo")
);
DROP TABLE IF EXISTS "Equipa";
CREATE TABLE IF NOT EXISTS "Equipa" (
	"nome"	TEXT NOT NULL,
	"vitorias"	INTEGER NOT NULL,
	"derrotas"	INTEGER NOT NULL,
	"classificação"	TEXT NOT NULL,
	"letraDoGrupo"	TEXT NOT NULL,
	"playoffsID"	INTEGER,
	"treinador"	TEXT NOT NULL,
	FOREIGN KEY("letraDoGrupo") REFERENCES "Grupo",
	PRIMARY KEY("nome")
);
DROP TABLE IF EXISTS "ClassificaçãoPremio";
CREATE TABLE IF NOT EXISTS "ClassificaçãoPremio" (
	"classificaçãoID"	TEXT NOT NULL,
	"classificação"	TEXT NOT NULL,
	"premioArrecadado"	INTEGER NOT NULL,
	"Campeonato"	TEXT NOT NULL,
	FOREIGN KEY("Campeonato") REFERENCES "Campeonato",
	PRIMARY KEY("classificaçãoID")
);
DROP TABLE IF EXISTS "TreinadorDaEquipa";
CREATE TABLE IF NOT EXISTS "TreinadorDaEquipa" (
	"treinadorID"	INTEGER NOT NULL,
	"nome"	TEXT NOT NULL,
	"birthday"	INTEGER NOT NULL,
	PRIMARY KEY("treinadorID")
);
DROP TABLE IF EXISTS "Jogador";
CREATE TABLE IF NOT EXISTS "Jogador" (
	"jogadorID"	INTEGER NOT NULL,
	"nome"	TEXT NOT NULL,
	"birthday"	INTEGER NOT NULL,
	"mortes"	INTEGER NOT NULL,
	"abates"	INTEGER NOT NULL,
	"assistências"	INTEGER NOT NULL,
	"danoMedioCausado"	INTEGER NOT NULL,
	"Equipa"	INTEGER NOT NULL,
	FOREIGN KEY("Equipa") REFERENCES "Equipa",
	PRIMARY KEY("jogadorID")
);
DROP TABLE IF EXISTS "EstatisticasEquipaGrupo";
CREATE TABLE IF NOT EXISTS "EstatisticasEquipaGrupo" (
	"Equipa"	TEXT NOT NULL,
	"letraDoGrupo"	TEXT NOT NULL,
	"vitorias"	INTEGER,
	"derrotas"	INTEGER,
	"diferençaDeRondas"	INTEGER,
	PRIMARY KEY("Equipa"),
	FOREIGN KEY("Equipa") REFERENCES "Equipa",
	FOREIGN KEY("letraDoGrupo") REFERENCES "Grupo"
);
DROP TABLE IF EXISTS "Playoffs";
CREATE TABLE IF NOT EXISTS "Playoffs" (
	"playoffsID"	INTEGER NOT NULL,
	"DataDeInicio"	INTEGER NOT NULL,
	"DataDeFim"	INTEGER NOT NULL,
	"Campeonato"	INTEGER NOT NULL,
	PRIMARY KEY("playoffsID"),
	FOREIGN KEY("Campeonato") REFERENCES "Campeonato"
);
DROP TABLE IF EXISTS "FaseDePlayoffs";
CREATE TABLE IF NOT EXISTS "FaseDePlayoffs" (
	"tipoDeFase"	TEXT NOT NULL,
	"percentagemPremio"	INTEGER NOT NULL,
	"DataDeInicio"	INTEGER NOT NULL,
	"DataDeFim"	INTEGER NOT NULL,
	"Playoffs"	INTEGER NOT NULL,
	FOREIGN KEY("Playoffs") REFERENCES "Playoffs",
	PRIMARY KEY("tipoDeFase")
);
DROP TABLE IF EXISTS "Série";
CREATE TABLE IF NOT EXISTS "Série" (
	"matchID"	INTEGER NOT NULL,
	"nomeEquipa1"	TEXT NOT NULL,
	"nomeEquipa2"	TEXT NOT NULL,
	"jogosEquipa1"	INTEGER NOT NULL,
	"jogosEquipa2"	INTEGER NOT NULL,
	"Grupo"	TEXT,
	"FaseDePlayoffs"	TEXT,
	FOREIGN KEY("Grupo") REFERENCES "Grupo",
	FOREIGN KEY("nomeEquipa2") REFERENCES "Equipa",
	PRIMARY KEY("matchID"),
	FOREIGN KEY("nomeEquipa1") REFERENCES "Equipa",
	FOREIGN KEY("FaseDePlayoffs") REFERENCES "FaseDePlayoffs"
);
DROP TABLE IF EXISTS "Jogo";
CREATE TABLE IF NOT EXISTS "Jogo" (
	"jogoID"	INTEGER NOT NULL,
	"rondasEquipa1"	INTEGER NOT NULL,
	"rondasEquipa2"	INTEGER NOT NULL,
	"mapa"	TEXT NOT NULL,
	"Série"	INTEGER NOT NULL,
	PRIMARY KEY("jogoID"),
	FOREIGN KEY("Série") REFERENCES "Série"
);
DROP TABLE IF EXISTS "Ronda";
CREATE TABLE IF NOT EXISTS "Ronda" (
	"rondaID"	INTEGER,
	"numeroDeRonda"	INTEGER,
	"vencedorDaRonda"	INTEGER,
	"Jogo"	INTEGER,
	PRIMARY KEY("rondaID"),
	FOREIGN KEY("vencedorDaRonda") REFERENCES "Equipa"
);
DROP TABLE IF EXISTS "Evento";
CREATE TABLE IF NOT EXISTS "Evento" (
	"eventoID"	INTEGER NOT NULL,
	"ronda"	INTEGER NOT NULL,
	FOREIGN KEY("ronda") REFERENCES "Ronda",
	PRIMARY KEY("eventoID")
);
DROP TABLE IF EXISTS "Assistência";
CREATE TABLE IF NOT EXISTS "Assistência" (
	"eventoID"	INTEGER NOT NULL,
	"JogadorQueAssistiu"	INTEGER NOT NULL,
	FOREIGN KEY("eventoID") REFERENCES "Evento",
	PRIMARY KEY("eventoID"),
	FOREIGN KEY("JogadorQueAssistiu") REFERENCES "Jogador"
);
DROP TABLE IF EXISTS "MorteAbate";
CREATE TABLE IF NOT EXISTS "MorteAbate" (
	"eventoID"	INTEGER NOT NULL,
	"jogadorMorto"	INTEGER NOT NULL,
	"jogadorQueMatou"	INTEGER NOT NULL,
	PRIMARY KEY("eventoID"),
	FOREIGN KEY("jogadorQueMatou") REFERENCES "Jogador",
	FOREIGN KEY("jogadorMorto") REFERENCES "Jogador"
);
DROP TABLE IF EXISTS "Dano";
CREATE TABLE IF NOT EXISTS "Dano" (
	"eventoID"	INTEGER NOT NULL,
	"dano"	INTEGER NOT NULL,
	"jogadorQueCausouDano"	INTEGER NOT NULL,
	FOREIGN KEY("jogadorQueCausouDano") REFERENCES "Jogador",
	PRIMARY KEY("eventoID")
);
COMMIT;
