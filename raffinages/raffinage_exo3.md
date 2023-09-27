**R0** : Jouer au jeu du devin avec l'ordinateur

**R1** : **Comment** "Jouer au jeu du devin avec l'ordinateur" ?
    Quitter <- Faux
    **Répéter**
        Afficher Menu
        Demander le choix de l'utilisateur                                                          choix_int: **out Integer**
        Traiter le choix de l'utilisateur                                                           choix_int: **in**
    **Jusqu'à** Quitter

**R2** : **Comment** "Afficher le menu" ?
    **Ecrire** ("1- L'ordinateur choisit un nombre et vous le devinez")
    **Ecrire** ("2- Vous choisissez un nombre et l'ordinateur le devine")
    **Ecrire** ("0- Quitter le programme")


**R2** : **Comment** "Demander le choix de l'utilisateur" ?
    **Ecrire** ("Votre choix : ")
    Lire(choix_int)

**R2**: **Comment** "Traiter le choix de l'utilisateur" ?
    **Selon** choix_int Dans
        0 -> Quitter le programme                                                                   Quitter : **in out**
        1 -> Faire deviner un nombre de l'ordinateur à l'utilisateur
        2 -> Faire deviner à l'ordinateur un nombre choisi par l'utilisateur 
        Autres -> **Ecrire** ("Choix incorrect.");
    **FinSelon**

**R2**: **Comment** "Quitter le programme" ?
    **Ecrire** ("Au revoir...")
    Quitter <- Vrai