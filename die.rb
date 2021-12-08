class Die

  attr_reader :number_of_sides
  attr_accessor :value
  attr_reader :random

  def initialize(number_of_sides)
    @number_of_sides = number_of_sides
    @value = 1
    @random = Random.new
  end

  def roll!
    self.value = random.rand(1..number_of_sides)
  end

end
