class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def change_player
    @current_player == @player1 ? @current_player = @player2 : @current_player = @player1
    puts "----- NEW TURN -----"
  end

  def new_question
    num1 = rand(1...20)
    num2 = rand(1...20)
    
    puts "#{@current_player.name}: What is #{num1} plus #{num2}?"
    answer = num1 + num2
    user_answer = gets.chomp
    if answer.to_i == user_answer.to_i
      puts "#{@current_player.name}: YES! You are correct!"
      @current_player.increase_score
    else
      puts "#{@current_player.name}: Sorry! That is incorrect!"
      @current_player.decrease_lives
    end
    puts "#{@player1.name}: #{@player1.score} vs. #{@player2.name}: #{@player2.score}"
  end

  def start_game 
    while @current_player.lives != 0
      self.new_question

      if @current_player.lives == 0
        self.end_game
        break
      else
        self.change_player
      end
    end
  end

  def end_game
    winner = @current_player == @player1 ? @player2 : @player1
    puts "#{winner.name} wins with a score of #{winner.score}!"
    puts "----- GAME OVER ------"
    puts "Good bye!"
  end
end

