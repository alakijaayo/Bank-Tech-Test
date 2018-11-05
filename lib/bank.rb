class Bank
  MINIMUM_BALANCE = 0

  attr_reader :balance, :history

  def initialize
    @balance = 0
  end

  def deposit(money)
    @balance += money

  end

  def withdraw(money)
    fail "Not Enough Funds Available!" if @balance - money < MINIMUM_BALANCE
    @balance -= money
  end
end
