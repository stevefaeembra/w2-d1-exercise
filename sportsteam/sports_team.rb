class SportsTeam

  attr_reader :name, :players, :coach
  attr_writer :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
  end

  def add_player(new_player)
    @players << new_player
  end

  def has_player_called(existing_player)
    @players.member? existing_player
  end

end
