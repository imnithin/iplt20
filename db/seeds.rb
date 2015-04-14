# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
unless Team.any?
  [["CSK",1], ["DD",2], ["KKR",3], ["KXIP",4], ["MI",5], ["RCB",6], ["RR",7], ["SRH",8]].each do |team, code|
    Team.create(name: team)
  end
end


# unless Player.any?

#   CSK_TEAM = ["Ashish Nehra", "Ben Hilfenhaus", "Brendon McCullum", "David Hussey", "Dwayne Bravo", 
#     "Dwayne Smith", "Faf du Plessis", "Ishwar Pandey", "Jason Holder", "John Hastings", "MS Dhoni",
#     "Mithun Manhas", "Mohit Sharma", "Pawan Negi", "Ravichandran Ashwin", "Ravindra Jadeja", 
#     "S Badrinath", "Samuel Badree", "Suresh Raina", "Vijay Shankar"]

#     CSK_TEAM.each do |player|
#       Player.create(first_name: player.split.first, last_name: player.split.last, team_id: 1)
#     end

#   end