require "./Player"
require "./Board"
require "./BoardCase"

class Game
  def initialize
  	puts "==================================================="
  	puts "Bienvenue dans l'experience interactive TIC_TAC_TOE"
  	puts "===================================================\n\n"

    puts "Player 1, veuillez entrer votre nom: "
    @name1 = gets.chomp
    while @sign != "X" && @sign != "O"
    	puts "\n#{@name1} veuillez choisir votre signe: X ou O "
    	@sign = gets.chomp
    	break if @sign == 0
    end

    puts "\nPlayer 2, veuillez entrer votre nom"
    @name2 = gets.chomp
    if @sign1 == "X"
    	@sign2 = "O"
    else
    	@sign2 = "X"
    end
    puts "\n#{@name2}, votre signe est #{@sign2}"
  end

  def go
    # TO DO : lance la partie
  end

  def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
  end

end

Game.new.go