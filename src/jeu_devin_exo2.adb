with Text_Io;              use Text_Io;
with Ada.Integer_Text_Io;  use Ada.Integer_Text_Io;
with Alea;

-- Auteur : Théo Bessel - ENSEEIHT 1A SN groupe D

procedure Jeu_Devin_Exo2 is
	Choisi, Devine : Boolean;
	Choix : Character;
	Nombre, Compteur, Inf, Sup : Integer;
-- Faire deviner à l'ordinateur un nombre choisi par l'utilisateur
begin
	-- Initialiser le jeu
	Choisi := False;
	Devine := False;
	Compteur := 0;
	Inf := 0;
	Sup := 1000;
	-- Faire choisir un nombre à l'utilisateur
	while not(Choisi) loop
		Put("Avez-vous choisi un nombre entre 1 et 999 (o/n) ? ");
		-- Lire le choix de l'utilisateur
		Get(Choix);
		case Choix is
			when 'o' | 'O' => Choisi := True;
			when others => Put_Line("J'attends...");
		end case;
	end loop;
	-- Deviner le nombre choisi par l'utilisateur
	while not(Devine) loop
		-- Proposer un nombre à l'utilisateur
		Nombre := (Inf + Sup)/2;
		Compteur := Compteur + 1;
		Put("Proposition "); Put(Compteur,1); Put(" : "); Put(Nombre,1);New_Line;
		-- Demander un retour de l'utilisateur
		Choisi := False;
		while not(Choisi) loop
			Put("Trop (g)rand, trop (p)etit ou (t)rouvé ? ");
			Get(Choix);
			case Choix is
				when 'g' | 'G' => Choisi := True; Sup := Nombre;
				when 'p' | 'P' => Choisi := True; Inf := Nombre;
				when 't' | 'T' => Choisi := True; Devine := True; Put_Line("J'ai trouvé "&Integer'Image(Nombre)&" en "&Integer'Image(Compteur)&" essai(s).");
				when others => Put_Line("Je n'ai pas compris. Merci de répondre :");
							   Put_Line("   g si ma proposition est trop grande");
							   Put_Line("   p si ma proposition est trop petite");
							   Put_Line("   t si j'ai trouvé le nombre");
			end case;
		end loop;
		-- Vérifier que l'utilisateur ne triche pas
		if ((Sup - Inf) <= 1 and Choix /= 't' and Choix /= 'T') then
            	Put_Line("Vous trichez. J’arrête cette partie.");
				-- Quitter le programme
				Devine := True;
		end if;
	end loop;
end Jeu_Devin_Exo2;
