require './lib/bank'
require './lib/withdraw'
require 'timecop'
require 'date'

describe Withdraw do
  before do
    Timecop.freeze(Date.parse('07/11/18').strftime("%d/%m/%y"))
  end

  it 'stores withdraws and time of withdraw' do
    subject.history << [Date.today.strftime("%d/%m/%y"), -10]
    expect(subject.history).to eq [["07/11/18", -10]]
  end

  it 'informs you of your last withdraw' do
    subject.history << [Date.today.strftime("%d/%m/%y"), -10]
    expect(subject.last_withdraw).to eq "Your last withdraw was -10 on 07/11/18"
  end

end
