class Lifter
  attr_reader :name, :lift_total

  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end


  def self.all_memberships
    Membership.all.select {|m| m.lifter == self}
  end

  def self.all_gym
    self.all_memberships.map {|g| g.gym}
  end

  def self.average_lift_total
    @@all.map {|l| l.lift_total}.sum / @@all.count
  end

  def self.total_cost
    self.all_memberships.map {|m| m.cost}.sum
  end

  def self.sign_up(cost, gym) 
    Membership.new(cost, gym, self)
  end
end