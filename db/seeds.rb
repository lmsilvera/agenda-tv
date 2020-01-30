# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tv_channels = ["Free to View", "Freeview", "VAST", "Optus D2", "Cable & Satellite", "Foxtel", "IPTV", "Fetch TV", "TPG"].map{|c| {name: c} }

tv_shows = ["Up series (began with Seven Up! in 1964) (UK)", "Push Girls", "Curl Girls", "An American Family (1973)",
"The Family (1974) (UK)", "Sightings (1991)", "Real World (1992)", "Sylvania Waters (1992) (Australia)",
"Emergency Vets (1998)", "True Life (1998)"].map{|c| {name: c} }

Channel.create(tv_channels)
Show.create(tv_shows)

shows = Show.all
channels = Channel.all

(1..100).each do |hour|
  ShowTime.create(show: shows.sample, channel: channels.sample, timing: Time.current + (hour - 0.5).hours)
end
