=begin 
psuedo-code for game logic
1) output: question statement requires problem class and current player from player class.
2) input: player answers with number and number is compared with problem answer from problem class to see if answer is right or wrong.
3a) output: if player answers wrong and has life left then update current player life stats using player class and output each players current lives, then change current player and repeat loop 1-3a
3b) output: If player answers wrong and  no lives left for 1 player then output winning player with lives left and end game.
=end

class Game
  def initialize(name)
    @name = name
    self.game_control
  end

  def game_control
    player1 = Player.new("Player 1", "3/3", false)
    player2 = Player.new("Player 2", "3/3", false)
    current_player = player1.name
    problem = Problem.new("1")
    question = problem.question
    puts "#{current_player}: #{question}"
  end
end


