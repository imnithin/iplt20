class Group < ActiveRecord::Base
  
  GROUP_TYPES = [["BATTING",1],["BOWLING",2]]

  has_many :users, through: :user_groups
  has_many :user_groups
  
  def type
    type_id ? "Batting" : "Bowling"
  end
end
