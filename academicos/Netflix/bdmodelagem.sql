-- INICIAMOS EXCLUINDO AS TABELAS
drop TABLE if EXISTS titulo;
DROP TABLE if EXISTS TituloPessoa;
DROP TABLE if EXISTS Producao;
DROP TABLE if EXISTS Fotos;
DROP TABLE if EXISTS Pessoa;
DROP TABLE if EXISTS Nacionalidade;

-- ESTAMOS CRIANDO AS TABELAS
CREATE TABLE Nacionalidade (
  id_Nacionalidade INT NOT NULL,
  NomeNacionalidade VARCHAR(50) NOT NULL,
  primary key (id_Nacionalidade));
  
CREATE TABLE Pessoa (
  id_Pessoa INT NOT NULL,
  NomePessoa VARCHAR(50) NOT NULL,
  DataNasc DATE,
  Biografia VARCHAR(100),
  Peso NUMERIC(3,1),
  Altura NUMERIC(3,2),
  Sexo CHAR(3),
  id_nacionalidade INT,
  FOREIGN KEY (id_nacionalidade) 
  REFERENCES nacionalidade(id_nacionalidade),
  primary key (id_Pessoa));
   
create table Producao (
    id_Producao INT,
    Nome_Producao VARCHAR(30),
    PRIMARY KEY (id_producao));
    
create table Fotos (
   id_Fotos INT,
   Arquivo BYTEA,
   id_pessoa INT,
   FOREIGN KEY (id_pessoa)
   REFERENCES pessoa(id_pessoa),
   PRIMARY KEY (id_Fotos));
    
Create table TituloPessoa (
    id_TituloPessoa INT,
    id_Titulo INT,
    id_pessoa INT,
    id_producao int,
    FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa),
    foreign KEY (id_producao) REFERENCES producao(id_producao),
    PRIMARY KEY (id_TituloPessoa));
    
create table Titulo (
  id_Titulo INT,
  nome VARCHAR(100),
  sinopese varchar (1000),
  id_TipoTitulo INT,
  id_Classficacao INT,
  ano_lancamento DATE,
  duracao_segundo INT,
  id_qualidade INT,
  previa_video BYTEA,
  img_retrato BYTEA,
  img_paisagem BYTEA,
  qnt_assistido INT,
  id_stream INT,
  PRIMARY KEY (id_titulo));
   
    

-- TABELA NACIONALIDADE: 
INSERT into Nacionalidade 
(id_nacionalidade, nomenacionalidade)
VALUES
(1, 'Brasileiro');
INSERT into Nacionalidade 
(id_nacionalidade, nomenacionalidade)
VALUES
(2, 'Espanhol');
INSERT into Nacionalidade 
(nomenacionalidade, id_nacionalidade)
VALUES
('Argentino', 3);
INSERT into Nacionalidade 
VALUES
(4, 'Norte Americano');
INSERT INTO nacionalidade
VALUES
(5, '');



-- TABELA PESSOA: 
INSERT INTO Pessoa
VALUES (
  1,
  'Rodrigo Santoro',
  '1975-08-22',
  NULL,
  80.5,
  1.88,
  'M',
  1
  );
  INSERT INTO Pessoa
VALUES (
  2,
  'Lamine Yamal',
  '2007-07-13',
  NULL,
  72,
  1.80,
  'M',
  2
  );
  
  
  
  -- TABELA FOTOS:
  INSERT INTO fotos
  values (
    1,
    NULL,
    1);
    
    
-- TABELA PRODUCAO:
  INSERT INTO producao
  values (
    1,
    'Ator');
    
    
    
-- TABELA TITULOPESSOA: 
  INSERT INTO TituloPessoa
  values (
    1,
    1,
    1,
    1);
    
    
  INSERT INTO titulo
  VALUES (
    1,
    300,
    'O rei Leônidas e seus 300 guerreiros de Esparta lutam bravamente contra o numeroso
    exército do rei Xerxes. Após três dias de muita luta, o sacrifício e a dedicação destes
    homens uniu a Grécia no combate contra o inimigo persa.',
    NULL,
    18,
    '2007-03-09',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    null);
   
  


-- AGORA VAMOS EXIBIR OS DADOS DA TABELA 
SELECT * FROM nacionalidade;
SELECT * FROM pessoa;
SELECT * from fotos;
SELECT * from producao;
SELECT * from titulopessoa;
SELECT * FROM titulo;