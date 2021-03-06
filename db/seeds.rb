# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

Booking.destroy_all if Rails.env.development?
Band.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?
Category.destroy_all if Rails.env.development?
Genre.destroy_all

genres = ["Blues","Classic Rock","Country","Dance","Disco","Funk","Grunge",
 "Hip-Hop","Jazz","Metal","New Age","Oldies","Other","Pop","R&B",
 "Rap","Reggae","Rock","Alternative","Ska"]

# genres = ,"Grunge",
#  "Hip-Hop","Jazz","Metal","New Age","Oldies","Other","Pop","R&B",
#  "Rap","Reggae","Rock","Techno","Industrial","Alternative","Ska",
#  "Death Metal","Pranks","Soundtrack","Euro-Techno","Ambient",
#  "Trip-Hop","Vocal","Jazz+Funk","Fusion","Trance","Classical",
#  "Instrumental","Acid","House","Game","Sound Clip","Gospel",
#  "Noise","AlternRock","Bass","Soul","Punk","Space","Meditative",
#  "Instrumental Pop","Instrumental Rock","Ethnic","Gothic",
#  "Darkwave","Techno-Industrial","Electronic","Pop-Folk",
#  "Eurodance","Dream","Southern Rock","Comedy","Cult","Gangsta",
#  "Top 40","Christian Rap","Pop/Funk","Jungle","Native American",
#  "Cabaret","New Wave","Psychadelic","Rave","Showtunes","Trailer",
#  "Lo-Fi","Tribal","Acid Punk","Acid Jazz","Polka","Retro",
#  "Musical","Rock & Roll","Hard Rock","Folk","Folk-Rock",
#  "National Folk","Swing","Fast Fusion","Bebob","Latin","Revival",
#  "Celtic","Bluegrass","Avantgarde","Gothic Rock","Progressive Rock",
#  "Psychedelic Rock","Symphonic Rock","Slow Rock","Big Band",
#  "Chorus","Easy Listening","Acoustic","Humour","Speech","Chanson",
#  "Opera","Chamber Music","Sonata","Symphony","Booty Bass","Primus",
#  "Porn Groove","Satire","Slow Jam","Club","Tango","Samba",
#  "Folklore","Ballad","Power Ballad","Rhythmic Soul","Freestyle",
#  "Duet","Punk Rock","Drum Solo","Acapella","Euro-House","Dance Hall"

genres.each do |genre|
  Genre.create(name: genre)
end

categories = ["Soloartist", "Small Combo (2-5)", "Big Band"]

categories.each do |category|
  Category.create(name: category)
end


  genre = Genre.last
  category = Category.first
  # 10.times do
  #   band = Band.new(
  #     user_id: 1,
  #     name: Faker::Hipster.word,
  #     description: Faker::Hipster.sentence,
  #     band_email: Faker::Internet.email,
  #     fee: Faker::Number.within(range: 5..10)*100,
  #     genre: genre,
  #     category: category
  #     )
  #   band.save!
  # end

  # Band.create(
  #   name: "Paul",
  #     description: "Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo.",
  #   fee: 800,
  #   availability: true,
  #   band_email: nil,
  #   user_id: 1,
  #   category_id: 2,
  #   genre_id: 30
  #   )

puts 'finished import bands'
