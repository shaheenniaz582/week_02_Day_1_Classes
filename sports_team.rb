class Sports_Team
  attr_accessor :team_name, :players[], :coach

  def initialize(input_team_name, input_players[], input_coach)
    @team_name = input_team_name
    @players[] = input_players[]
    @coach = input_coach
    @points = 0
  end #----ends initialize method----

def get_team_name
  return @team_name
end

def get_test_player
  return @players
end

def get_coach
  return @coach
end

def set_coach_name
  @coach = "Michel"
end

def add_new_player
  @players.push("Scot")
end

def player_found(name)
  found = 0
  for player in @players
    if(player == name)
       found = 1
     end
   end
  end

end #--------ends class
