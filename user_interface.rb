class UserInterface
  def self.display_question(question)
    puts question
  end

  def self.get_player_answer
    gets.chomp
  end

  def self.display_scores(scores)
    puts "Scores: #{scores}"
  end
end