class OlympicMedal
  include Comparable # The standard module. Need to define the spaceship operator <=>
  # Allows methods like these: <, >, <=, >=, <=>, .between available

  MEDAL_VALUES = {"Gold" => 3, "Silver" => 2, "Bronze" => 1}

  attr_reader :type

  def initialize(type, weight)
    @type = type
    @weight = weight
  end

  def <=>(other)
    if MEDAL_VALUES[self.type] < MEDAL_VALUES[other.type]
      -1
    elsif MEDAL_VALUES[self.type] == MEDAL_VALUES[other.type]
      0
    else
      1
    end
  end
end

bronze = OlympicMedal.new("Bronze", 5)
silver = OlympicMedal.new("Silver", 10)
gold = OlympicMedal.new("Gold", 3)

puts bronze > silver
puts bronze < silver
puts gold > silver
puts silver.between?(bronze, gold)
