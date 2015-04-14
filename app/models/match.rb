class Match < ActiveRecord::Base

  has_many :teams
  has_many :users, through: :user_matches
  has_many :user_matches
end
