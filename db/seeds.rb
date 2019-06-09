# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times{Artist.create(name: Faker::Music::RockBand.name, bio: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")}

genre1 = Genre.create(name: "Rock")
genre2 = Genre.create(name: "Metal")
genre3 = Genre.create(name: "Thrash")
genre4 = Genre.create(name: "Alternative-Rock")
genre5 = Genre.create(name: "Soft Rock")
genre6 = Genre.create(name: "Techno-Rock")

30.times{Song.create(name: Faker::Music::Phish.song, artist_id: rand(Artist.all.first.id..Artist.all.last.id), genre_id: Genre.all.first.id..Genre.all.last.id)}
