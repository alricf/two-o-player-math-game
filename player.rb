class Player

  attr_reader :name, :lives
  attr_writer :lives

  def initialize(name, lives)
    @name = name
    @lives = lives
  end
end