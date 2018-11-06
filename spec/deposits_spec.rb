require './lib/bank'
require './lib/deposits'

describe Deposits do


  it "stores data from our bank class" do
    bank = Bank.new
    bank.deposit(10)
    expect(bank.money_in.history).to eq [10]
  end

  it "allows the person view the deposits they have made" do
    bank = Bank.new
    bank.deposit(10)
    bank.deposit(20)
    expect(bank.deposits).to eq [10, 20]
  end
end
