require 'timecop'
require 'date'

describe Table do

  it 'stores data passed into it' do
    Timecop.freeze(Date.parse('07/11/18').strftime("%d/%m/%y"))
    subject.info << ["#{Date.today.strftime("%d/%m/%y")} || #{"%.2f" % 50} || || #{ "%.2f" % 50}"]
    expect(subject.info).to eq [["07/11/18 || 50.00 || || 50.00"]]
  end


end
