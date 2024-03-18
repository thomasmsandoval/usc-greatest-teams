# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Team.create!(year: 1972, image: "https://i.ebayimg.com/images/g/h8UAAOSwoT9jaVhr/s-l1600.jpg", information: "The 1972 USC Trojans football team represented the University of Southern California (USC) during the 1972 NCAA University Division football season. The Trojans won all 12 of their games and were consensus national champions.")
Team.create!(year: 2004, image: "https://m.media-amazon.com/images/I/51MndQ3JxZL._AC_UF100
0,1000_QL80_.jpg", information: "The 2004 USC Trojans football team represented the University of Southe
rn California in the 2004 NCAA Division I-A football season. The 2004 Trojans football team won the 2004
 BCS National Championship by winning the 2005 Orange Bowl, that year's BCS National Championship Game. 
The team also won the AP title for the second year in a row. It was the Trojans' first unanimous nationa
l championship since 1972, and the second time a team had gone wire-to-wire, with the Trojans holding th
e number 1 spot in the polls all season.")
