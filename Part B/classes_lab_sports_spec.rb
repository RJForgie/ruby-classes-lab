require("minitest/autorun")
require_relative("./classes_lab_sports")

class TestSportsTeam < MiniTest::Test

  def test_team_name
    sports_team = SportsTeam.new( "Aberdeen", ["Joe", "Jim", "John"], "Bob", 0 )
    sports_team.team_name
    assert_equal( "Aberdeen", sports_team.team_name )
  end

  def test_players
    sports_team = SportsTeam.new( "Aberdeen", ["Joe", "Jim", "John"], "Bob", 0 )
    sports_team.players
    assert_equal(["Joe", "Jim", "John"], sports_team.players)
  end

  def test_coach
    sports_team = SportsTeam.new("Aberdeen", ["Joe", "Jim", "John"], "Bob", 0 )
    sports_team.coach
    assert_equal("Bob", sports_team.coach)
  end

  def test_change_coach
    sports_team = SportsTeam.new("Aberdeen", ["Joe", "Jim", "John"], "Bob", 0 )
    sports_team.coach = "Fred"
    assert_equal("Fred", sports_team.coach)
  end

  def test_add_player
    sports_team = SportsTeam.new("Aberdeen", ["Joe", "Jim", "John"], "Bob", 0 )
    sports_team.add_player("Judy")
    assert_equal(["Joe", "Jim", "John", "Judy"], sports_team.players)
  end

  def test_search_player
    sports_team = SportsTeam.new("Aberdeen", ["Joe", "Jim", "John"], "Bob", 0 )
    result = sports_team.search_player("Jim")
    assert_equal(true, result)
  end

  def test_points
    sports_team = SportsTeam.new("Aberdeen", ["Joe", "Jim", "John"], "Bob", 0 )
    sports_team.has_won?("win")
    assert_equal( 1, sports_team.points )
  end



end
