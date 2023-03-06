require './player'
require './game'

# Deinfe Players
bluey = Player.new("Bluey")
bingo = Player.new("Bingo")

# Define a new game
new_game = Game.new(bluey, bingo)

# Start the game
new_game.start_game
