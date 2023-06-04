--
-- Base de données : catdopt
--

--
-- Création de la base de données
-- 

DROP DATABASE IF EXISTS catdopt;
CREATE DATABASE IF NOT EXISTS catdopt;

USE catdopt;

--
-- Création des tables
--

-- Table Chat
CREATE TABLE IF NOT EXISTS chat (

    id INT
    , numero VARCHAR(15) 
    , nom VARCHAR(80) NOT NULL
    , sexe CHAR(1) NOT NULL
    , date_naissance DATE
    , sterilise BIT NOT NULL
    , remarque VARCHAR(250)

    , race INT NOT NULL
    , couleur INT NOT NULL
    , pelage INT NOT NULL
    , patron INT NOT NULL

    , CONSTRAINT PK_chat PRIMARY KEY (id)
    , CONSTRAINT UK_numero UNIQUE (numero)
    , CONSTRAINT CK_sexe CHECK (sexe IN ('M', 'F', NULL))

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Table Pelage
CREATE TABLE IF NOT EXISTS pelage (

    id INT
    , pelage VARCHAR(50) NOT NULL

    , CONSTRAINT PK_pelage PRIMARY KEY (id)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Table Patron
CREATE TABLE IF NOT EXISTS patron (

    id INT
    , patron VARCHAR(50) NOT NULL

    , CONSTRAINT PK_patron PRIMARY KEY (id)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Table Race
CREATE TABLE IF NOT EXISTS race (

    id INT
    , race VARCHAR(50)

    , CONSTRAINT PK_race PRIMARY KEY (id)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Table Couleur
CREATE TABLE IF NOT EXISTS couleur (

    id INT
    , couleur VARCHAR(50)

    , CONSTRAINT PK_couleur PRIMARY KEY (id)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Déchargement des données
--

INSERT INTO pelage
VALUES
    (1, "Nu")
    , (2, "Pelage court et frisé")
    , (3, "Pelage court")
    , (4, "Pelage mi-long")
    , (5, "Pelage long")
    ;

INSERT INTO patron
VALUES 
    (1, "Solide") -- pelage uni
    , (2, "Tabby") -- pelage marbré, rayé ou tacheté (moucheté ou tiqueté)
    , (3, "Colourpoint") -- coloration spécifique sur le bout des pattes, la queue et le visage
    , (4, "Bicolore") -- avec des taches de blanc plus ou moins grandes
    , (5, "Tricolore") -- trois couleurs de base mélangées ou non
    , (6, "Mink et sépia") -- Écaille de tortue ou calico : trois couleurs de base mélangées ou non
    ;

INSERT INTO couleur
VALUES 
    (1, "Noir")
    , (2, "Bleu") -- gris-ardoise, issu d'une dilution du noir
    , (3, "Chocolat") -- plusieurs variations du brun
    , (4, "Lilas") -- c'est un beige rosé très pâle, dilution de la couleur chocolat
    , (5, "Cannelle") -- un brun-roux
    , (6, "Fauve") -- beige clair tirant sur le roux, dilution de la couleur cannelle
    , (7, "Roux") -- c'est le roux orangé commun
    , (8, "Crème") -- dilution du rouge
    , (9, "Blanc")
    ;

INSERT INTO race
VALUES
    (1, "Chat de gouttière")
    , (2, "Abyssin")
    , (3, "American Bobtail")
    , (4, "American Curl")
    , (5, "American Shorthair")
    , (6, "American Wirehair")
    , (7, "Angora Turc")
    , (8, "Balinais")
    , (9, "Bengal")
    , (10, "Birman")
    , (11, "Bleu Russe")
    , (12, "British Longhair")
    , (13, "British Shorthair")
    , (14, "Bombay")
    , (15, "Burmese")
    , (16, "Burmilla")
    , (17, "California Spangled")
    , (18, "Chartreux")
    , (19, "Ceylan")
    , (21, "Cornish Rex")
    , (22, "Devon Rex")
    , (23, "Donskoy")
    , (24, "European Shorthair")
    , (25, "Japanese Bobtail")
    , (26, "Javanais")
    , (27, "Korat")
    , (28, "LaPerm")
    , (29, "Maine Coon")
    , (30, "Munchkin")
    , (31, "Nebelung")
    , (32, "Norvégien")
    , (33, "Oriental")
    , (34, "Persan")
    , (35, "Savannah")
    , (36, "Scottish Fold")
    , (37, "Siamois")
    , (38, "Sibérien")
    , (39, "Somali")
    , (40, "Sphynx")
    ;

INSERT INTO chat
VALUES 
    (1, '123456789012344', 'Noirau', 'M', '2021-11-01', b'0', NULL, 24, 1, 3, 1)
    , (2, '123456789012345', 'Fifi', 'F', '2014-06-10', b'1', NULL, 1, 1, 3, 2)
    , (3, '123456789012346', 'Minou', 'M', '2020-05-15', b'1', NULL, 1, 2, 3, 4)
    , (4, '123456789012347', 'Mimi', 'F', '2019-09-20', b'1', NULL, 5, 4, 2, 3)
    , (5, '123456789012348', 'Félix', 'M', '2018-07-01', b'0', NULL, 9, 1, 5, 2)
    , (6, '123456789012349', 'Luna', 'F', '2022-01-10', b'0', NULL, 15, 6, 4, 1)
    , (7, '123456789012350', 'Tigrou', 'M', '2017-04-05', b'1', NULL, 22, 9, 3, 5)
    , (8, '123456789012351', 'Choupette', 'F', '2016-11-30', b'0', NULL, 34, 8, 2, 6)
    , (9, '123456789012352', 'Oscar', 'M', '2020-02-28', b'0', NULL, 19, 5, 4, 2)
    , (10, '123456789012353', 'Bella', 'F', '2019-08-12', b'1', NULL, 39, 7, 1, 4)
    , (11, '123456789012354', 'Simba', 'M', '2018-06-17', b'0', NULL, 29, 3, 5, 1)
    , (12, '123456789012355', 'Lily', 'F', '2021-03-25', b'1', NULL, 37, 2, 3, 3)
    , (13, '123456789012356', 'Charlie', 'M', '2020-09-08', b'1', NULL, 8, 1, 2, 5)
    , (14, '123456789012357', 'Coco', 'F', '2019-01-05', b'0', NULL, 14, 4, 1, 6)
    , (15, '123456789012358', 'Max', 'M', '2017-11-23', b'1', NULL, 33, 9, 5, 2)
    , (16, '123456789012359', 'Mia', 'F', '2022-07-15', b'0', NULL, 40, 8, 4, 1)
    , (17, '123456789012360', 'Rocky', 'M', '2016-03-10', b'0', NULL, 27, 7, 3, 5)
    , (18, '123456789012361', 'Lola', 'F', '2015-10-05', b'1', NULL, 35, 6, 2, 6)
    , (19, '123456789012362', 'Gizmo', 'M', '2019-12-28', b'0', NULL, 11, 5, 4, 2)
    , (20, '123456789012363', 'Sophie', 'F', '2018-07-10', b'1', NULL, 36, 9, 1, 4)
    , (21, '123456789012364', 'Oliver', 'M', '2017-05-15', b'0', NULL, 2, 3, 5, 1)
    , (22, '123456789012365', 'Chloé', 'F', '2020-02-10', b'1', NULL, 12, 2, 3, 3)
    , (23, '123456789012366', 'Milo', 'M', '2019-08-28', b'1', NULL, 6, 1, 2, 5)
    , (24, '123456789012367', 'Zoé', 'F', '2018-01-25', b'0', NULL, 16, 4, 1, 6)
    , (25, '123456789012368', 'Leo', 'M', '2016-10-10', b'0', NULL, 30, 7, 5, 2)
    , (26, '123456789012369', 'Luna', 'F', '2022-06-05', b'0', NULL, 38, 8, 4, 1)
    , (27, '123456789012370', 'Tigger', 'M', '2016-01-20', b'0', NULL, 28, 3, 5, 1)
    , (28, '123456789012371', 'Lucy', 'F', '2015-08-15', b'1', NULL, 32, 9, 3, 5)
    , (29, '123456789012372', 'Oreo', 'M', '2019-11-28', b'0', NULL, 7, 6, 2, 6)
    , (30, '123456789012373', 'Misty', 'F', '2018-07-05', b'1', NULL, 17, 5, 1, 4)
    , (31, '123456789012374', 'Sammy', 'M', '2017-04-10', b'0', NULL, 21, 4, 5, 2)
    , (32, '123456789012375', 'Luna', 'F', '2020-02-15', b'1', NULL, 31, 3, 4, 1)
    ;

-- 
-- AUTO_INCREMENT 
--

ALTER TABLE chat 
    MODIFY id INT AUTO_INCREMENT, AUTO_INCREMENT=33;

ALTER TABLE pelage 
    MODIFY id INT AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE patron 
    MODIFY id INT AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE couleur 
    MODIFY id INT AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE race 
    MODIFY id INT AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- FK
-- 

ALTER TABLE chat
    ADD CONSTRAINT FK_pelage    FOREIGN KEY (pelage)    REFERENCES pelage (id)  ON UPDATE CASCADE,
    ADD CONSTRAINT FK_patron    FOREIGN KEY (patron)    REFERENCES patron (id)  ON UPDATE CASCADE,
    ADD CONSTRAINT FK_couleur   FOREIGN KEY (couleur)   REFERENCES couleur (id) ON UPDATE CASCADE,
    ADD CONSTRAINT FK_race      FOREIGN KEY (race)      REFERENCES race (id)    ON UPDATE CASCADE;

