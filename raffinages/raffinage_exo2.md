Auteur : Théo Bessel - ENSEEIHT 1A SN groupe D1  
  
**R0** : Faire deviner à l'ordinateur un nombre choisi par l'utilisateur  
  
**R1** : **Comment** "Faire deviner à l'ordinateur un nombre choisi par l'utilisateur" ?  
    Initialiser le jeu                                                                      Choisi, Devine : **out Boolean**  
                                                                                            Compteur, Inf, Sup : **out Integer**  
    Faire choisir un nombre à l'utilisateur                                                 Choisi : **in out Boolean**  
                                                                                            Choix : **in out Integer**  
    Deviner le nombre choisi par l'utilisateur                                              Nombre, Compteur, Inf, Sup : **in out Integer**  
                                                                                            Devine, Choisi : **in out Boolean**  
                                                                                            Choix : **in out Character**  
  
**R2** : **Comment** "Initialiser le jeu" ?  
    Choisi <- False  
    Devine <- False  
    Compteur <- 0  
    Inf <- 1  
    Sup <- 1000  
  
**R2** : **Comment** "Faire choisir un nombre à l'utilisateur" ?  
    **TantQue** Non(Choisi) **Faire**  
        **Écrire** ("Avez-vous choisi un nombre entre 1 et 999 (o/n) ? ")  
        Lire le choix de l'utilisateur                                                      Choix : **in out Character**  
                                                                                            Choisi : **out Boolean**  
    **FinTQ**  
  
**R2** : **Comment** "Deviner le nombre choisi par l'utilisateur" ?  
    **TantQue** Non(Devine) **Faire**  
        Proposer un nombre à l'utilisateur                                                  Nombre, Compteur : **in out Integer**  
                                                                                            Inf, Sup : **in Integer**  
        Demander un retour de l'utilisateur                                                 Choisi : **in out Boolean**  
                                                                                            Choix : **in out Character**  
                                                                                            Inf, Sup : **out Integer**  
                                                                                            Nombre, Compteur : **in Integer**  
        Vérifier que l'utilisateur ne triche pas                                            Inf, Sup : **in Integer**  
                                                                                            Choix : **in Character**  
                                                                                            Devine : **out Boolean**  
    **FinTQ**  
  
**R3** : **Comment** "Lire le choix de l'utilisateur" ?  
    **Lire** (Choix)  
    **Selon** Choix **Dans**  
        'o' => Choisi <- True  
        Autres => **Écrire** ("J'attends...\n")  
    **FinSelon**  
  
**R3** : **Comment** "Proposer un nombre à l'utilisateur" ?  
    Nombre <- (Inf + Sup)/2;  
    Compteur <- Compteur + 1;  
    **Écrire** ("Proposition ") Écrire (Compteur) Écrire (" : ")  
    **Écrire** (Nombre)  
  
**R3** : **Comment** "Demander un retour de l'utilisateur" ?  
    Choisi <- False  
    **TantQue** Non(Choisi) **Faire**  
        **Écrire** ("Trop (g)rand, trop (p)etit ou (t)rouvé ?")  
        **Lire** (Choix)  
        **Selon** Choix **Dans**  
            'g' => Choisi <- True, Sup <- Nombre  
            'p' => Choisi <- True, Inf <- Nombre  
            't' => Choisi <- True, Devine <- True, **Écrire** ("J'ai trouvé ", Nombre, " en ", Compteur, " essai(s).\n\n")  
            Autres => **Écrire** ("Je n'ai pas compris. Merci de répondre :\n  
                                    \t g si ma proposition est trop grande\n  
                                    \t p si ma proposition est trop petite\n  
                                    \t t si j'ai trouvé le nombre\n")  
    FinTQ  
  
**R3** : **Comment** "Vérifier que l'utilisateur ne triche pas" ?  
    **Si** ((Sup - Inf) <= 1 Et Choix /= 't') **Alors**  
            **Écrire** ("Vous trichez. J’arrête cette partie.\n")  
            Devine <- True  
    **FinSi**