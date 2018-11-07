require 'terminal-table'

class Withdraw

  attr_reader :history

  def initialize
    @history = []
  end

  def last_withdraw
    "Your last withdraw was #{@history[-1].last} on #{@history[-1].first}"
  end

  def show_withdraws
    table = Terminal::Table.new :title => "Withdraws", :headings => ['Date', 'Withdraws'], :rows => @history.reverse
    puts table
  end
end
