# Task 1: Extract Nouns for Classes
#   In this task, we identify the nouns from the problem description that can be turned into classes. These nouns will serve as the foundation for our object-oriented design. Here are some nouns that could become classes:

#       1,Player
#       2,MathQuestion
#       3, Game



# Task 2: Write their roles and methods


#   1. Player Class:

#       - Role: This class represents a player in the game. It should keep track of a player's name, current score, and - - - remaining lives.
#       - Relevant Information: Player name, current score, remaining lives.
#       - Initialization: When creating a Player object, you'll need to initialize it with a name, set the score to zero,   and lives to the starting value of 3.
#       - Public Methods:
#           - lose_life: Decrements the player's remaining lives when they answer a question incorrectly.
#           - increase_score: Increases the player's score when they answer a question correctly.
#           - get_score: Retrieves the player's current score.
#           - get_lives: Retrieves the player's remaining lives.


#   2. MathQuestion Class:

#       - Role: This class represents a math question with two random numbers between 1 and 20. It generates questions and checks the player's answers.
#       - Relevant Information: Two random numbers for the question and the correct answer.
#       - Initialization: When creating a MathQuestion object, it should generate random numbers for the question and calculate the correct answer.
#       - Public Methods:
#          - generate_question: Generates a new random math question.
#          - check_answer(answer): Checks if the provided answer is correct and returns true or false.
#          - get_question: Retrieves the current math question.


#   3. Game Class:

#       - Role: This class manages the game logic, including the game loop and announcing the winner.
#       - Relevant Information: Current player, two Player objects, and the status of the game.
#       - Initialization: When creating a Game object, you'll need to initialize it with two Player objects and set the current player.
#       - Public Methods:
#         - start_game: Initiates the game loop, where players take turns answering questions until one loses all their lives.
#         - switch_player: Changes the current player after each turn.
#         - announce_winner: Announces the winner and the other player's score at the end of the game.

  
#   4. User Interface Class (Optional):

#       - Role: This class handles user input and output, displaying questions and collecting answers from players. It communicates with the Game class.
#       - Public Methods:
#         - display_question(question): Displays a math question to the current player.
#         - get_player_answer: Collects and returns the player's answer.
#         - display_scores: Displays the scores of both players after each turn.

#  5. Main Program:
    
     - Role: The main program initializes and orchestrates the game, creating instances of the Game class and possibly the User Interface class.

     - Additional Considerations:
       - The Game class will contain the game loop where players take turns.
       - The Game class will manage who the current player is by calling switch_player.
       - The User Interface class (if used) will handle user input/output and will interact with the Game class.


