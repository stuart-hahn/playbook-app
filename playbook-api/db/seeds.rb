# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

playbook_a = Playbook.create(name: "Denver Broncos Offense")
playbook_b = Playbook.create(name: "New Orleans Saints Offense")

formation_a = Formation.create(name: "Gun Tight", playbook: playbook_a)
formation_b = Formation.create(name: "Gun Bunch", playbook: playbook_a)
formation_c = Formation.create(name: "Gun Y Trips Wk", playbook: playbook_b)

play_a = Play.create(name: "Z Spot", setup: "Y-BLOCK, A-STREAK, X-IN, B-FADE", formation: formation_a)
play_b = Play.create(name: "PA WR In - Flipped", setup: "A-SMART ROUTE OUT, B-STREAK AND MOTION LEFT", formation: formation_c)
play_c = Play.create(name: "Z Spot", setup: "Y-BLOCK, A-STREAK, X-IN, B-FADE - MOTION RIGHT AND HIKE AFTER 3 STEPS", formation: formation_b)



# Playbook
#  has_many :formations
#  has_many :plays, through: :formations

#  Formation
#  belongs_to :playbook
#  has_many :plays

#  Play
#  belongs_to :formation