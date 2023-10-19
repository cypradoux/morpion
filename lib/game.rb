require_relative 'boardcase'
require_relative 'player'
require_relative 'board'
require 'pry'

class Game < Board
        attr_accessor :current_player, :status, :board, :players

    def initialize(player1, player2)
        #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
        @board = Board.new
        
        @players = []
        @current_player = Player.new(player1,"X","0")
        @players << @current_player
        @current_player = Player.new(player2,"O","1")

        @players << @current_player

    end

    def turn
        #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
        @board.display_board
        play_turn(@current_player)

        if @current_player.victory? || turn_count > 9
            puts "stop the game"
        else
            play_turn(@current_player)
        end

        #boucle while turn_count > 9 et personne n'a gagné on joue
        #if pour vérifier si y'a une win de quelqu'un
    end

    def new_round
         # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
    end

    def game_end
        # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
    end
end