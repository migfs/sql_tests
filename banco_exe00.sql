CREATE DATABASE banco_exe01;
USE banco_exe01;

CREATE TABLE empresa00 (
    IDFunc INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(40) NOT NULL,
    CPF VARCHAR(14) NOT NULL,
    datnasci DATE,
    nacio VARCHAR(20) DEFAULT 'Brasileiro',
    r_estado VARCHAR(2),
    datcontrato DATE,
    funcao VARCHAR(20) NOT NULL,
    salario DECIMAL(10 , 2 ),
    PRIMARY KEY (IDFunc)
);

INSERT INTO empresa00 
(Nome, CPF, datnasci, nacio, r_estado, datcontrato, funcao, salario)
VALUES 
('Ricardo Pereira da Silva', '110.001.002-01', '1985-01-18', 'Brasileiro', 'DF', '2012-06-02', 'Ass.Admin', '1890.18'),
('Miguel Ferreira Santana', '110.002.003-02', '1985-04-02', 'Brasileiro', 'RJ', '2009-04-08', 'Diretor', '7890.56'),
('Ana Beatriz', '110.003.004-03', '1985-02-22','Brasileiro', 'PR', '2010-02-02', 'Design Gráfico', '3580.97'),
('Michel dos Santos', '110.004.005-04', '1992-12-18', 'Brasileiro', 'SP', '2013-08-08', 'Motorista', '2656.25');

INSERT INTO empresa00
VALUES
(5,'Fellipe Santana', '110.100.020-20', '1989-02-18', 'Brasileiro', 'RJ', '2015-06-02', 'Programador', '4229.98'),
(17,'Gildete da Silva', '110.101.021-21', '1992-10-21', 'Brasileiro', 'AL', '2018-03-09', 'Secretrária', '1818.40'); 

SELECT * FROM empresa00;

-- Reajuste de salário dos Funcionários -- 

SELECT * FROM empresa00
WHERE IDFunc = 2;
UPDATE empresa00 SET salario = 10665.78 WHERE IDFunc = 2;
SELECT * FROM empresa00
WHERE IDFunc = 3;
UPDATE empresa00 SET salario = 4678.55 WHERE IDFunc = 3;

-- Adicionar coluna na tabela e inserir valores-- 

ALTER TABLE empresa00 ADD COLUMN Estado_Civil varchar(10);
select * from empresa00;
UPDATE empresa00 SET Estado_Civil = 'Solteiro' WHERE IDFunc = 1;
UPDATE empresa00 SET Estado_Civil = 'Casado' WHERE IDFunc = 2;
UPDATE empresa00 SET Estado_Civil = 'Casado' WHERE IDFunc = 3;
UPDATE empresa00 SET Estado_Civil = 'Casado' WHERE IDFunc = 5;
UPDATE empresa00 SET Estado_Civil = 'Solteiro' WHERE IDFunc = 17;

select * FROM empresa00;
 



