require 'pry'

class Yatzy

  def initialize(d1, d2, d3, d4, d5)
    @dice = [d1, d2, d3, d4, d5]
  end

  def self.chance(* rolls)
    rolls.reduce(:+)
  end

  def self.yatzy(* rolls)
    identical_rolls?(rolls) ? 50 : 0
  end

  def self.ones(* rolls)
    tally(1, rolls)
  end

  def self.twos(* rolls)
    tally(2, rolls)
  end

  def self.threes(* rolls)
    tally(3, rolls)
  end

  def fours
    self.class.tally(4, @dice)
  end

  def fives
    self.class.tally(5, @dice)
  end

  def sixes
    self.class.tally(6, @dice)
  end

  private

  def self.identical_rolls?(roll_array)
    benchmark = roll_array.first
    roll_array.all? { |roll| roll == benchmark }
  end

  def self.tally(factor, roll_array)
    count = roll_array.count { |roll| factor == roll }
    count * factor
  end
end
