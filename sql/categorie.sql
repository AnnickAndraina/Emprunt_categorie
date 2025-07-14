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

categorie_objet (id_categorie, nom_categorie )

