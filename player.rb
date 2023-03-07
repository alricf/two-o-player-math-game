class Player

  attr_reader :name, :lives
  attr_writer :lives

  def initialize(name, lives)
    @name = name
    @lives = lives
  end

  def alive?
    self.lives != 0
  end

  def dead?
    self.lives == 0
  end
end