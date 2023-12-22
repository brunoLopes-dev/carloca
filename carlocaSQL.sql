CREATE TABLE `Montadora` (
  `MontadoraID` INT PRIMARY KEY,
  `Nome` VARCHAR(50) NOT NULL
);

CREATE TABLE `Cor` (
  `CorID` INT PRIMARY KEY,
  `Nome` VARCHAR(20) NOT NULL
);

CREATE TABLE `Categoria` (
  `CategoriaID` INT PRIMARY KEY,
  `Nome` VARCHAR(50) NOT NULL
);

CREATE TABLE `Carro` (
  `CarroID` INT PRIMARY KEY,
  `Modelo` VARCHAR(50) NOT NULL,
  `MontadoraID` INT,
  `CorID` INT,
  `CategoriaID` INT,
  `Disponivel` BOOLEAN DEFAULT true,
  `QuilometragemAtual` DECIMAL(10, 2) DEFAULT 0
);

CREATE TABLE `Cliente` (
  `ClienteID` INT PRIMARY KEY,
  `Nome` VARCHAR(50) NOT NULL
);

CREATE TABLE `Locacao` (
  `LocacaoID` INT PRIMARY KEY,
  `ClienteID` INT,
  `CarroID` INT,
  `DataLocacao` DATE NOT NULL,
  `DataDevolucao` DATE,
  `QuilometragemInicial` DECIMAL(10, 2),
  `QuilometragemFinal` DECIMAL(10, 2),
  `LocalLocacao` VARCHAR(100) NOT NULL,
  `LocalDevolucao` VARCHAR(100) NOT NULL
);

CREATE TABLE `HistoricoLocacao` (
  `HistoricoID` INT PRIMARY KEY,
  `LocacaoID` INT
);

CREATE TABLE `Unidade` (
  `UnidadeID` INT PRIMARY KEY,
  `Nome` VARCHAR(100) NOT NULL
);

CREATE TABLE `LocalizacaoCarro` (
  `LocalizacaoID` INT PRIMARY KEY,
  `CarroID` INT,
  `UnidadeID` INT,
  `DataLocacao` DATE NOT NULL,
  `DataDevolucao` DATE
);

ALTER TABLE `Carro` ADD FOREIGN KEY (`MontadoraID`) REFERENCES `Montadora` (`MontadoraID`);

ALTER TABLE `Carro` ADD FOREIGN KEY (`CorID`) REFERENCES `Cor` (`CorID`);

ALTER TABLE `Carro` ADD FOREIGN KEY (`CategoriaID`) REFERENCES `Categoria` (`CategoriaID`);

ALTER TABLE `Locacao` ADD FOREIGN KEY (`ClienteID`) REFERENCES `Cliente` (`ClienteID`);

ALTER TABLE `Locacao` ADD FOREIGN KEY (`CarroID`) REFERENCES `Carro` (`CarroID`);

ALTER TABLE `HistoricoLocacao` ADD FOREIGN KEY (`LocacaoID`) REFERENCES `Locacao` (`LocacaoID`);

ALTER TABLE `LocalizacaoCarro` ADD FOREIGN KEY (`CarroID`) REFERENCES `Carro` (`CarroID`);

ALTER TABLE `LocalizacaoCarro` ADD FOREIGN KEY (`UnidadeID`) REFERENCES `Unidade` (`UnidadeID`);
