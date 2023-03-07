class Player

  attr_reader :name
  
  def initialize(name, lives, winner)
    @name = name
    @lives = lives
    @winner = winner
  end

  # def name
  #   @name
  # end

  def changePlayer
    if @current_player == "Player 1"
      return @current_player = "Player 2"
    else
      return @current_player = "Player 1"
    end
  end
end