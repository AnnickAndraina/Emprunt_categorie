<?php
include '../core/connexion.php'; 

if (!empty($_POST)) {
    $nom = $_POST['nom'];
    $date_naissance = $_POST['date_naissance'];
    $genre = $_POST['genre'];
    $email = $_POST['email'];
    $ville = $_POST['ville'];
    $mdp = password_hash($_POST['mdp'], PASSWORD_DEFAULT); 
    $image_profil = $_FILES['image_profil']['name'];

    
    move_uploaded_file($_FILES['image_profil']['tmp_name'], '../assets/img/' . $image_profil);

    $stmt = $conn->prepare("INSERT INTO membre (nom, date_naissance, genre, email, ville, mdp, image_profil) 
                            VALUES (?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("sssssss", $nom, $date_naissance, $genre, $email, $ville, $mdp, $image_profil);
    $stmt->execute();

    header("Location: ../pages/login.php?inscription=ok");
    exit();
}
?>
