require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test

  def setup
    @team = SportsTeam.new("Team 1", ["Steven","Cat"], "Megabus")
  end

  def test_make_sportsteam
    assert_equal("Team 1", @team.name)
  end

  def test_get_team_name
    assert_equal("Team 1", @team.name)
  end

  def test_get_players
    assert_equal(["Steven","Cat"], @team.players)
  end

  def test_get_coach
    assert_equal("Megabus", @team.coach)
  end

  def test_set_coach_name
    @team.coach = "National Express"
    assert_equal("National Express", @team.coach)
  end

  def test_add_player_to_team
    @team.add_player("Sniffles")
    assert_equal(["Steven", "Cat", "Sniffles"], @team.players)
  end

  def test_if_someone_is_in_team
    assert_equal(true, @team.has_player_called("Cat"))
  end

  def test_start_at_zero_points
    assert_equal(0, @team.points)
  end

  def test_win_increments_score
    @team.update_points("win")
    assert_equal(1, @team.points)
  end

  def test_lose_score_is_unchanged
    @team.update_points("lose")
    assert_equal(0, @team.points)
  end

end
