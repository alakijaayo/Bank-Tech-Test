require './lib/bank'

describe Bank do

  it 'shows us the balance of our bank account' do
    expect(subject.balance).to eq 0  
  end
end
