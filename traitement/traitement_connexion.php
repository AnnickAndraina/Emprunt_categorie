<?php
session_start();
include '../core/connexion.php'; // chemin vers ta connexion MySQL

if (!empty($_POST)) {
    $email = $_POST['email'];
    $mdp = $_POST['mdp'];

    // Préparer la requête pour éviter les injections SQL
    $stmt = $conn->prepare("SELECT * FROM membre WHERE email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();

    // Récupérer les données
    $result = $stmt->get_result();
    $membre = $result->fetch_assoc();

    // Vérifier si le membre existe et que le mot de passe est correct
    if ($membre && password_verify($mdp, $membre['mdp'])) {
        $_SESSION['membre'] = $membre; // Stocker les infos en session
        header("Location: ../pages/accueil.php"); // Redirection vers l'accueil
        exit();
    } else {
        // Redirection avec message d'erreur si échec
        header("Location: ../pages/login.php?erreur=1");
        exit();
    }
}
?>
