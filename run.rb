require_relative "lib/Model1.rb"
require_relative "lib/Model2.rb"
require_relative "lib/Model3.rb"
require 'pry'


time = Magazine.new("Time")
people = Magazine.new("People", 52)
new_york = Magazine.new("New York Magazine", 50)

tracie = Person.new("Tracie", "Brooklyn")
chris = Person.new("Chris", "Brooklyn")
megan = Person.new("Megan", "Brooklyn")
sarah = Person.new("Sarah", "Brooklyn")

tracie.subscribe_to_magazine(people)
tracie.subscribe_to_magazine(new_york)
chris.subscribe_to_magazine(time)
people.add_subscriber(megan)
people.add_subscriber(sarah)



binding.pry

puts "Pry is buggin out"

