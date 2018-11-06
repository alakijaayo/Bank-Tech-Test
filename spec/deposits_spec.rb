require './lib/bank'
require './lib/deposits'

describe Deposits do

  it 'stores deposits' do
    subject.history << 10
    expect(subject.history).to eq [10]
  end

  it "allows the person view the deposits they have made" do
    subject.history << 10
    subject.history << 20
    expect(subject.history).to eq [10, 20]
  end
end
