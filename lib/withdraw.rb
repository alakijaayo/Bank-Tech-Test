class Withdraw

  attr_reader :history

  def initialize
    @history = []
  end

  def view
    self.history
  end
end
