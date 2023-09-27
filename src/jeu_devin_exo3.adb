with Text_Io;              use Text_Io;
with Ada.Integer_Text_Io;  use Ada.Integer_Text_Io;
with Alea;
with Jeu_Devin_Exo1;
with Jeu_Devin_Exo2;

-- Auteur : Antoine Lebeault - ENSEEIHT 1A SN - Groupe D

procedure Jeu_Devin_Exo3 is

    Quitter: Boolean;
    choix_int: Integer;

begin
    Quitter := False;

    loop
        -- Afficher le menu
        Put("1- L'ordinateur choisit un nombre et vous le devinez");
        New_Line;
        Put("2- Vous choisissez un nombre et l'ordinateur le devine");
        New_Line;
        Put("0- Quitter le programme");

        -- Demander le choix de l'utilisateur
        Put("Votre choix : ");
        Get(choix_int);

        -- Traiter le choix de l'utilisateur
        case choix_int is
            when 0 => Put("Au revoir...");
                      Quitter := True;
            when 1 => Jeu_Devin_Exo1;
            when 2 => Jeu_Devin_Exo2;
            when others =>  Put("Choix incorrect.");
                            New_Line; 
        end case;
    exit when Quitter;
    end loop;
   
end Jeu_Devin_Exo3;