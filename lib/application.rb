require_relative 'boardcase'
require_relative 'player'
require_relative 'board'
require_relative 'game'
require 'pry'

class Application
    attr_accessor
    def start_game
    #  TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
        puts "Bienvenue dans le jeu du morpion !"
    end

    def ask_player1
        puts "Joueur 1, quel est ton prénom ?"
        player1 = gets.chomp
        
        puts "Ca roule #{player1}, tu auras la croix"
        return player1
    end

    def ask_player2

        puts "Joueur 2, quel est on prénom ?"
        player2 = gets.chomp
        
        puts "Ca roule #{player2}, tu auras le rond"
        return player2
    end

    def perform
        start_game
        player1 = ask_player1
        player2 = ask_player2
        game = Game.new(player1, player2)
        game.turn
    end

end