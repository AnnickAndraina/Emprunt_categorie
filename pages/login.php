<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <link href="../bootstrap-5.3.5-dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="../assets/css/style.css" rel="stylesheet"> <!-- Garde-le si tu mets du style custom -->
  <title>Connexion</title>
</head>
<body class="bg-light d-flex justify-content-center align-items-center min-vh-100">

  <div class="card shadow-sm p-4" style="width: 100%; max-width: 400px;">
    <h3 class="text-center mb-4">Connectez-vous</h3>

    <form action="accueil.php" method="POST">
      <div class="mb-3">
        <label for="username" class="form-label">Email :</label>
        <input type="text" class="form-control" id="username" name="username" required />
      </div>

      <div class="mb-3">
        <label for="password" class="form-label">Mot de passe :</label>
        <input type="password" class="form-control" id="password" name="password" required />
      </div>

      <button type="submit" class="btn btn-primary w-100">Connexion</button>
    </form>

    <div class="text-center mt-3">
      <p class="mb-0">Vous n'avez pas de compte ? <a href="inscription.php">Inscrivez-vous</a></p>
    </div>
  </div>

  <script src="../bootstrap-5.3.5-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
