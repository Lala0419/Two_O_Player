class Game 
  attr_reader :name

  def initialize(p1, p2)
    @players = [p1, p2]
    @current_player_index = 0
    @game_over = false
  end

  def start_game
     p "----- Game Start -----"

       until @game_over
      current_player = @players[@current_player_index]
      other_player_index = 1 - @current_player_index
      other_player = @players[other_player_index]

      puts "#{current_player.name}'s turn:"
      
      question = MathQuestion.new
      puts question.question

      user_answer = gets.chomp

      if question.check_answer(user_answer)
        puts "Correct! #{current_player.name} gets a point."
        current_player.increase_score
      else
        puts "Incorrect! #{current_player.name} loses a life."
        current_player.lose_life
      end

      puts "Scores: #{player_scores}"

      if current_player.get_lives == 0
        @game_over = true
        announce_winner(other_player)
      else
        switch_player
      end
    end
  end

  def switch_player
     @current_player_index = 1 - @current_player_index
  end

  def announce_winner(winner)
    puts "----- Game Over -----"
    puts "#{winner.name} wins with a score of #{winner.get_score}!"
    other_player_index = 1 - @current_player_index
    puts "#{@players[other_player_index].name} scored #{player_scores[other_player_index]}."
  end

  private

 def player_scores
    @players.map { |player| "#{player.name}: #{player.get_score}" }.join(", ")
  end

end