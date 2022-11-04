class ConvenienceStore
  include Enumerable
  attr_reader :snacks

  def initialize
    @snacks = []
  end

  def add_snack(snack)
    snacks << snack
  end

  def each # To enable the Enumerable module we have to define each method!
    snacks.each do |snack|
      yield snack
    end
  end
end

bodega = ConvenienceStore.new
bodega.add_snack("Doritos")
bodega.add_snack("Chips")
bodega.add_snack("Pickles")

p bodega.snacks
bodega.each { |snack| puts "#{snack} is delicious" }
puts
p bodega.any? { |snack| snack.length > 6 }
p bodega.all? { |snack| snack.length > 4 }
p bodega.any? { |snack| snack.length > 10 }
puts
p bodega.snacks
p bodega.map { |snack| snack.upcase }
puts
p bodega.select { |snack| snack.downcase.include?("o") }
p bodega.reject { |snack| snack.upcase.include?("K") }
p bodega.sort
p bodega.first
