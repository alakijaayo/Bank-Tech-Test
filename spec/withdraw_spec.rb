require './lib/bank'
require './lib/withdraw'

describe Deposits do


  it "stores data from our bank class" do
    bank = Bank.new
    bank.deposit(30)
    bank.withdraw(10)
    expect(bank.money_out.history).to include -10
  end

  it "allows the person view the deposits they have made" do
    bank = Bank.new
    bank.deposit(50)
    bank.withdraw(10)
    bank.withdraw(20)
    expect(bank.withdraws).to include -10
  end
end
