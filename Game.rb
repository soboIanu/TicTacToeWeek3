require "./Player"
require "./Board"

class Game

@@count = 0

  def initialize
  	puts "\nVeuillez entre votre nom player 1"
	player_1 = gets.chomp
	player_1 = Player.new(player_1, "X")
	puts "#{player_1.name} vous avez le signe #{player_1.mark}."

	puts "\nVeuillez entre votre nom player 2"
	player_2 = gets.chomp
	player_2 = Player.new(player_2, "O")
	puts "#{player_2.name} vous avez le signe #{player_2.mark}."

	@board = Board.new
	turn(player_1, player_2)
  end

  def turn(player_1, player_2)
  	puts "\nVeuillez indiquer qui joue en premier ? Tapez 1 pour #{player_1.name} ou 2 pour #{player_2.name}"
  	answer = gets.chomp 

  	if answer == "1"
      current_player = player_1
	  	puts current_player.name
    else
		  current_player = player_2
		  puts current_player.name
    end

  	for n in 1..9 do
      if current_player == player_1
        play(current_player)
  	    current_player = player_2
  	  else
  	    play(current_player)
  	    current_player = player_1
      end
      end
  	
      @board.game_played
      puts " \n ================================= "
      puts " =========== MATCH NUL =========== "
      puts " ================================= "
    end
  end

  def play(current_player)
  	@board.game_played
  	flag = true
  	
    while flag do
      puts ""
      print "Ou voulez-vous jouer? < 1-9 >: "
      position = gets.chomp

      if position.to_i < 1 || position.to_i > 9
        puts "\nImpossible de jouer ici. Veuillez choisir un numéro entre 1 et 9\n"
        flag = true
      elsif @board.positions[position] != " "
        puts "\nCette case est déjà prise. Choisissez une autre case\n"
        flag = true
      else
        flag = false
        @board.positions[position] = current_player.mark
    end
  end

  def winning (board)

  end

end

Game.new