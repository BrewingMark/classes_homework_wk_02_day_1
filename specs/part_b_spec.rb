require('minitest/autorun')
require('minitest/reporters')
require_relative('../part_b.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestFootballTeam < MiniTest::Test

  def setup()
    @players = ["Joe Smith", "Joe Jo", "Joe mcJoe", "Joe Blogs Jr", "Joe Cooper"]
    @points = 0
    @team = FootballTeam.new("Avarage Joes", "Joe Blogs", @players, @points)
  end

  def test_team_name()
    team = @team
    assert_equal("Avarage Joes", team.team_name())
  end

  def test_coach_name()
    team = @team
    assert_equal("Joe Blogs", team.coach_name())
  end

  def test_players()
    team = @team
    assert_equal(@players, team.players())
  end

  def test_set_coach_name()
    team = @team
    team.coach_name = "Joe Pasquale"
    assert_equal("Joe Pasquale", team.coach_name())
  end

  def test_add_new_player()
    team = @team
    team.add_new_player("Joe Pesci")
    assert_equal(6, @players.length)
  end

  def test_check_if_player()
    team = @team
    assert_equal(true, team.check_if_player("Joe Smith"))
    assert_equal(false, team.check_if_player("Will Smith"))
  end


  def test_result_win()
    team = @team
    team.result("win")
    assert_equal(3, @points)
  end

end
