
class Board

  attr_accessor :positions

  WINNING_POSITION = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]

  def initialize
    @positions = { 
      "1" => " ", "2" => " ", "3" => " ",
      "4" => " ", "5" => " ", "6" => " ",
      "7" => " ", "8" => " ", "9" => " "
    }
  end

  def game_played

    puts "\n\n=========================="
    puts "    DEBUT DE LA PARTIE    "
    puts "=========================="

    puts "\nPour jouer, choisissez votre position entre < 1 et 9 >"

    puts ""
    puts "   #{self.positions["1"]} | #{self.positions["2"]} | #{self.positions["3"]}     |     1 | 2 | 3 "
    puts "  -----------    |    -----------"
    puts "   #{self.positions["4"]} | #{self.positions["5"]} | #{self.positions["6"]}     |     4 | 5 | 6 "
    puts "  -----------    |    -----------"
    puts "   #{self.positions["7"]} | #{self.positions["8"]} | #{self.positions["9"]}     |     7 | 8 | 9 "
    puts ""
  end

  def victory?
    #TO DO : qui gagne ?
  end
end

