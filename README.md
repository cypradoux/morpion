# morpion

Class Player : initialisation des deux joueurs avec leur nom, leur value (symbole X ou O) et l'index qui représente joueur 1 ou joueur 2

Class BoardCase : initialiser l'identifiant des cellules du plateau

Class Board (hérite de BoardCase) : 
Méthode initialize : Création du plateau @board et création d'un array @cells avec les 9 cases

Méthode display_board : création d'un plateau qui renseigne " " dans chaque case grâce à la méthode "board_clean"
et se met à jour avec la méthode play_turn(player).
La méthode play_turn(player) demande l'index du player pour savoir si on utilise X ou O puis demande ce qu'il souhaite faire
On fait toutes les possibilités de case et on remplace l'espace dans le board par la croix ou le rond

Turn_count permet de compter le nombre de tour pour savoir quand est-ce que le jeu se fini s'il y a match nul

Méthode victory? : demande toutes les possibilités de win pour voir si quelqu'un a gagner ou si match nul (turn_count > 9)

Class Game 
initialize : on créé le plateau et les joueurs en faisant appel aux classes player et board. Les infos des joueurs proviennent de la classe Application

Méthode turn : pas aboutie mais l'idée était d'afficher le plateau et de faire une boucle pour savoir si le jeu continue ou pas (doublon avec board?)

Class Application 
Méthode start_game : message d'accueil du jeu ...
Méthode ask_player 1 & 2 : permet de récupérer le nom des joueurs qui vont servir à leur création

Méthode perform : exécution des méthodes et bloquage au game.turn
