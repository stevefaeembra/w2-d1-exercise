class SportsTeam

  attr_reader :name, :players, :coach, :points
  attr_writer :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(new_player)
    @players << new_player
  end

  def has_player_called(existing_player)
    @players.member? existing_player
  end

  def update_points(game_outcome)
    values = {
      'win' => 1,
      'lose' => 0
    }
    @points += values[game_outcome]
  end

end
