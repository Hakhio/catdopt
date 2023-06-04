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
    , (31, "Munchkin")
    , (32, "Nebelung")
    , (33, "Norvégien")
    , (34, "Oriental")
    , (35, "Persan")
    , (36, "Savannah")
    , (37, "Scottish Fold")
    , (38, "Siamois")
    , (39, "Sibérien")
    , (40, "Somali")
    , (41, "Sphynx")
    ;
-- 
-- AUTO_INCREMENT 
--

ALTER TABLE chat 
    MODIFY id INT AUTO_INCREMENT;

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
    ADD CONSTRAINT FK_pelage FOREIGN KEY (pelage) REFERENCES pelage (id) ON UPDATE CASCADE,
    ADD CONSTRAINT FK_patron FOREIGN KEY (patron) REFERENCES patron (id) ON UPDATE CASCADE,
    ADD CONSTRAINT FK_couleur FOREIGN KEY (couleur) REFERENCES couleur (id) ON UPDATE CASCADE,
    ADD CONSTRAINT FK_race FOREIGN KEY (race) REFERENCES race (id) ON UPDATE CASCADE;

