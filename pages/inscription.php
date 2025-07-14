<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Inscription</title>
  <link href="../assets/bootstrap-5.3.5-dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="../assets/css/style.css" rel="stylesheet"> 
</head>


<body class="bg-light d-flex justify-content-center align-items-center min-vh-100">

  <div class="card p-4 shadow" style="max-width: 500px; width: 100%;">
    <div class="text-center mb-3">
    <h3 class="text-center mb-4">Inscrivez-vous</h3>
    </div>

    <form action="../core/inscrir.php" method="post">
      <div class="mb-3">
        <label for="email" class="form-label">Email :</label>
        <input type="email" name="email" id="email" class="form-control" required />
      </div>

      <div class="mb-3">
        <label for="motdepasse" class="form-label">Mot de passe :</label>
        <input type="password" name="motdepasse" id="motdepasse" class="form-control" required />
      </div>

      <div class="mb-3">
        <label for="nom" class="form-label">Nom :</label>
        <input type="text" name="nom" id="nom" class="form-control" required />
      </div>

      <div class="mb-3">
        <label class="form-label">Date de naissance :</label>
        <div class="d-flex gap-2">
          <select name="jour" class="form-select" required>
            <option value="">Jour</option>
            <?php for ($i = 1; $i <= 31; $i++) echo "<option value='$i'>$i</option>"; ?>
          </select>
          <select name="mois" class="form-select" required>
            <option value="">Mois</option>
            <?php for ($i = 1; $i <= 12; $i++) echo "<option value='$i'>$i</option>"; ?>
          </select>
          <select name="annee" class="form-select" required>
            <option value="">Année</option>
            <?php for ($i = 2025; $i >= 1950; $i--) echo "<option value='$i'>$i</option>"; ?>
          </select>
        </div>
      </div>

      <button type="submit" class="btn btn-primary w-100">S'inscrire</button>
    </form>

    <div class="text-center mt-3">
      <p class="mb-0">Vous avez déjà un compte ? <a href="login.php">Connectez-vous</a></p>
    </div>
  </div>

  <script src="../bootstrap-5.3.5-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
