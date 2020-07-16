# Write your code here!
require "pry"

def game_hash
 game_hash = {
   :home => {
     :team_name => "Brooklyn Nets",
     :colors => ["Black", "White"],
     :players => {
       "Alan Anderson" => {
         :number => 0,
         :shoe => 16,
         :points => 22,
         :rebounds => 12,
         :assists => 12,
         :steals => 3,
         :blocks => 1,
         :slam_dunks => 1
       },
       "Reggie Evans" => {
         :number => 30,
         :shoe => 14,
         :points => 12,
         :rebounds => 12,
         :assists => 12,
         :steals => 12,
         :blocks => 12,
         :slam_dunks => 7
       },
       "Brook Lopez" => {
         :number => 11,
         :shoe => 17,
         :points => 17,
         :rebounds => 19,
         :assists => 10,
         :steals => 3,
         :blocks => 1,
         :slam_dunks => 15
       },
       "Mason Plumlee" => {
         :number => 1,
         :shoe => 19,
         :points => 26,
         :rebounds => 12,
         :assists => 6,
         :steals => 3,
         :blocks => 8,
         :slam_dunks => 5
       },
       "Jason Terry" => {
         :number => 31,
         :shoe => 15,
         :points => 19,
         :rebounds => 2,
         :assists => 2,
         :steals => 4,
         :blocks => 11,
         :slam_dunks => 1
       }
       }
     },
   :away => {
     :team_name => "Charlotte Hornets",
     :colors => ["Turquoise", "Purple"],
     :players => {
       "Jeff Adrien" => {
         :number => 4,
         :shoe => 18,
         :points => 10,
         :rebounds => 1,
         :assists => 1,
         :steals => 2,
         :blocks => 7,
         :slam_dunks => 2
       },
       "Bismack Biyombo" => {
         :number => 0,
         :shoe => 16,
         :points => 12,
         :rebounds => 4,
         :assists => 7,
         :steals => 7,
         :blocks => 15,
         :slam_dunks => 10
       },
       "DeSagna Diop" => {
         :number => 2,
         :shoe => 14,
         :points => 24,
         :rebounds => 12,
         :assists => 12,
         :steals => 4,
         :blocks => 5,
         :slam_dunks => 5
       },
       "Ben Gordon" => {
         :number => 8,
         :shoe => 15,
         :points => 33,
         :rebounds => 3,
         :assists => 2,
         :steals => 1,
         :blocks => 1,
         :slam_dunks => 0
       },
       "Brendan Haywood" => {
         :number => 33,
         :shoe => 15,
         :points => 6,
         :rebounds => 12,
         :assists => 12,
         :steals => 22,
         :blocks => 5,
         :slam_dunks => 12
       }
     }
   }
 }
end

def num_points_scored(name)
  points = ""
  game_hash.each do |location, team_data|
    team_data.each do |data, info|
      if data == :players
      info.each do |player_name, stats|
        if name == player_name
          stats.each do |stats, values|
            # binding.pry
            if stats == :points
               points = values
               #binding.pry
            end
          end
        end
      end
      end
    end
  end
  return points
end

def shoe_size(name)
  shoes = ""
  game_hash.each do |location, team_data|
    team_data.each do |team_data, info|
      # binding.pry
      if team_data == :players
      info.each do |player_name, stats|
        # binding.pry
        if name == player_name
          stats.each do |stats, values|
            # binding.pry
            if stats == :shoe
               shoes = values
               #binding.pry
            end
          end
        end
      end
      end
    end
  end
  return shoes
end



def team_colors (team)
colors = []
game_hash.each do |location, attributes|
  # binding.pry
  attributes.each do |team_data, data|
    # binding.pry
    if data == team
      # binding.pry
      colors.push(attributes[:colors])
      colors = colors.flatten!
      # binding.pry
    end
  end
end
return colors
end



def team_names
  teams = []
  game_hash.each do |location, attributes|
    # binding.pry
    attributes.each do |attributes, values|
      # binding.pry
    if attributes == :team_name
      teams.push(values)
      # binding.pry
    end
    end
  end
  return teams
end

def player_numbers (teamname)
  team_numbers=[]
  game_hash.each do |location, attributes|
    if attributes[:team_name] == teamname
      attributes.each do |attribute, data|
        if attribute == :players
          data.each do |player, stats|
            stats.each do |stat, values|
            if stat == :number
              team_numbers.push(values)
          end
          end
        end
      end
      end
    end
    end
  return team_numbers
end



def player_stats (name)
  playstats = {}
  game_hash.each do |location, attributes|
    attributes.each do |attribute, data|
      # binding.pry
      if attribute == :players
        data.each do |data_key, stats|
          # binding.pry
          if data_key == name
            playstats.merge!(stats)
            # binding.pry
          end
        end
      end
    end
  end
  return playstats
end

def big_shoe_rebounds
  player_name = ""
  shoe_size = 0
  game_hash.each do |location, attributes|
    attributes.each do |attribute, info|
      if info.class == Hash
        info.each do |player, stats|
          # binding.pry
            stats.each do |statistic, value|
              # binding.pry
              if statistic == :shoe
                if value > shoe_size
                  shoe_size = value
                  player_name = player
                end
              end
            end
          end
        return game_hash[location][attribute][player_name][:rebounds]
      end
    end
  end
end
