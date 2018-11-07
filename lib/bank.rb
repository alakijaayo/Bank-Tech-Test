require './lib/deposits'
require './lib/withdraw'
require './lib/table'
require 'terminal-table'
require 'date'

class Bank
  MINIMUM_BALANCE = 0

  attr_reader :balance

  def initialize
    @balance = 0
    @money_in = Deposits.new
    @money_out = Withdraw.new
    @table = Table.new
  end

  def deposit(money)
    fail "Please put in amount you wish to deposit" if money.is_a? String
    fail "Minimum deposit must be at least 1" if money <= 0
    @balance += money
    @money_in.history << [Date.today.strftime("%d/%m/%y"), money]
    @table.info << ["#{Date.today.strftime("%d/%m/%y")} || #{"%.2f" % money} || || #{ "%.2f" % @balance}"]
  end

  def withdraw(money)
    fail "Please put in amount you wish to withdraw" if money.is_a? String
    fail "Please put in correct amount" if money <= 0
    fail "Not Enough Funds Available!" if @balance - money < MINIMUM_BALANCE
    @balance -= money
    @money_out.history << [Date.today.strftime("%d/%m/%y"), -money]
    @table.info << ["#{Date.today.strftime("%d/%m/%y")} || || #{"%.2f" % -money} || #{"%.2f" % @balance}"]
  end

  def last_deposit
    @money_in.last_deposit
  end

  def last_withdraw
    @money_out.last_withdraw
  end

  def deposits
    @money_in.show_deposits
  end

  def withdraws
    @money_out.show_withdraws
  end

  def show_table
    @table.statement
  end
end
