class Table

  attr_reader :info

  def initialize
    @info = []
  end

  def statement
    puts 'date || credit || debit || balance'
    puts self.info
  end
end
