require 'terminal-table'

class Deposits

  attr_reader :history

  def initialize
    @history = []
  end

  def last_deposit
    puts "Your last deposit was #{@history[-1].last} on #{@history[-1].first}"
  end

  def show_deposits
    table = Terminal::Table.new :title => "Deposits", :headings => ['Date', 'Deposits',], :rows => @history.reverse
    puts table
  end
end
