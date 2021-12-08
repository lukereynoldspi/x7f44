class Die

  attr_reader :number_of_sides, :random
  attr_accessor :value

  def initialize(number_of_sides)
    @number_of_sides = number_of_sides
    @value = 1
    @random = Random.new
  end

  def roll!
    self.value = random.rand(1..number_of_sides)
  end

end
