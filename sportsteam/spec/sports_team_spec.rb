require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test

  def test_make_sportsteam
    team = SportsTeam.new("Team 1", ["Steven","Cat"], "Megabus")
    assert_equal("Team 1", team.name)
  end

  def test_get_team_name
    team = SportsTeam.new("Team 1", ["Steven","Cat"], "Megabus")
    assert_equal("Team 1", team.name)
  end

  def test_get_players
    team = SportsTeam.new("Team 1", ["Steven","Cat"], "Megabus")
    assert_equal(["Steven","Cat"], team.players)
  end

  def test_get_coach
    team = SportsTeam.new("Team 1", ["Steven","Cat"], "Megabus")
    assert_equal("Megabus", team.coach)
  end

  def test_set_coach_name
    team = SportsTeam.new("Team 1", ["Steven","Cat"], "Megabus")
    team.coach = "National Express"
    assert_equal("National Express", team.coach)
  end
end
