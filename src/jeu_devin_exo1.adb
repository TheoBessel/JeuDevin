with Text_Io;              use Text_Io;
with Ada.Integer_Text_Io;  use Ada.Integer_Text_Io;
with Alea;

-- Auteur : Antoine Lebeault - ENSEEIHT 1A SN - Groupe D


procedure Jeu_Devin_Exo1 is
	
	BORNE_MIN : constant Integer :=	1;
	BORNE_MAX : constant Integer := 999;

	package Mon_Alea is 
		new Alea( BORNE_MIN, BORNE_MAX); -- générateur de nombre dans l'intervalle [BORNE_MIN, BORNE_MAX]
	use Mon_Alea;


	nb_ordi: Integer;
	nb_prop : Integer;
	proposition_joueur: Integer;

begin
	
	-- Choisir le nombre de l'ordinateur
	Get_Random_Number(nb_ordi);
	Put("J'ai choisi un nombre compris entre ");
	Put(BORNE_MIN, 1);
	Put(" et ");
	Put(BORNE_MAX, 1);
	Put(".");
	New_Line;

	nb_prop := 0;
	loop
		nb_prop := nb_prop + 1;
		
		-- Demander une proposition_joueur au joueur
		Put("Proposition ");
		Put(nb_prop, 1);
		Put(" : ");
		Get(proposition_joueur);

		-- Traiter la proposition_joueur du joueur
		if nb_ordi > proposition_joueur then
			Put("Trop petit.");
			New_Line;
		elsif nb_ordi < proposition_joueur then
			Put("Trop grand.");
			New_Line;
		end if;

	exit when proposition_joueur = nb_ordi;
	end loop;
	
	-- Afficher message victoire
	Put("Trouvé.");
	New_Line;
	Put("Bravo. Vous avez trouvé ");
	Put(nb_ordi, 1);
	Put(" en ");
	Put(nb_prop, 1);
	Put(" essai(s).");
	New_Line;


end Jeu_Devin_Exo1;
