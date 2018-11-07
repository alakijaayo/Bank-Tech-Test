require 'timecop'
require 'date'

describe Table do

  before do
    Timecop.freeze(Date.parse('07/11/18').strftime("%d/%m/%y"))
  end

  it 'stores data passed into it' do
    subject.info << ["#{Date.today.strftime("%d/%m/%y")} || #{"%.2f" % 50} || || #{ "%.2f" % 50}"]
    expect(subject.info).to eq [["07/11/18 || 50.00 || || 50.00"]]
  end

  it 'prints out the statement of the user' do
    subject.info << ["#{Date.today.strftime("%d/%m/%y")} || #{"%.2f" % 50} || || #{ "%.2f" % 50}"]
    subject.info << ["#{Date.today.strftime("%d/%m/%y")} || || #{"%.2f" % -30} || #{ "%.2f" % 20}"]
    expect{subject.statement}.to output("date || credit || debit || balance\n07/11/18 || 50.00 || || 50.00\n07/11/18 || || -30.00 || 20.00\n").to_stdout
  end



end
