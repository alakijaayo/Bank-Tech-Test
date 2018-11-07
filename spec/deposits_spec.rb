require './lib/bank'
require './lib/deposits'

describe Deposits do

  it 'stores withdraws and time of withdraw' do
    Timecop.freeze(Date.parse('07/11/18').strftime("%d/%m/%y"))
    subject.history << [Date.parse('07/11/18').strftime("%d/%m/%y"), -10]
    expect(subject.history).to eq [[Date.parse('07/11/18').strftime("%d/%m/%y"), -10]]
  end

  # it "allows the person view the deposits they have made" do
  #   subject.history << 10
  #   subject.history << 20
  #   expect(subject.history).to eq [10, 20]
  # end
end
