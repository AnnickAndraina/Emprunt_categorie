<?php
session_start();
include '../core/connexion.php';

if (!empty($_POST)) {
    $email = $_POST['email'];
    $mdp = $_POST['mdp'];

    $stmt = $conn->prepare("SELECT * FROM membre WHERE email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();

    $resultat = $stmt->get_result();
    $user = $resultat->fetch_assoc();

    if ($user && password_verify($mdp, $user['mdp'])) {
        $_SESSION['membre'] = $user;
        header("Location: ../pages/accueil.php");
    } else {
        header("Location: ../pages/login.php?erreur=1");
    }
    exit();
}
?>

