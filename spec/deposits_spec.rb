require './lib/bank'
require './lib/deposits'

describe Deposits do

  it 'stores deposits and time of deposits' do
    Timecop.freeze(Date.parse('07/11/18').strftime("%d/%m/%y"))
    subject.history << [Date.today.strftime("%d/%m/%y"), 10]
    expect(subject.history).to eq [["07/11/18", 10]]
  end

  it 'informs you of your last deposit' do
    Timecop.freeze(Date.parse('07/11/18').strftime("%d/%m/%y"))
    subject.history << [Date.today.strftime("%d/%m/%y"), 10]
    expect(subject.last_deposit).to eq "Your last deposit was 10 on 07/11/18"
  end

end
