require './lib/deposits'
require './lib/withdraw'
require 'terminal-table'
require 'date'

class Bank
  MINIMUM_BALANCE = 0

  attr_reader :balance, :money_in, :money_out, :table

  def initialize
    @balance = 0
    @money_in = Deposits.new
    @money_out = Withdraw.new
    @table = []
  end

  def deposit(money)
    fail "minimum deposit must be at least 1" if money == MINIMUM_BALANCE
    fail "Please put in amount you wish to deposit" if money.is_a? String
    fail "Please put in correct amount" if money < MINIMUM_BALANCE
    @balance += money
    @money_in.history << money
    @table << [Date.today.strftime("%d/%m/%y"), money, '', @balance]
  end

  def withdraw(money)
    fail "Please put in amount you wish to withdraw" if money.is_a? String 
    fail "Not Enough Funds Available!" if @balance - money < MINIMUM_BALANCE
    fail "Cannot withdraw 0" if money == MINIMUM_BALANCE
    fail "Please put in correct amount" if money < MINIMUM_BALANCE
    @balance -= money
    @money_out.history << -money
    @table << [Date.today.strftime("%d/%m/%y"), '', -money, @balance]
  end

  def deposits
    @money_in.history
  end

  def withdraws
    @money_out.history
  end

  def show_table
    table = Terminal::Table.new :title => "Bank Statement", :headings => ['Date', 'Credit', 'Debit', 'Balance'], :rows => @table.reverse
    puts table
  end
end
