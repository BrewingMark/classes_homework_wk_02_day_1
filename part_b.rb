class FootballTeam

  attr_reader :team_name
  attr_accessor :coach_name, :players

  def initialize(team_name, coach_name, players)
    @team_name = team_name
    @coach_name = coach_name
    @players = players
  end

  # def team_name()
  #   return @team_name
  # end
  #
  # def coach_name()
  #   return @coach_name
  # end
  #
  # def players()
  #   return @players
  # end
  #
  # def set_coach_name(new_coach_name)
  #   @coach_name = new_coach_name
  # end

  def add_new_player(new_player)
    @players << new_player
  end

end
