class Player

  DEFAULT_HIT_POINTS = 60
  attr_reader :name , :hitpoints

  def initialize(name, hitpoints = DEFAULT_HIT_POINTS)
    @name = name
    @hitpoints = hitpoints
  end

  def be_attacked
    @hitpoints -= rand(1..10)
  end

end
