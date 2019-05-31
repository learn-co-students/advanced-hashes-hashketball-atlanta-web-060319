def game_hash
  game_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
        :number => 0,
        :shoe => "16",
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 2,
        :slam_dunks => 1,
      },
      "Reggie Evans" => {
        :number => 30,
        :shoe => "14",
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7,
      },
      "Brooke Lopez" => {
        :number => 11,
        :shoe => "17",
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15,
      },
      "Mason Plumlee" => {
        :number => 1,
        :shoe => "19",
        :points => 26,
        :rebounds => 12,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5,
      },
      "Jason Terry" => {
        :number => 31,
        :shoe => "15",
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1,
      },
     }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => "18",
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2,
      },
      "Bismak Biyombo" => {
        :number => 0,
        :shoe => "16",
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 7,
        :blocks => 15,
        :slam_dunks => 10,
      },
      "Ben Gordon" => {
        :number => 8,
        :shoe => "15",
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0,
      },
      "Brendan Haywood" => {
        :number => 33,
        :shoe => "15",
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 22,
        :blocks => 5,
        :slam_dunks => 12,
      },
      "DeSagna Diop" => {
        :number => 2,
        :shoe => "14",
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5,
      }
    }
  }
}
end

def num_points_scored(player_name)
  game_hash[team][:players].each do |name, stats|
    if player_name == name
      return stats[:points]
    end
  end
end

def team_colors(name_of_team)
  game_hash.each do |team, chars|
    game_hash[team].each do |name, chars|
      if name_of_team == chars
        return game_hash[team][:colors]
      end
    end
  end
end

def team_names
  team = []
  game_hash.each do |team, chars|
    teams.push(game_hash[team][:team_name])
  end
  return teams
end

def players_numbers(name_of_team)
  numbers = []
  game_hash.each do |team, chars|
    if name_of_team == game_hash[item][:team_name]
      game_hash[team][:players].each do |name, stats|
        numbers.push(stats[:number])
      end
    end
  end
  return numbers
end

def team_colors(team)
  if team == "Charlotte Hornets"
    game_hash[:away][:colors]
  elsif team == "Brooklyn Nets"
    game_hash[:home][:colors]
  else

  end
end

def player_stats(player_name)
  game_hash.keys.each do |team|
    if game_hash[team][:players].keys.include?(player_name)
      return game_hash[team][:players][player_name]
    end
  end
end
end
