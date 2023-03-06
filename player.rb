class Player
  # do we need to get and or set the player name?
  attr_accessor :name, :lives, :score

  def initialize(name)
    @name = name
    @score = 0
    @lives = 3
  end

  def increase_score
    @score += 1
    puts "Your got a point!"
  end

  def decrease_lives
    @lives -= 1

    if @lives > 0
      puts "You lost a life, #{@name}! You have #{@lives} lives."
    end
  end
end

