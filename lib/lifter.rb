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

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    memberships.map {|membership| membership.gym}
  end

  def self.average_lift_total
    lift_total = Lifter.all.reduce(0) {|sum, lifter| sum + lifter.lift_total}
    lift_total / @@all.length.to_f
  end

  def total_membership_cost
    memberships.reduce(0) {|sum, membership| sum + membership.cost}
  end

  def new_membership(cost, gym)
    Membership.new(cost, self, gym)
  end

end
