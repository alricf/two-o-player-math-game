class Problem
  def initialize(name)
    @name = name
  end

  def question
    @random_num1 = rand(1..20)
    @random_num2 = rand(1..20)
    "What does #{@random_num1} plus #{@random_num2} equal?"
  end

  def answer
    answer = @random_num1 + @random_num2
  end

  def print
    self.question
  end
end