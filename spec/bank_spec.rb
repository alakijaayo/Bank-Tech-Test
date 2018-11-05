require './lib/bank'

describe Bank do

  it 'shows us the balance of our bank account' do
    expect(subject.balance).to eq 0
  end

  it "tracks changes to the balance" do
    subject.deposit(50)
    subject.withdraw(30)
    expect(subject.balance).to eq 20
  end

  describe "#deposit" do
    it { is_expected.to respond_to(:deposit).with(1).argument }
    it 'adds money to the persons bank account' do
      expect{subject.deposit 10}.to change {subject.balance}.by 10
    end

    it "stores any deposits made into the bank account" do
      subject.deposit(10)
      expect(subject.deposits).to include 10
    end
  end

  describe "#withdraw" do
    it { is_expected.to respond_to(:withdraw).with(1).argument }
    it 'takes away money from a persons bank account' do
      subject.deposit(20)
      expect{subject.withdraw 10}.to change {subject.balance}.by -10
    end

    it 'raises an error if limit is exceeded' do
      expect{subject.withdraw(11)}.to raise_error "Not Enough Funds Available!"
    end

    it "stores any withdraws made from the bank account" do
      subject.deposit(20)
      subject.withdraw(10)
      expect(subject.withdraws).to include -10
    end
  end
end
