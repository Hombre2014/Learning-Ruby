require 'date'

purchases = {
  id: {
    1234 => {
      customer: {
        name: "John Doe",
        address: "123 Main St.",
        city: "Anytown",
        state: "NY",
        zip: "12345"
      },
      items: {
        socks: {
          item_price: 6.49,
          item_quantity: 2
        },
        shoes: {
          item_price: 60.77,
          item_quantity: 1
        }
      },
      date: "2016-01-01"
    },
    1235 => {
      customer: {
        name: "Jane Doe",
        address: "123 Main St.",
        city: "Anytown",
        state: "NY",
        zip: "12345"
      },
      items: {
        socks: {
          item_price: 6.49,
          item_quantity: 3
        },
        shoes: {
          item_price: 60.77,
          item_quantity: 4
        }
      },
      date: "2016-02-01"
    },
    1236 => {
      customer: {
        name: "Jane Doe",
        address: "123 Main St.",
        city: "Anytown",
        state: "NY",
        zip: "12345"
      },
      items: {
        socks: {
          item_price: 6.49,
          item_quantity: 8
        },
        shoes: {
          item_price: 60.77,
          item_quantity: 2
        },
        hat: {
          item_price: 12.99,
          item_quantity: 1
        }
      },
      date: "2016-02-01"
    },
  }
}

class Invoice
  attr_reader :purchases

  def initialize(purchases)
    @purchases = purchases
  end

  def total_per_id(id)
    purchases[:id][id][:items].values.map { |item| item[:item_price] * item[:item_quantity] }.reduce(:+).round(2)
  end

  def total_by_customer(customer)
    purchases[:id].select { |key, value| value[:customer][:name] == customer }.values.map { |purchase| purchase[:items].values.map { |item| item[:item_price] * item[:item_quantity] }.reduce(:+) }.reduce(:+).to_f.round(2)
  end
end

invoice = Invoice.new(purchases)
# p invoice.total_per_id(1234)
# p invoice.total_per_id(1235)
# p invoice.total_per_id(1236)
# p purchases[:id][1234][:items][:shoes][:item_price]
# p invoice.total_by_customer("Jane Doe")
p 1.2.round(2)
p (sprintf '%.2f', 2.3.to_f)


p month = Time.parse("2022-03")
