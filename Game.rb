require "./Player"
require "./Board"

class Game

  def initialize
  	puts "\nVeuillez entre votre nom player 1"
	player_1 = gets.chomp
	player_1 = Player.new(player_1, "X")
	puts "#{player_1.name} vous avez le signe #{player_1.mark}."

	puts "\nVeuillez entre votre nom player 2"
	player_2 = gets.chomp
	player_2 = Player.new(player_2, "O")
	puts "#{player_2.name} vous avez le signe #{player_2.mark}."

	game_begin
  end

  def game_begin
	board = Board.new
	turn
  end

  def turn (player_1, player_2)
  	
  	board.game_played
  end

end

Game.new




