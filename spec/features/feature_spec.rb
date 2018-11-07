require './lib/bank'
require 'date'
require 'timecop'

describe Bank do

  let(:account) { described_class.new }

  it "tests feature" do
    Timecop.freeze(Date.parse('07/11/18').strftime("%d/%m/%y"))
    account.deposit(50)
    account.deposit(10)
    account.withdraw(30)
    account.withdraw(20)
    expect{account.show_table}.to output("date || credit || debit || balance\n07/11/18 || 50.00 || || 50.00\n07/11/18 || 10.00 || || 60.00\n07/11/18 || || -30.00 || 30.00\n07/11/18 || || -20.00 || 10.00\n").to_stdout
  end

end
