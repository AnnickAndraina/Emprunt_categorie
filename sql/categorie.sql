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
    FOREIGN KEY (id_membre) REFERENCES membre(id_membre)
);

CREATE TABLE images_objet(
    id_image INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_objet INT,
    nom_image VARCHAR(100),
    FOREIGN KEY (id_objet) REFERENCES objet(id_objet)
);

CREATE TABLE emprunt (
    id_emprunt INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_objet INT,
    id_membre INT,
    date_emprunt DATE,
    date_retour DATE,
    FOREIGN KEY (id_objet) REFERENCES objet(id_objet),
    FOREIGN KEY (id_membre) REFERENCES membre(id_membre)
);


INSERT INTO membre (Nom , DateNaissance, Genre, Email, Ville, mdp, image_profil) VALUES
('Koto', '2000-04-25', 'Homme', 'koto@gmail.com', 'Antananarivo', 'lalala', ''),
('Bema', '1993-03-19', 'Femme', 'bema@gmail.com', 'Tamatave', 'oooo', ''),
('Lola', '1983-12-31', 'Homme', 'lola@gmail.com', 'Mahajanga', 'eee1', ''),
('Bozy', '2010-09-28', 'Femme', 'bozy@gmail.com', 'Fianarantsoa', 'eka301', '');

INSERT INTO categorie_objet (nom_categorie) VALUES 
('esthétique'),
('bricolage'),
('mécanique'),
('mécanique');

INSERT INTO objet (nom_objet,id_objet,id_membre) VALUES 
('seche cheveux',1 , 1),
('tournevis',2 , 1),
('cle a molette',3 , 1),
('mixeur',4 , 1),
('fer a lisser',1 , 1),
('marteau',2 , 1),
('pompe a eau',3 , 1),
('robot de cuisine',4 , 1),
('peigne chauffant ',1 , 1),
('perceuse',2 , 1),
('seche cheveux',1 , 2),
('tournevis',2 , 2),
('cle a molette',3 , 2),
('mixeur',4 , 2),
('fer a lisser',1 , 2),
('marteau',2 , 2),
('pompe a eau',3 , 2),
('robot de cuisine',4 , 2),
('peigne chauffant ',1 , 2),
('perceuse',2 , 2),
('seche cheveux',1 , 3),
('tournevis',2 , 3),
('cle a molette',3 , 3),
('mixeur',4 , 3),
('fer a lisser',1 , 3),
('marteau',2 , 3),
('pompe a eau',3 , 3),
('robot de cuisine',4 , 3),
('peigne chauffant ',1 , 3),
('perceuse',2 , 3),
('seche cheveux',1 , 4),
('tournevis',2 , 4),
('cle a molette',3 , 4),
('mixeur',4 , 4),
('fer a lisser',1 , 4),
('marteau',2 , 4),
('pompe a eau',3 , 4),
('robot de cuisine',4 , 4),
('peigne chauffant ',1 , 4),
('perceuse',2 , 4);

INSERT INTO emprunt(id_objet,id_membre,date_emprunt,date_retour) VALUES 
(1,2,'2025-07-01','2025-07-05'),
(2,3,'2025-07-03','2025-07-07'),
(3,4,'2025-07-06','2025-07-10'),
(4,2,'2025-07-09','2025-07-15'),
(5,3,'2025-07-04','2025-07-09'),
(6,4,'2025-07-08','2025-07-12'),
(7,2,'2025-07-07','2025-07-11'),
(8,3,'2025-07-02','2025-07-06'),
(9,4,'2025-07-11','2025-07-17'),
(10,2,'2025-07-10','2025-07-13');