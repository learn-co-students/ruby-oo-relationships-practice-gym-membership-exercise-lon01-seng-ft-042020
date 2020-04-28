class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_memberships
    Membership.all.select {|m| m.gym == self}
  end

  def self.all_lifters
    self.all_memberships.map {|g| g.lifter}
  end

  def self.list_names
    self.all_lifters.map {|g| g.name}
  end

  def self.combined_total_lifts
    self.all_lifters.map {|g| g.lift_total}.sum
  end
end
