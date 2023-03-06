<!-- Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life. -->

# 

Details
Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

players
  attributes: :name, :score, :lives

  def initialize(name)
    @name = name
    @score = 0
    @lives = 3
  end

role: keep track of all the players names, games won/lost, how many lives they have left
  methods
  increase_score()
  decrease_life()


games
attributes  :player1, :player2, :current_player
role: Keep track of which players turn it is, who the players in the game are, player scores (correct answers)

  def initialize(player1, player2)
    @current_player = player1
    @player1 = player1
    @player2 = player2
  end

--method generate_question(num1, num2) ? (takes user input, check if it matches num1 + num2)   /// Syntax rand(first...second) // returns true if the player got the asnwer correct, false if it was incorrect
--start_game() // starts the loop to 
--

questions - maybe just a method?
-could be an array of objects
role: 
- A new math question is generated for each turn by picking two numbers between 1 and 20.
--

