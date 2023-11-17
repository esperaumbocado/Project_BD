PRAGMA foreign_keys = ON;
BEGIN TRANSACTION;
DROP TABLE IF EXISTS "Campeonato";
CREATE TABLE IF NOT EXISTS "Campeonato" (
	"nome"	TEXT PRIMARY KEY,
	"local"	TEXT NOT NULL,
	"premio" INTEGER NOT NULL
);
DROP TABLE IF EXISTS "Grupo";
CREATE TABLE IF NOT EXISTS "Grupo" (
	"letraDoGrupo"	TEXT PRIMARY KEY,
	"DataDeInicio"	INTEGER NOT NULL,
	"DataDoFim"	INTEGER NOT NULL,
	"Campeonato"	TEXT NOT NULL,
	FOREIGN KEY("Campeonato") REFERENCES "Campeonato"(nome)
);

DROP TABLE IF EXISTS "Equipa";
CREATE TABLE IF NOT EXISTS "Equipa" (
	"nome"	TEXT PRIMARY KEY,
	"vitorias"	INTEGER NOT NULL,
	"derrotas"	INTEGER NOT NULL,
	"classificação"	TEXT NOT NULL,
	"letraDoGrupo"	TEXT NOT NULL,
	"playoffsID"	INTEGER,
	"treinador"	TEXT NOT NULL,
	FOREIGN KEY("letraDoGrupo") REFERENCES "Grupo"(letraDoGrupo)
);
DROP TABLE IF EXISTS "ClassificaçãoPremio";
CREATE TABLE IF NOT EXISTS "ClassificaçãoPremio" (
	"classificaçãoID"	TEXT PRIMARY KEY,
	"classificação"	TEXT NOT NULL,
	"premioArrecadado"	INTEGER NOT NULL,
	"Campeonato"	TEXT NOT NULL,
	FOREIGN KEY("Campeonato") REFERENCES "Campeonato"(nome)
);
DROP TABLE IF EXISTS "TreinadorDaEquipa";
CREATE TABLE IF NOT EXISTS "TreinadorDaEquipa" (
	"treinadorID"	INTEGER PRIMARY KEY,
	"nome"	TEXT NOT NULL,
	"birthday"	INTEGER NOT NULL
);
DROP TABLE IF EXISTS "Jogador";
CREATE TABLE IF NOT EXISTS "Jogador" (
	"jogadorID"	INTEGER PRIMARY KEY,
	"nome"	TEXT NOT NULL,
	"birthday"	INTEGER NOT NULL,
	"mortes"	INTEGER NOT NULL,
	"abates"	INTEGER NOT NULL,
	"assistências"	INTEGER NOT NULL,
	"danoMedioCausado"	INTEGER NOT NULL,
	"Equipa"	INTEGER NOT NULL,
	FOREIGN KEY("Equipa") REFERENCES "Equipa"(nome)
);
DROP TABLE IF EXISTS "EstatisticasEquipaGrupo";
CREATE TABLE IF NOT EXISTS "EstatisticasEquipaGrupo" (
	"Equipa"	TEXT PRIMARY KEY,
	"letraDoGrupo"	TEXT NOT NULL,
	"vitorias"	INTEGER NOT NULL,
	"derrotas"	INTEGER NOT NULL,
	"diferençaDeRondas"	INTEGER NOT NULL,
	FOREIGN KEY("Equipa") REFERENCES "Equipa",
	FOREIGN KEY("letraDoGrupo") REFERENCES "Grupo"(letraDoGrupo)
);
DROP TABLE IF EXISTS "Playoffs";
CREATE TABLE IF NOT EXISTS "Playoffs" (
	"playoffsID"	INTEGER PRIMARY KEY,
	"DataDeInicio"	INTEGER NOT NULL,
	"DataDeFim"	INTEGER NOT NULL,
	"Campeonato"	INTEGER NOT NULL,
	FOREIGN KEY("Campeonato") REFERENCES "Campeonato"(nome)
);
DROP TABLE IF EXISTS "FaseDePlayoffs";
CREATE TABLE IF NOT EXISTS "FaseDePlayoffs" (
	"tipoDeFase"	TEXT PRIMARY KEY,
	"percentagemPremio"	INTEGER NOT NULL,
	"DataDeInicio"	INTEGER NOT NULL,
	"DataDeFim"	INTEGER NOT NULL,
	"Playoffs"	INTEGER NOT NULL,
	FOREIGN KEY("Playoffs") REFERENCES "Playoffs"(playoffsID)
);
DROP TABLE IF EXISTS "Série";
CREATE TABLE IF NOT EXISTS "Série" (
	"matchID"	INTEGER PRIMARY KEY,
	"nomeEquipa1"	TEXT NOT NULL,
	"nomeEquipa2"	TEXT NOT NULL,
	"jogosEquipa1"	INTEGER NOT NULL,
	"jogosEquipa2"	INTEGER NOT NULL,
	"Grupo"	TEXT,
	"FaseDePlayoffs"	TEXT,
	FOREIGN KEY("Grupo") REFERENCES "Grupo"(letraDoGrupo),
	FOREIGN KEY("nomeEquipa2") REFERENCES "Equipa"(nome),
	FOREIGN KEY("nomeEquipa1") REFERENCES "Equipa"(nome),
	FOREIGN KEY("FaseDePlayoffs") REFERENCES "FaseDePlayoffs"(tipoDeFase)
);
DROP TABLE IF EXISTS "Jogo";
CREATE TABLE IF NOT EXISTS "Jogo" (
	"jogoID"	INTEGER PRIMARY KEY,
	"rondasEquipa1"	INTEGER NOT NULL,
	"rondasEquipa2"	INTEGER NOT NULL,
	"mapa"	TEXT NOT NULL,
	"Série"	INTEGER NOT NULL,
	FOREIGN KEY("Série") REFERENCES "Série"(matchID)
);
DROP TABLE IF EXISTS "Ronda";
CREATE TABLE IF NOT EXISTS "Ronda" (
	"rondaID"	INTEGER PRIMARY KEY,
	"numeroDeRonda"	INTEGER NOT NULL,
	"vencedorDaRonda"	INTEGER NOT NULL,
	"Jogo"	INTEGER NOT NULL,
	FOREIGN KEY("vencedorDaRonda") REFERENCES "Equipa"(nome)
);
DROP TABLE IF EXISTS "Evento";
CREATE TABLE IF NOT EXISTS "Evento" (
	"eventoID"	INTEGER PRIMARY KEY,
	"ronda"	INTEGER NOT NULL,
	FOREIGN KEY("ronda") REFERENCES "Ronda"
);
DROP TABLE IF EXISTS "Assistência";
CREATE TABLE IF NOT EXISTS "Assistência" (
	"eventoID"	INTEGER PRIMARY KEY,
	"JogadorQueAssistiu"	INTEGER NOT NULL,
	FOREIGN KEY("eventoID") REFERENCES "Evento",
	FOREIGN KEY("JogadorQueAssistiu") REFERENCES "Jogador"(jogadorID)
);
DROP TABLE IF EXISTS "MorteAbate";
CREATE TABLE IF NOT EXISTS "MorteAbate" (
	"eventoID"	INTEGER PRIMARY KEY,
	"jogadorMorto"	INTEGER NOT NULL,
	"jogadorQueMatou"	INTEGER NOT NULL,
	FOREIGN KEY("jogadorQueMatou") REFERENCES "Jogador"(jogadorID),
	FOREIGN KEY("jogadorMorto") REFERENCES "Jogador"(jogadorID)
);
DROP TABLE IF EXISTS "Dano";
CREATE TABLE IF NOT EXISTS "Dano" (
	"eventoID"	INTEGER PRIMARY KEY,
	"dano"	INTEGER NOT NULL,
	"jogadorQueCausouDano"	INTEGER NOT NULL,
	FOREIGN KEY("jogadorQueCausouDano") REFERENCES "Jogador"(jogadorID)
);
COMMIT;
