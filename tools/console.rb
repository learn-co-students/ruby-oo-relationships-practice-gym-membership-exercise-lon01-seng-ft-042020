# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("zack", 690)
l2 = Lifter.new("andy", 350)

gym1 = Gym.new("usw")
gym2 = Gym.new("puregym")

m1 = Membership.new(17, gym1, l1)
m2 = Membership.new(27, gym2, l2)
m3 = Membership.new(27, gym2, l1)
binding.pry

puts "Gains!"
