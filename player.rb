class Player 
  attr_reader :name

  def initialize(name)
    @name = name
    @score = 0
    @lives = 3
  end

  def lose_life
    @lives -=1
  end

  def increase_score
    @score +=1
  end

  def get_score
    @score
  end

  def get_lives
    @lives
  end
end