require_relative 'boardcase'
require_relative 'player'

class Board < BoardCase
    attr_accessor :cells, :turn_count

    def initialize 
        turn_count = 0

        puts @board =
         "
        ╔════╦════╦════╗
        ║    ║    ║    ║
        ║    ║    ║    ║
        ╠════╬════╬════╣
        ║    ║    ║    ║
        ║    ║    ║    ║
        ╠════╬════╬════╣
        ║    ║    ║    ║
        ║    ║    ║    ║
        ╚════╩════╩════╝
          "

          @cells = Array.new()
          @cells << BoardCase.new("A1")
          @cells << BoardCase.new("A2")
          @cells << BoardCase.new("A3")
          @cells << BoardCase.new("B1")
          @cells << BoardCase.new("B2")
          @cells << BoardCase.new("B3")
          @cells << BoardCase.new("C1")
          @cells << BoardCase.new("C2")
          @cells << BoardCase.new("C3")

    end

    def display_board
        updated_board =" 
        ╔════╦════╦════╗
        ║ #{cells[0].value}  ║ #{cells[1].value}  ║ #{cells[2].value}  ║
        ║    ║    ║    ║ 
        ╠════╬════╬════╣
        ║ #{cells[3].value}  ║ #{cells[4].value}  ║ #{cells[5].value}  ║ 
        ║    ║    ║    ║ 
        ╠════╬════╬════╣
        ║ #{cells[6].value}  ║ #{cells[7].value}  ║ #{cells[8].value}  ║ 
        ║    ║    ║    ║                    
        ╚════╩════╩════╝
        "
        puts updated_board
    end

    def board_clean
        @cells[0].value = " "
        @cells[1].value = " "
        @cells[2].value = " "
        @cells[3].value = " "
        @cells[4].value = " "
        @cells[5].value = " "
        @cells[6].value = " "
        @cells[7].value = " "
        @cells[8].value = " "

    end

    def play_turn(player)
        #TO DO : une méthode qui :
        if player.index == "0"
            a = "X"
        else
            a = "O"
        end

        puts "Que veux-tu faire ? (Indique la position de la case dans laquelle tu veux jouer)"
        answer = gets.chomp
        #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)

        if answer == "A1"
            if @cells[0].value == " "
            @cells[0].value = a
                else puts "La place est déjà prise, donne une autre case"
                answer = gets.chomp
            end
        elsif answer == "A2"
            if @cells[1].value == " "
                @cells[1].value = a
                else puts "La place est déjà prise, donne une autre case"
                    answer = gets.chomp
            end
        elsif answer == "A3"
            if @cells[2].value == " "
                @cells[2].value = a
                else puts "La place est déjà prise, donne une autre case"
                    answer = gets.chomp
            end
        elsif answer == "B1"
            if @cells[3].value == " "
                @cells[3].value = a
                else puts "La place est déjà prise, donne une autre case"
                    answer = gets.chomp
            end
        elsif answer == "B2"
            if @cells[4].value == " "
                @cells[4].value = a
                else puts "La place est déjà prise, donne une autre case"
                    answer = gets.chomp
            end
        elsif answer == "B3"
            if @cells[5].value == " "
                @cells[5].value = a
                else puts "La place est déjà prise, donne une autre case"
                    answer = gets.chomp
            end
        elsif answer == "C1"
            if @cells[6].value == " "
                @cells[6].value = a
                else puts "La place est déjà prise, donne une autre case"
                    answer = gets.chomp
            end
        elsif answer == "C2"
            if @cells[7].value == " "
                @cells[7].value = a
                else puts "La place est déjà prise, donne une autre case"
                    answer = gets.chomp
            end
        elsif answer == "C3"
            if @cells[8].value == " "
                @cells[8].value = a
                else puts "La place est déjà prise, donne une autre case"
                    answer = gets.chomp
            end 
        end 
     turn_count = turn_count + 1
    end

    def victory?
        #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul 
        if turn_count > 9
            puts " La partie est terminée, match nul !"   
            elsif @cells[0].value == "X" && @cells[1].value == "X" && @cells[2].value == "X"
                puts "player 1 wins"
            elsif @cells[3].value == "X" && @cells[4].value == "X" && @cells[5].value == "X"
                puts "player 1 wins"
            elsif @cells[6].value == "X" && @cells[7].value == "X" && @cells[8].value == "X"
                puts "player 1 wins"
            elsif @cells[0].value == "X" && @cells[3].value == "X" && @cells[6].value == "X"
                puts "player 1 wins"
            elsif @cells[1].value == "X" && @cells[4].value == "X" && @cells[7].value == "X"
                puts "player 1 wins"
            elsif @cells[2].value == "X" && @cells[5].value == "X" && @cells[8].value == "X"
                puts "player 1 wins"
            elsif @cells[0].value == "X" && @cells[4].value == "X" && @cells[8].value == "X"
                puts "player 1 wins"
            elsif @cells[2].value == "X" && @cells[4].value == "X" && @cells[6].value == "X"
                puts "player 1 wins"
            else
                if @cells[0].value == "O" && @cells[2].value == "O" && @cells[2].value == "O"
                    puts "player 2 wins"
                elsif @cells[3].value == "O" && @cells[4].value == "O" && @cells[5].value == "O"
                    puts "player 2 wins"
                elsif @cells[6].value == "O" && @cells[7].value == "O" && @cells[8].value == "O"
                    puts "player 2 wins"
                elsif @cells[0].value == "O" && @cells[3].value == "O" && @cells[6].value == "O"
                    puts "player 2 wins"
                elsif @cells[2].value == "O" && @cells[4].value == "O" && @cells[7].value == "O"
                    puts "player 2 wins"
                elsif @cells[2].value == "O" && @cells[5].value == "O" && @cells[8].value == "O"
                    puts "player 2 wins"
                elsif @cells[0].value == "O" && @cells[4].value == "O" && @cells[8].value == "O"
                    puts "player 2 wins"
                elsif @cells[2].value == "O" && @cells[4].value == "O" && @cells[6].value == "O"
                    puts "player 2 wins"
            end
        end
    end
end

