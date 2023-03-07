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
    player1 = Player.new("Player 1", 3)
    player2 = Player.new("Player 2", 3)
    current_player = player1

    problem_number = 0
    while player1.lives != 0 && player2.lives != 0
      problem_number += 1
      problem = Problem.new("#{problem_number}")
      question = problem.question

      puts "#{current_player.name}: #{question}"
      print "> "
      user_answer = gets.chomp.to_i

      if user_answer == problem.answer
        puts "#{current_player.name}: YES! You are correct"
      else
        if current_player == player1
          player1.lives -= 1
        elsif current_player == player2
          player2.lives -= 1
        end
        if player1.lives != 0 && player2.lives != 0
          puts "#{current_player.name}: Seriously? No!"
        end
      end

      if player1.lives != 0 && player2.lives != 0
        puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
        puts "----- NEW TURN -----"

        if current_player == player1
          current_player = player2
        elsif current_player == player2
          current_player = player1
        end
      end
    end

    if player1.lives == 0
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      puts "Player 2 wins with a score of #{player2.lives}/3"
    end

    if player2.lives == 0
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      puts "Player 1 wins with a score of #{player1.lives}/3"
    end

    puts "----- GAME OVER -----"
    puts "Good bye!"

  end
end