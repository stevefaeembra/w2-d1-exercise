class SportsTeam

  attr_reader :name, :players, :coach
  attr_writer :coach
  
  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
  end

end
