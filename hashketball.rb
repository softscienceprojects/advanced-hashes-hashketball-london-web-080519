# Write your code here!
require "pry"

def game_hash
{
  :home => {:team_name => "Brooklyn Nets",
            :colors => ["Black", "White"],
            :players => [
              {
              :player_name => "Alan Anderson",
              :number => 0,
              :shoe => 16,
              :points => 22,
              :rebounds => 12,
              :assists => 12,
              :steals => 3,
              :blocks => 1,
              :slam_dunks => 1
              },
              {
              :player_name => "Reggie Evans",
              :number => 30,
              :shoe => 14,
              :points => 12,
              :rebounds => 12,
              :assists => 12,
              :steals => 12,
              :blocks => 12,
              :slam_dunks => 7
              },
              {
              :player_name => "Brook Lopez",
              :number => 11,
              :shoe => 17,
              :points => 17,
              :rebounds => 19,
              :assists => 10,
              :steals => 3,
              :blocks => 1,
              :slam_dunks => 15
              },
              {
              :player_name => "Mason Plumlee",
              :number => 1,
              :shoe => 19,
              :points => 26,
              :rebounds => 11,
              :assists => 6,
              :steals => 3,
              :blocks => 8,
              :slam_dunks => 5
              },
              {
              :player_name => "Jason Terry",
              :number => 31,
              :shoe => 15,
              :points => 19,
              :rebounds => 2,
              :assists => 2,
              :steals => 4,
              :blocks => 11,
              :slam_dunks => 1
              },

              ]},
  :away => {:team_name => "Charlotte Hornets",
            :colors => ["Turquoise", "Purple"],
            :players => [
              {
              :player_name => "Jeff Adrien",
              :number => 4,
              :shoe => 18,
              :points => 10,
              :rebounds => 1,
              :assists => 1,
              :steals => 2,
              :blocks => 7,
              :slam_dunks => 2
              },
              {
              :player_name => "Bismack Biyombo",
              :number => 0,
              :shoe => 16,
              :points => 12,
              :rebounds => 4,
              :assists => 7,
              :steals => 22,
              :blocks => 15,
              :slam_dunks => 10
              },
              {
              :player_name => "DeSagna Diop",
              :number => 2,
              :shoe => 14,
              :points => 24,
              :rebounds => 12,
              :assists => 12,
              :steals => 4,
              :blocks => 5,
              :slam_dunks => 5
              },
              {
              :player_name => "Ben Gordon",
              :number => 8,
              :shoe => 15,
              :points => 33,
              :rebounds => 3,
              :assists => 2,
              :steals => 1,
              :blocks => 1,
              :slam_dunks => 0
              },
              {
              :player_name => "Kemba Walker",
              :number => 33,
              :shoe => 15,
              :points => 6,
              :rebounds => 12,
              :assists => 12,
              :steals => 7,
              :blocks => 5,
              :slam_dunks => 12
              },
              ]}
}

end

#repl you lifesaver
def num_points_scored(name)
points = nil  #start off declaring the variable to store your answer
 game_hash.values.each do |a| #for each of the top-level hashes (home,away)
   a[:players].select do |k,v| #select from the players key it's key-values
     if k[:player_name] == name #if the key player name is the same as name
     points = k[:points] #then we want the value in points
     end
   end
 end
points
end

def shoe_size(name)
  #return their shoe size
  shoe = nil  #start off declaring the variable to store your answer
   game_hash.values.each do |a| #for each of the top-level hashes (home,away)
     a[:players].select do |k,v| #select from the players key it's key-values
       if k[:player_name] == name #if the key player name is the same as name
       shoe = k[:shoe] #then we want the value in shoe
       end
     end
   end
  shoe
end

def team_colors(team_name)
  #return array of that team's colours
colors = []
 game_hash.values.each do |a|
    if a[:team_name] == team_name
    colors = a[:colors]
    end
end
colors
end

def team_names
 #operates on game_hash to
 # return array of team names
 game_hash.map{|a,b| p b[:team_name]}
end

def player_numbers(team_name)
  #returns array of jersey numbers for that team
b=[]
 game_hash.values.each do |a|
    if a[:team_name] == team_name
    b = a[:players].map {|a| a[:number]}
    end
end
b
end

def player_stats(name)
  #returns hash of that players stats
pstats = {}
 game_hash.values.each do |a|
  a[:players].select do |k,v|
    if k[:player_name] == name
    pstats = {
      :assists=>k[:assists],
      :blocks=>k[:blocks],
      :number=>k[:number],
      :points=> k[:points],
      :rebounds=>k[:rebounds],
      :shoe=>k[:shoe],
      :slam_dunks=>k[:slam_dunks],
      :steals=>k[:steals]
      }
    end
  end
 end
 pstats
end

def big_shoe_rebounds
  #find player with largest shoe size
  #return player's number of rebounds
  answer = nil
  memo = 0 #as you need to compare numbers to numbers, set as 0
  game_hash.values.each do |a|
  a[:players].select do |k,v|
  if k[:shoe] > memo #compare the shoe to the memo, think this is similar to reduce
    memo = k[:shoe] #reassign to keep track of the memo
    answer = k[:rebounds] #and then your answer is the rebounds value
  end
  end
  end
  p answer
end
