<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">   
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Jarditou</title>
</head>

<body>

    <div class="container">

        <!-- Head -->
        <div class="row ">
              <div class="col-8 d-none d-lg-block d-xl-block">
        
              <img width="auto" height="60" src="images/jarditou_logo.jpg" alt="?"
                title="Logo">
              </div>
              <div class="col-4 text-center d-none d-lg-block d-xl-block"> <h1>Tout le jardin </h1>
            </div>
        </div>
        
        
        
        <div class="row ">
    
            <div class="col-12">
    
    
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <!-- Bar nav -->
                    <a class="navbar-brand" href="#">Jarditou.com</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
            
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="Accueil.html">Accueil<span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="tableau.html">Tableau</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Contact.html" tabindex="-1" aria-disabled="true">Contact</a>
                        </li>
                        </ul>
                        <form class="form-inline my-2 my-lg-0">
                             <input class="form-control mr-sm-2" type="search" placeholder="Votre promotion" aria-label="Search">
                              <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Rechercher</button>
                        </form>
                    </div>
                </nav>
        
            </div>
    
        </div>
        <div class="row ">
    
            <img class="col-12 img-responsive" src="images/promotion.jpg" alt="?"
              title="promotion">
        
          </div>

          

                            <!-- Contact -->
        <div class="row">
        <div class="col-12">
            <p>*Ces Zones sont obligatoires</p>
              <form action="http://bienvu.net/script.php" method="GET" id="formCoordonees">
                <fieldset>
                    
                    <h1>Coordonnées</h1>
                    <div class="form-group">


                        <label for="Nom" >Votre nom* : </label>
                      <input type="text" class="form-control" id="Nom" name="Nom" placeholder="Veuillez saisir votre nom"><br>
                      <span id="erreur1"></span>

                        <label for="Prenom">Votre prenom* : </label>
                        <input type="text" class="form-control" id="Prenom" name="Prenom" 
                            placeholder="Veuillez saisir votre prénom"><br>
                        <span id="erreur2"></span>
                
                
                
                        <label for="radio">Sexe*:</label><br> 
                                    <div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="Feminin" id="Femme" value="option1">
                                        <label class="form-check-label" for="inlineRadio1">Féminin</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="Masculin" id="Homme" value="option2">
                                        <label class="form-check-label" for="inlineRadio2">Masculin</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="Neutre" id="Neutre" value="option3">
                                        <label class="form-check-label" for="inlineRadio3">Neutre</label>
                                    </div>
                                    </div>

                 
                    
                    <br><div class="input-group mb-3">
                        <input type="Date" name="Date" id="Date" class="form-control">
                        <span class="input-group-text">
                          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-calendar-fill" viewBox="0 0 16 16">
                            <path
                              d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V5h16V4H0V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5z" />
                          </svg>
                          </span>
                          <span id="erreur3"></span>
                      </div>

                    <div class="form-group">
                        <label for="Code">Code postal* : </label>
                        <input type="text" class="form-control" id="Code-Postal" name="Code"><br>
                        <span id="erreur4"></span>
                    </div>

                                
                    <div class="form-group">
                        <label for="Adresse">Adresse : </label>
                        <input type="text" class="form-control" id="Adresse" name="Adresse"><br>
                    </div>





                    <div class="form-group">
                        <label for="Ville">Ville : </label>
                        <input type="text" class="form-control" id="Ville" name="Ville"><br>
                    </div>

                    
                    <div class="form-group">
                    <label for="Email">Email* : </label>
                    <input type="text" class="form-control" id="Email" name="Email" placeholder="Exemple@gmail.com"><br>
                    <span id="erreur5"></span>
                    </div>
                    </div>
                    </fieldset>
                    <fieldset>


                
                   
                    <h1>Votre demande</h1>
                    <label for="radio">Sujet* : </label>
                    <select id="Sujet" class="form-control form-control-lg">
                        <option value="selectionnrt">Veuillez séléctionner un sujet</option>
                        <option value="Commandes">Mes commandes</option> 
                        <option value="Produit">Question sur un produit</option> 
                        <option value="Reclamation">Réclamation</option> 
                        <option value="Autres">Autres</option>
                    </select><br>
                    <span id="erreur6"></span>
                    
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Votre question:*</label>
                        <textarea class="form-control" id="Question" rows="3"></textarea>
                        <span id="erreur7"></span>

                    <div class="form-group form-check">
                        <input type="checkbox" class="form-check-input" id="CheckTIF" name="CheckTIF">
                        <label class="form-check-label" for="disabledFieldsetCheck" id="CheckTIF" name="CheckTIF">J'accepte le traitement de ce formulaire
                        </label>
                        <span id="erreur8"></span>
                    </div><br>

                    <button type="submit" class="btn btn-dark">Envoyer</button>
                    <button type="reset" class="btn btn-dark">Annuler</button>
                    </fieldset>
                </form>
                </div>
                </div>

                

                    <!-- Partie PHP -->

                     <form action="intput.php" method="post" enctype="multipart/form-data">
                     <input type="file" name="fichier"> 


                    <!-- End -->

                    <div class="row">
                        <div class="col-12">
                        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                            <span class="navbar-toggler-icon"></span>
                            </button>   
                            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">mention légales</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">horaire</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">plan du site</a>
                                    </li>
                                </ul>
                            </div> 
                        </div>
                        </div>
                        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
                        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
                        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
                        <script src="Eval-exo-5.js"></script>
                        </body>
                        </html>
