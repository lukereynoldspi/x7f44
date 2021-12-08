class Box

  attr_reader :shut_tiles, :number_of_tiles, :tiles

  def initialize(number_of_tiles)
    @shut_tiles = []
    @number_of_tiles = number_of_tiles
    @tiles = []
    @number_of_tiles.times do |i|
      @tiles << i + 1
    end
    
  end

  def shut?
    @tiles.empty? && @shut_tiles.length == number_of_tiles
  end

  def can_flip_for?(value)
    false
  end

end
