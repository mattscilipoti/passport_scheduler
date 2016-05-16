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

# TODO: pull list of teachers and subjects from wikipedia.
#   maybe https://github.com/molybdenum-99/reality
snape = FactoryGirl.build(:user, name: 'Severus Snape', email: 'snape@example.com', password: 'potions', password_confirmation: 'potions')
snape.confirm!

mcgonagall = FactoryGirl.build(:user, name: 'Minerva McGonagal', email: 'mcgonagall@example.com', password: 'potions', password_confirmation: 'potions')
mcgonagall.confirm!

dada = FactoryGirl.create(:class_proposal,
name: "Defense Aainst the Dark Arts",
description: "A core class and subject.  Students learn how to magically defend themselves against Dark Creatures, the Dark Arts, and other dark charms.",
teacher: snape,
student_age_minimum: 14,
student_age_maximum: 18,
student_count_minimum: 4,
student_count_maximum: 12,
materials_fee_cents: 7512,
materials_fee_currency: 'EUR',
)

transformation = FactoryGirl.create(:class_proposal,
name: "Transformation",
description: "A core class and subject.  It teaches the art of changing the form and appearance of an object.",
teacher: mcgonagall,
student_age_minimum: 4,
student_age_maximum: 15,
materials_fee: 0,
)
