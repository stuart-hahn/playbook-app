# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

playbook_a = Playbook.create(name: "Denver Broncos Offense")
playbook_b = Playbook.create(name: "New Orleans Saints Offense")

formation_a = Formation.create(name: "Gun Tight")
formation_b = Formation.create(name: "Gun Bunch")
formation_c = Formation.create(name: "Gun Y Trips Wk")

play_a = Play.create(name: "Z Spot", setup: "Y-BLOCK, A-STREAK, X-IN, B-FADE")
play_a = Play.create(name: "PA WR In - Flipped", setup: "A-SMART ROUTE OUT, B-STREAK AND MOTION LEFT")
play_a = Play.create(name: "Z Spot", setup: "Y-BLOCK, A-STREAK, X-IN, B-FADE - MOTION RIGHT AND HIKE AFTER 3 STEPS")