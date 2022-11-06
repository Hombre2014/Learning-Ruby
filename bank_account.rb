# See gadget.rb class and modified to_s method.
# Instance method prefered to instance variable!

class BankAccount
  def initialize
    @amount = 5000 # Stores the amount in cents
  end

  def status
    "Your bank account has a total of #{amount} dollars"
  end

  private

  def amount
    @amount / 100 # Return the amount in dollars and not change the variable
  end
end

ba = BankAccount.new
p ba.status
