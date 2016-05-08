require 'database_cleaner'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
DatabaseCleaner.clean_with(:truncation)

user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

dada = ClassProposal.create!(class_name: "Defense Aainst the Dark Arts", description: "A core class and subject.  Students learn how to magically defend themselves against Dark Creatures, the Dark Arts, and other dark charms.")
astronomy = ClassProposal.create!(class_name: "Astronomy", description: "A core class and subject.  Astronomy is a branch of magic that studies stars and the movement of planets.")
