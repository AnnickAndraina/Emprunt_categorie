CREATE TABLE membre (
    id_membre INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(50),
    DateNaissance DATE DEFAULT NULL
    Genre ENUM('Homme', 'Femme'), 
    Email VARCHAR(1000) DEFAULT NULL,
    Ville VARCHAR(100) DEFAULT NULL,
    mdp VARCHAR(100) DEFAULT NULL,
    image_profil VARCHAR (500)
);

CREATE TABLE categorie_objet (
    id_categorie INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom_categorie VARCHAR (100)
);

CREATE TABLE objet(
    id_objet INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom_objet VARCHAR (100),
    id_categorie INT,
    id_membre INT,
    FOREIGN KEY (id_categorie) REFERENCES categorie_objet(id_categorie),
    FOREIGN KEY (id_membre) REFERENCES membre(id_membre),
);

CREATE TABLE images_objet(
    id_image INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_objet INT,
    nom_image VARCHAR(100),
    FOREIGN KEY (id_objet) REFERENCES objet(id_objet),
);





