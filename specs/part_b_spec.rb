require('minitest/autorun')
require('minitest/reporters')
require_relative('../part_b.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBankAccount < MiniTest::Test

  def setup()
    @players = ["Joe Smith", "Joe Jo", "Joe mcJoe", "Joe Blogs Jr", "Joe Cooper"]
    @team = FootballTeam.new("Avarage Joes", "Joe Blogs", @players)
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

end
