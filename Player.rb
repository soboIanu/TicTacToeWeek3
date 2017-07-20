class Player
	attr_accessor :name1, :name2
  #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?
  
  def initialize(name)
  	@name1 = name1
  	@name2 = name2
  	@sign = sign
    #TO DO : doit régler son nom, sa valeur, son état de victoire
  end

  def name_player
  	puts "Player 1, veuillez entrer votre nom: "
  	@name1 = gets.chomp

  	puts "\nPlayer 2, veuillez entrer votre nom: "
  	@name2 = gets.chomp
  end
end

