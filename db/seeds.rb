# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
# 	heroku push ok same name now
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# themen Theme.create(name: , size:)

Theme.create(name: "Aquarelle 2010")
Theme.create(name: "DIPLOM ORT 2010")
Theme.create(name: "Aquarelle Blumen")
Theme.create(name: "Drawing 2013" )
Theme.create(name: "Druckgrafik 2005-2009")
Theme.create(name: "Insideout")
Theme.create(name: "Intimitaet")
Theme.create(name: "Kunstgeschichte Skizzen")
Theme.create(name: "ma vie, ta vie")
Theme.create(name: "Nengajo")
Theme.create(name: "Painting und Sketch -2005")
Theme.create(name: "Pause")
Theme.create(name: "Siebdruck Hilton")
Theme.create(name: "Steindruck")
Theme.create(name: "Werke freie Landschaft")

#user

AdminUser.create!(email: "admin@example.com", password: "password", password_confirmation: "password")