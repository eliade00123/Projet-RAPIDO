<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/style.css">
</head>
<body class="login">
    <div class="log">
    <h2>Inscrivez-vous</h2>
    <form action="operateur.php" method="post">
        <div class="nom">
            <input type="text" name="nom" id="" placeholder="Entrez votre nom" required>
            <input type="text" name="prenom" id="" placeholder="Entrez votre prenom" required>
        </div>
        <div class="password">
            <label for="">Mot de passe</label>
            <input type="password" name="password" id="" required>
        </div>
        <div class="unChauff">
            <label for="">Etes-vous un chauffeur ?</label>
            <input type="radio" name="chauf" id="oui" value="oui"><label for="">Oui</label>
            <input type="radio" name="chauf" id="non" value="non" checked><label for="">Non</label>
        </div>
        <div class="chauffeurs">
            <div class="tel">
                <label for="">Votre numero de telephone</label>
                <input type="number" name="telephone" id="tel">
            </div>
            <div class="unChauff sexe">
                <label for="">Sexe:</label>
                <label for="">Masuclin</label><input type="radio" name="sexe" id="" value="m">
                <label for="">Feminin</label><input type="radio" name="sexe" id="" value="f">
            </div>
        </div>
        <div class="submit">
            <input type="submit" value="S'inscrire">
        </div>
    </form>
    </div>
    <script src="./js/jquery-3.7.1.js"></script>
    <script src="./js/script.js"></script>
</body>
</html>