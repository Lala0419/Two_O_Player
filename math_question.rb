class MathQuestion
  attr_reader :question

  def initialize
    generate_question
  end

  def generate_question
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @correct_answer = @num1 + @num2
    @question = "What is #{@num1} + #{@num2}?"
  end

  def check_answer(answer)
    answer.to_i == @correct_answer
  end
end

