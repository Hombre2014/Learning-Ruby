class Gadget

  attr_accessor :username
  attr_reader :production_number
  attr_writer :password

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_numer
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the ID #{self.object_id}."
  end

  private

  def generate_production_numer
    start_digits = rand(10000..99999)
    end_digits = rand(10000..99999)
    alphabet = ("A".."Z").to_a
    middle_digits = "2022"
    5.times { middle_digits << alphabet.sample }
    "#{start_digits}-#{middle_digits}-#{end_digits}"
  end
end

phone = Gadget.new("user123", 'pass123')
p phone.production_number
p phone.to_s
# p phone.generate_production_numer # This is working before making generate_production_numer method private, but it is bad design!
# Once we made generate_production_numer private this is not going to be accessible on the object!
p phone.generate_production_numer # Error
