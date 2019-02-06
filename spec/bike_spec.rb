require './lib/bike.rb'
describe Bike do
  it {is_expected.to respond_to :working?}
  it 'bike is working' do
    bike = Bike.new
    expect(bike.working?).to eq true
  end
end
