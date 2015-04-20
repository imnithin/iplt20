# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

User.create(email: 'admin@ipl.com', password: 'admin@ipl.com', first_name: 'admin') unless User.any?

unless Team.any?
  [["CSK",1], ["DD",2], ["KKR",3], ["KXIP",4], ["MI",5], ["RCB",6], ["RR",7], ["SRH",8]].each do |team, code|
    Team.create(name: team)
  end
end


# Players

CSK_TEAM = ["Ashish Nehra", "Ben Hilfenhaus", "Brendon McCullum", "David Hussey", "Dwayne Bravo", 
  "Dwayne Smith", "Faf du Plessis", "Ishwar Pandey", "Jason Holder", "John Hastings", "MS Dhoni",
  "Mithun Manhas", "Mohit Sharma", "Pawan Negi", "Ravichandran Ashwin", "Ravindra Jadeja", 
  "S Badrinath", "Samuel Badree", "Suresh Raina", "Vijay Shankar"]

  CSK_TEAM.each do |player|
    Player.find_or_create_by(first_name: player.split.first, last_name: player.split.last, team_id: 1)
  end

  DD_TEAM = %w(Manoj Tiwary, Kedar Jadhav, Mayank Agarwal, Saurabh Tiwary, Shreyas Iyer, Travis Head, Srikar Bharat,
   Marcus Stoinis, Domnic Joseph, Shahbaz Nadeem, Jayant Yadav, Imran Tahir, Nathan Coulter-Nile, Jaydev Unadkat,
   Zaheer Khan, Amit Mishra, Jean-Paul Duminy, Angelo Mathews, Yuvraj Singh, Gurinder Sandhu, Albie Morkel,
   KK Jiyas, Quinton de Kock, Chidhambaram Gautam)


DD_TEAM.each do |player|
 Player.find_or_create_by(first_name: player.split.first, last_name: player.split.last, team_id: 2)
end

KKR_TEAM = %w(Gautam Gambhir, Robin Uthappa, Manish Pandey, Suryakumar Yadav, Sheldon Jackson, Vaibhav Rawal,
 Sunil Narine, Morne Morkel, Umesh Yadav, Pat Cummins, Veer Pratap,  SinghKuldeep Yadav, Brad Hogg, Piyush Chawla,
 Yusuf Pathan, Shakib Al Hasan, Ryan ten Doeschate, Andre Russell, Azhar Mahmood, Sumit Narwal, Aditya Garhwal,
 Kishan Cariappa, Johan Botha, Robin Uthappa)


KKR_TEAM.each do |player|
 Player.find_or_create_by(first_name: player.split.first, last_name: player.split.last, team_id: 4)
end

KXIP_TEAM = %w(David Miller, George Bailey, Gurkeerat Singh,  MannManan Vohra, Shaun Marsh, Shivam Sharma,
 Virender Sehwag, Murali Vijay, Nikhil Naik, Anureet Singh, Beuran Hendricks, Karanveer Singh, Parvinder Awana,
 Sandeep Sharma, Axar Patel, Glenn Maxwell, Mitchell Johnson, Rishi Dhawan, Shardul Thakur, Thisara Perera,
 Yogesh Golwalkar, Wriddhiman Saha)

KXIP_TEAM.each do |player|
 Player.find_or_create_by(first_name: player.split.first, last_name: player.split.last, team_id: 3)
end


MI_TEAM = %w(Rohit Sharma, Ambati Rayudu, Pawan Suyal, Shreyas Gopal, Lendl Simmons, Aiden Blizzard, Akshay Wakhare,
 Nitish Rana, Siddhesh Lad, Hardik Pandya, Unmukt Chand, Parthiv Patel, Lasith Malinga, Harbhajan Singh, 
 Marchant de Lange, Pragyan Ojha, Mitchell McClenaghan, Abhimanyu Mithun, Jagadeesha Suchith, Vinay Kumar,
 Kieron Pollard, Corey Anderson, Jasprit Bumrah, Aditya Tare)

MI_TEAM.each do |player|
 Player.find_or_create_by(first_name: player.split.first, last_name: player.split.last, team_id: 5)
end


RCB_TEAM = %w(Virat Kohli, AB de Villiers, Chris Gayle, Nic Maddinson, Vijay Zol, Yogesh Takawale,
 Rilee Rossouw, Manvinder Bisla, S Badrinath, Sarfaraz Khan, Mitchell Starc, Varun Aaron, Ashok Dinda,
 Harshal Patel, Abu Nechim, Sandeep Warrier, Yuzvendra Chahal, Adam Milne, Iqbal Abdulla, Mandeep Singh, 
 Darren Sammy, Sean Abbott, David Wiese, Jalaj Saxena, Shishir Bhavane, Dinesh Karthik)

RCB_TEAM.each do |player|
 Player.find_or_create_by(first_name: player.split.first, last_name: player.split.last, team_id: 7)
end


RR_TEAM = %w(Ajinkya Rahane, Steven Smith, Karun Nair, Deepak Hooda, Dishant Yagnik,  Rahul Tewatia,
 Brainder Sran, Sagar Trivedi, Tim Southee, Dhawal Kulkarni, Ben Cutting, Ankit Sharma, RustyTheron, 
 Shane Watson, Stuart Binny, James Faulkner, Rajat Bhatia, Abhishek Nayar, Vikramjeet Malik, 
 Pravin Tambe, Chris Morris, Dinesh Salunkhe, Pardeep Sahu, Sanju Samson)

RR_TEAM.each do |player|
 Player.find_or_create_by(first_name: player.split.first, last_name: player.split.last, team_id: 6)
end


SRH_TEAM = %w(Shikhar Dhawan, David Warner,  Lokesh Rahul, Ricky Bhui, Kane Williamson, Kevin Pietersen,
 Eoin Morgan, Prasanth Padmanabhan, Dale Steyn, Bhuvneshwar Kumar, Ishant Sharma, Trent Boult, Praveen Kumar,
 Siddarth Kaul, Moises Henriques, Parvez Rasool, Ashish Reddy, Chama Milind, Karn Sharma, Ravi Bopara,
 Laxmi Shukla, Hanuma Vihari, Naman Ojha)

SRH_TEAM.each do |player|
 Player.find_or_create_by(first_name: player.split.first, last_name: player.split.last, team_id: 8)
end


# Match.new(team1: 1, team2: 2, start_time: Date.today)