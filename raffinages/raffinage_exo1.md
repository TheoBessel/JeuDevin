R0 : Faire deviner un nombre de l'ordinateur à l'utilisateur  
  
  
**R1**: **Comment** "Faire deviner un nombre de l'ordinateur à l'utilisateur" ?  
    Choisir le nombre de l'ordinateur        n: out Entier  
    { (n >= 1) Et (n <= 999) }  
    nb_prop <- 0  
    **Répéter**  
        nb_prop <- nb_prop + 1
        Demander au joueur une proposition          prop: **out Entier**; nb_prop : **in**
        Traiter la proposition du joueur         prop, n : **in**; Trouve : **in out**
    **Jusqu'à** prop = n
    Afficher message victoire       nb_ordi, nb_prop: in        
  
  
**R2** : **Comment** "Choisir le nombre de l'ordinateur" ?  
    Obtenir nombre aléatoire n !-- Action élémentaire car fournie par un package  
    **Ecrire** ("J'ai choisi un nombre compris entre 1 et 999.")  
  
  
  
**R2** :  **Comment** "Demander au joueur une proposition" ?  
    **Ecrire** ("Proposition ")  
    **Ecrire** (nb_prop)  
    **Ecrire** (" :")  
    Lire (prop)  
  
**R2** : **Comment** "Traiter la proposition du joueur" ?  
    nb_ordi <- n  
    proposition_joueur <- prop  
    Si nb_ordi > proposition_joueur Alors  
        **Ecrire** ("Trop petit.")  
    SinonSi nb_ordi < proposition_joueur Alors  
        **Ecrire** ("Trop grand.")  
    Sinon  
        Rien  
    FinSi  
  
  
**R2** : **Comment** "Afficher message victoire" ?  
    **Ecrire** ("Trouvé.")  
    **Ecrire** ("Bravo. Vous avez trouvé ")  
    **Ecrire** (nb_ordi)  
    **Ecrire** (" en ")  
    **Ecrire** (nb_prop)  
    **Ecrire** ("essai(s).")  
