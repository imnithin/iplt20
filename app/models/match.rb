class Match < ActiveRecord::Base

  has_many :teams
  has_many :users, through: :user_matches
  has_many :user_matches

  has_one :team1, class_name: "Team", foreign_key: "id", primary_key: 'team1'
  has_one :team2, class_name: "Team", foreign_key: "id", primary_key: 'team2'

  def team_name(id)
    team_and_code = Hash.new(0)
    TEAM_AND_CODE.each do |team|
      team_and_code[team[1]] = team[0]
    end
    return team_and_code[id]
  end

  def first_team
    team_name(self.team1)
  end

   def second_team
    team_name(self.team2)
  end

  def teams
    first_team + 'vs' + second_team
  end

   def players_set_1
    # full_name(team_one.players)
    team1.players.map { |player| [player.full_name, player.id]  }
   end

   def players_set_2
    # full_name(team_one.players)
    team2.players.map { |player| [player.full_name, player.id]  }
   end 

end
