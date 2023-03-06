
# TwO-O-Player Math Game

## Description
Simple game to practice Object Oriented Programming in Ruby. Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.


# Planning

Class: Player
- Role: keep track of all the players names, games won/lost, how many lives they have left
- attributes: :name, :score, :lives
- methods: increase_score(), decrease_life()

Class: Game
- role: Keep track of which players turn it is, who the - - attributes  :player1, :player2, :current_player
- methods: change_player, new_question, start_game, end_game

# Getting Started

- clone the repo
- run from the project folder `ruby main.rb`
