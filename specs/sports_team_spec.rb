require('minitest/autorun')
require('mintest/reporters')
require_relative('../sports_team')

Minitest::Reporters.use!
Minitest::Reporters::SpecRepoter.new

class TestSports_team < MiniTest::Test

 def setup
  @sports_team = Sports_Team.new("Celtic",["Ronaldo","scotBrown", "James"],
                  "Neil")
 end  # ---------ends setup------

 #TestGetters
 def test_get_team_name
   assert_equal('Celtic', @sports_team.team_name)
 end

 def test_get_players
   array = ["Ronaldo","scotBrown", "James"]
   assert_equal(array,@sports_team.players)
 end

 def test_get_coach
   assert_equal('James', @sports_team.coach)
 end
#TestSetter
def test_set_coach_name
  @sports_team.coach = "Micheal"
  assert_equal('Micheal', @sports_team.coach)
end

def test_add_new_player
  @sports_team.players.push("Scot")
  assert_equal('Scot',@sports_team[3])
end

# def test_player_found
#   value = @sports_team.player_found(name)
#   assert_equal()
# end

end #-----------ends class-------
