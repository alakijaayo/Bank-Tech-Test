require './lib/bank'

describe Bank do

  it 'shows us the balance of our bank account' do
    expect(subject.balance).to eq 0
  end

  describe "#deposit" do
    it { is_expected.to respond_to(:deposit).with(1).argument }
    it 'adds money to the persons bank account' do
      expect{subject.deposit 10}.to change {subject.balance}.by 10
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
  end
end
