DROP DATABASE `SIS2402` ;

CREATE SCHEMA `SIS2402` ;

CREATE TABLE `SIS2402`.`CLIENTES` (
	`ID_CLIENT` INT NOT NULL AUTO_INCREMENT,
	`NOME` VARCHAR(50) NOT NULL,
    `EMAIL` VARCHAR(30) NOT NULL,
    `DATANASCIMENTO` DATE NOT NULL,
    `SEXO` CHAR(1) NOT NULL,
    `CEP` CHAR(9) NOT NULL,
    `RUA` VARCHAR(20) NOT NULL,
    `NUMERO` INT NOT NULL,
    `BAIRRO` VARCHAR(20) NOT NULL,
    `CIDADE` VARCHAR(30) NOT NULL,
    `UF` CHAR(2) NOT NULL,
    `PAIS` VARCHAR(20) NOT NULL,

    PRIMARY KEY(`ID_CLIENT`)
);