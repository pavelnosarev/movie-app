# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: "Luke", movie: movies.first)
Actor.create!(first_name: "Nathan", last_name: "Fillion", known_for: "Firefly")
Actor.create!({ first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock" })
Actor.create!({ first_name: "Tom", last_name: "Hanks", known_for: "Castaway" })

Actor.create!({ first_name: "Tom", last_name: "Cruise", known_for: "Mission Impossible" })
Actor.create!({ first_name: "Johhny", last_name: "Depp", known_for: "Black Pearl" })
