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
    @balance += money
    @money_in.history << money
    @table << [Date.today, money, '', @balance]
  end

  def withdraw(money)
    fail "Not Enough Funds Available!" if @balance - money < MINIMUM_BALANCE
    @balance -= money
    @money_out.history << -money
    @table << [Date.today, '', -money, @balance]
  end

  def deposits
    @money_in.view
  end

  def withdraws
    @money_out.view
  end

  def table
    table = Terminal::Table.new :title => "Bank Statement", :headings => ['Date', 'Credit', 'Debit', 'Balance'], :rows => @table
    puts table
  end
end
