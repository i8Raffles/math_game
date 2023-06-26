class Game
  attr_reader :players, :current_player

  def initialize(player_names)
    @players = player_names.map{ |name| Player.new(name) }
    @current_player = @players.first
    @game_over = false
  end
  
  def start
    take_turn while !game_over?
    end_game
  end

  def display_scores
    scores = players.map { |player| "#{player.name}: #{player.score}/#{Player::INITIAL_LIVES}" }
    puts scores.join(' vs ')
  end
  
  def end_game
    winner = players.find { |player| player.score != 0 }
    puts "#{winner.name} wins with a score of #{winner.score}/#{Player::INITIAL_LIVES}"
    puts "----- GAME OVER -----"
    puts "Goodbye!"
  end

  private

  def take_turn
    puts "----- NEW TURN -----"
    current_player.take_turn
    display_scores
    switch_turn unless game_over?
  end

  def switch_turn
    current_index = players.index(current_player)
    @current_player = players[(current_index + 1) % players.size]
  end

  def game_over?
    players.any? { |player| player.dead? }
  end
end