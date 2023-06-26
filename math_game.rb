# Game:

# Role: The Game class will manage the overall game logic, including the game loop and tracking the current player.
# Relevant information:
# Number of players
# Current player
# Initialization:
# Number of players
# Public methods:
# start: Starts the game and runs the game loop
# display_scores: Displays the current scores for both players
# end_game: Announces the winner and the other player's score


# Player:

# Role: The Player class will represent a player in the game, keeping track of their lives and handling their turn.
# Relevant information:
# Name of the player
# Number of lives remaining
# Initialization:
# Player name
# Public methods:
# take_turn: Handles the player's turn, prompts the question, and checks the answer
# decrease_life: Decreases the player's life count by 1
# alive?: Checks if the player has any lives remaining


# Question:

# Role: The Question class will generate random addition math questions for the players' turns.
# Relevant information:
# Two randomly generated numbers for the addition
# Initialization:
# No initialization required
# Public methods:
# generate: Generates a new addition question with two random numbers
# check_answer: Checks if the provided answer is correct for the question
# Which class will contain the game loop (where each instance of the loop is the other players turn)?

# The Game class will contain the game loop, where each instance of the loop represents the other player's turn.
# Which class should manage who the current_player is?

# The Game class should manage who the current_player is.
# Which class(es) will contain user I/O and which will not have any?

# The Game class will contain user I/O, as it will handle displaying scores and announcing the winner.
# The Player and Question classes will not have any user I/O.