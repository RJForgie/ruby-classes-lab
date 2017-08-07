class SportsTeam

  attr_reader( :team_name, :players, :coach, :points )
  attr_accessor( :team_name, :players, :coach, :points )

  def initialize( team_name, players, coach, points )
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  # def team_name
  #   @team_name
  # end
  #
  # def players
  #   @players
  # end
  #
  # def coach
  #   @coach
  # end
  #
  # def change_coach
  #   @coach = "Fred"
  # end

  def add_player(player)
    @players.push(player)
  end

  def search_player(name)
    for player in @players
      if player == name then
        return true
      end
    end
    return false
  end

  def has_won?(result)
    if result == "win" then
      @points += 1
    end
  end





end
