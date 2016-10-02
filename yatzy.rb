class Yatzy
  def self.chance(* rolls)
    rolls.reduce(:+)
  end

  def self.yatzy(* rolls)
    yatzy_roll?(rolls) ? 50 : 0
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

  def self.fours(* rolls)
    tally(4, rolls)
  end

  def self.fives(* rolls)
    tally(5, rolls)
  end

  def self.sixes(* rolls)
    tally(6, rolls)
  end

  private

  def self.yatzy_roll?(roll_array)
    benchmark = roll_array.first
    roll_array.all? { |roll| roll == benchmark }
  end

  def self.tally(factor, roll_array)
    count = roll_array.count { |roll| factor == roll }
    count * factor
  end
end
