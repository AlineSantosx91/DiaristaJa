CREATE TABLE User (
	Id INT AUTO_INCREMENT NOT NULL,
	UUID VARCHAR(255),
	Created TIMESTAMP,
	Active BOOLEAN,
	Email VARCHAR(255) NOT NULL UNIQUE,
	Password VARCHAR(255),
	Last_Login TIMESTAMP,
	Modified TIMESTAMP,
	Token VARCHAR(255),
	PRIMARY KEY (Id)
);

CREATE TABLE Diarista (
	Id INT AUTO_INCREMENT NOT NULL,
	UUID VARCHAR(255),
	Created TIMESTAMP,
	Active BOOLEAN,
	Nome VARCHAR(255),
	Documento VARCHAR(255) NOT NULL UNIQUE,
	Data_Nascimento TIMESTAMP,
	Id_Endereco INT,
	Valor_Minimo_Diaria FLOAT,
	Valor_Maximo_Diaria FLOAT,
	PRIMARY KEY (Id)
);

CREATE TABLE Endereco (
	Id INT AUTO_INCREMENT NOT NULL,
	UUID VARCHAR(255),
	Created TIMESTAMP,
	Active BOOLEAN,
	Endereco VARCHAR(255),
	Referencia VARCHAR(255),
	Numero VARCHAR(255),
	Cidade VARCHAR(255),
	Estado VARCHAR(255),
	Cep VARCHAR(255),
	Latitude VARCHAR(255),
	Longitude VARCHAR(255),
	PRIMARY KEY (Id)
);

CREATE TABLE Restricao (
	Id INT AUTO_INCREMENT NOT NULL,
	UUID VARCHAR(255),
	Created TIMESTAMP,
	Active BOOLEAN,
	Descricao VARCHAR(255),
	PRIMARY KEY (Id)
);

CREATE TABLE Telefone (
	Id INT AUTO_INCREMENT NOT NULL,
	UUID VARCHAR(255),
	Created TIMESTAMP,
	Active BOOLEAN,
	Ddd VARCHAR(255),
	Numero VARCHAR(255),
	Diarista_Id INT,
	PRIMARY KEY (Id)
);

CREATE TABLE Diaria (
	Id INT AUTO_INCREMENT NOT NULL,
	UUID VARCHAR(255),
	Created TIMESTAMP,
	Active BOOLEAN,
	Data_Diaria TIMESTAMP,
	Endereco_Id INT,
	Valor FLOAT,
	Documento_Cliente VARCHAR(255),
	Documento_Diarista VARCHAR(255),
	Status VARCHAR(255),
	PRIMARY KEY (Id)
);


