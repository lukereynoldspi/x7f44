class Game

  attr_reader :box, :dice

  def initialize(box, dice)
    @box = box
    @dice = dice
    puts "Welcome to Shut da Box!"
  end

  def over?
    box.shut? || box.can_flip_for?(dice.map(&:value).reduce(:+))
  end

  def prepare_next_round
    dice.each(&:roll!)
  end

  def play
    print '| '
    box.getTiles().each do |tile|
      print tile.to_s + ' | '
    end
    print "\n"
    print "You rolled: "
    dice.each do |die|
      print "#{die.value} "
    end
    puts "\n"
    puts "Which tiles would you like to flip (separate by spaces): "
    tiles_to_flip = gets.chomp
    prepare_next_round
  end

  def results
    box.shut? ? "You shut da box!" : "Game over, you did not shut da box."
  end

end
