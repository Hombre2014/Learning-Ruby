purchases = {
  "John Dow" => {
    "item" => "socks",
    "date" => "2016-01-01",
    "price" => 6.49,
    "quantity" => 2
  },
  "Jane Dow" => {
    "item" => "shoes",
    "date" => "2016-01-02",
    "price" => 60.77,
    "quantity" => 1
  },
  "Jack Dow" => {
    "item" => "socks",
    "date" => "2016-02-03",
    "price" => 6.49,
    "quantity" => 3
  },
  "Jill Dow" => {
    "item" => "socks",
    "date" => "2016-01-04",
    "price" => 6.49,
    "quantity" => 4
  },
  "Johnn Dow" => {
    "item" => "socks",
    "date" => "2016-03-04",
    "price" => 6.49,
    "quantity" => 8
  },
  "Johnnes Dow" => {
    "item" => "shoes",
    "date" => "2016-04-08",
    "price" => 6.49,
    "quantity" => 1
  }
}

class Invoice
  attr_reader :purchases

  def initialize(purchases)
    @purchases = purchases
  end

  def total
    purchases.values.map { |purchase| purchase["price"] * purchase["quantity"] }.reduce(:+).round(2)
  end

  def total_by_month(month)
    purchases.values.select { |purchase| purchase["date"] =~ /#{month}/ }.map { |purchase| purchase["price"] * purchase["quantity"] }.reduce(:+).round(2)
  end

  def total_by_item(item)
    purchases.values.select { |purchase| purchase["item"] == item }.map { |purchase| purchase["price"] * purchase["quantity"] }.reduce(:+).round(2)
  end

  def total_by_customer(customer)
    purchases.select { |key, value| key == customer }.values.map { |purchase| purchase["price"] * purchase["quantity"] }.reduce(:+).round(2)
  end
end

inv = Invoice.new(purchases)
p inv.total
p inv.total_by_month("2016-01")
p inv.total_by_item("socks")
p inv.total_by_customer("John Dow")
