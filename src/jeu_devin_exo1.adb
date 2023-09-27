with Text_Io;              use Text_Io;
with Ada.Integer_Text_Io;  use Ada.Integer_Text_Io;
with Alea;

-- Auteur : 
--
-- TODO: à compléter...
procedure Jeu_Devin_Exo1 is
	package Mon_Alea is 
		new Alea( 1, 999); -- générateur de nombre dans l'intervalle [1, 999]
	use Mon_Alea;


	nb_ordi: Integer;
	nb_prop : Integer;
	proposition_joueur: Integer;

begin
	
	-- Choisir le nombre de l'ordinateur
	Get_Random_Number(nb_ordi);
	Put("J'ai choisi un nombre entre 1 et 999.");
	New_Line;



	nb_prop := 0;
	loop
		nb_prop := nb_prop + 1;
		
		-- Demander une proposition_joueur au joueur
		Put("Proposition ");
		Put(nb_prop, 1);
		Put(": ");
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
