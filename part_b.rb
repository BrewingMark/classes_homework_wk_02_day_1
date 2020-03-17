class FootballTeam

  attr_reader :team_name
  attr_accessor :coach_name, :players, :points

  def initialize(team_name, coach_name, players, points)
    @team_name = team_name
    @coach_name = coach_name
    @players = players
    @points = points
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

  def check_if_player(player)
    @players.include?(player)
  end

  def result(result)
    if result == "win"
      @points += 3
    end
  end

end
