R0 : Jouer au jeu du devin avec l'ordinateur

R1 : Commener "Jouer au jeu du devin avec l'ordinateur" ?
    Quitter <- Faux
    Répéter
        Afficher Menu
        Demander le choix de l'utilisateur                  choix_int: out
        Traiter le choix de l'utilisateur                   choix_int: in
    Jusqu'à Quitter
    Quitter le programme                                    Quitter : in out

R2 : Commnent "Afficher le menu" ?
    Ecrire ("1- L'ordinateur choisit un nombre et vous le devinez")
    Ecrire ("2- Vous choisissez un nombre et l'ordinateur le devine")
    Ecrire ("0- Quitter le programme")


R2 : Commnent "Demander le choix de l'utilisateur" ?
    Ecrire ("Votre choix : ")
    Lire(choix_int)


R2: Comment "Traiter le choix de l'utilisateur" ?
    Répéter 
        choix_valide <- Vrai
        Selon choix_int Dans
            0 -> Quitter le programme                       Quitter : in out
            1 -> Faire deviner un nombre de l'ordinateur à l'utilisateur
            2 -> Faire deviner à l'ordinateur un nombre choisi par l'utilisateur 
            Autres -> Ecrire ("Choix incorrect."); 
                      choix_valide <- Faux
        FinSelon
    Jusqu'à choix_valide

R2: Comment "Quitter le programme" ?
    Ecrire ("Au revoir...")
    Quitter <- Vrai