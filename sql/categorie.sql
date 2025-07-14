CREATE TABLE membre (
    id_membre INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(50),
    DateNaissance DATE DEFAULT NULL
    Genre ENUM('Homme', 'Femme'), 
    Email VARCHAR(1000) DEFAULT NULL,
    Ville VARCHAR(100) DEFAULT NULL,
    Motdepasse VARCHAR(100) DEFAULT NULL,
    DateNaissance DATE DEFAULT NULL
);


membre (id_membre, nom , date de naissance, genre, émail, ville, mdp, image_profil)
