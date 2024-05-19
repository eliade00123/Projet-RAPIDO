<?php 
include_once("connexion.php");?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="./img/favicon2.png" type="image/x-icon">
    <title>Rapido</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/style.css">
</head>
<body class="background-image-full">
    <header>
        <div class="container mt-2">
            <div class="row">
                <div class="col-md-3 col-7">
                    <div class="logo d-flex">
                        <img class="me-3" src="./img/favicon2.png" alt="RAPIDO" width="60px">
                        <h2 class="pt-1 "><a href="index.php" class="text-warning">RAPIDO</a></h2>
                    </div>
                </div>

                <div class="tete col-md-9 col-5">
                    <nav class="navbar navbar-expand-md">
                        <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#menu">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="menu">
                            <ul class="navg navbar-nav">
                                <li class="nav-item"><a class="nav-link text-warning" href="#">Acceuil</a></li>
                                <li class="nav-item dropdown ">
                                    <a class="nav-link dropdown-toggle text-warning" data-bs-toggle="dropdown" href="#">Nos services</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="index.php" class="dropdown-item text-warning">Ajouter une course</a></li>
                                        <li><a href="chauffeur.php" class="dropdown-item text-warning">Affecter un chauffeur</a></li>
                                        <li><a href="termine.php" class="dropdown-item text-warning">Terminer votre course</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item"><a class="nav-link text-warning" href="course.php">Nos courses</a></li>
                                <li class="nav-item"><a class="nav-link text-warning" href="contacts.html">Contacts</a></li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>          
        </div>
    </header>

    <section>
        <form action="insertCourse.php" method="post">
            <div class="container">
                <h3>Votre destination avec Rapido</h3>
                <div class="depart mb-3">
                    <input class="" type="text" name="depart" placeholder="Entrer votre point de départ">
                </div>
                <div class="arrivee mb-3">
                    <input class=""  type="text" name="arrivee" placeholder="Entrer votre point d'arrivée">
                </div>
                <div class="date mb-4">
                    <label class="form-label" for="date">Entrez la date et l'heure de départ:</label>
                    <input class="" type="datetime-local" name="date" id="">
                </div>
               <!--  <div class="date mb-4">
                    <label class="form-label" for="heure">Entrez l'heure de départ:</label>
                    <input class="" type="time" name="heure" id="">
                </div> -->
                <div class="submit">
                    <input class="enregistre text-warning" type="submit" value="Enrégistrer la course">
                    <input class="" type="reset" value="Annuler">
                </div>
            </div>
            <div class="lien">
                <a href="chauffeur.php" class="text-warning">Affecter un chauffeur à votre course</a>
            </div>
        </form>
    </section>

    <script src="./js/bootstrap.bundle.min.js"></script>
    <script src="./js/jquery-3.7.1.js"></script>
    <script src="./js/script.js"></script>
</body>
</html>