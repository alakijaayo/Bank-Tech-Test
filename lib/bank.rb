require './lib/deposits'
require './lib/withdraw'

class Bank
  MINIMUM_BALANCE = 0

  attr_reader :balance, :money_in, :money_out

  def initialize
    @balance = 0
    @money_in = Deposits.new
    @money_out = Withdraw.new
  end

  def deposit(money)
    @balance += money
    @money_in.history << money
  end

  def withdraw(money)
    fail "Not Enough Funds Available!" if @balance - money < MINIMUM_BALANCE
    @balance -= money
    @money_out.history << -money
  end

  def deposits
    @money_in.view
  end

  def withdraws
    @money_out.view
  end
end
