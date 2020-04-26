# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
charlie = Lifter.new("Charlie", 50)
will = Lifter.new("William", 100)
matt = Lifter.new("Matthew", 150)
james = Lifter.new("James", 200)
mum = Lifter.new("Mum", 250)
david = Lifter.new("David", 300)

gym1 = Gym.new("Brixton")
gym2 = Gym.new("Ealing")
gym3 = Gym.new("Virgin")
gym4 = Gym.new("Fitness First")
gym5 = Gym.new("The Gym")

gold1 = Membership.new(1000, david, gym3)
gold2 = Membership.new(800, mum, gym4)
gold3 = Membership.new(600, james, gym5)
silver1 = Membership.new(500, will, gym2)
silver2 = Membership.new(400, matt, gym1)
bronze1 = Membership.new(100, charlie, gym3)
bronze2 = Membership.new(10, david, gym1)

binding.pry

puts "Gains!"

