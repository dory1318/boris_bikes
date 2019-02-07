require 'bike.rb'

describe Bike do
  it {is_expected.to respond_to :working?}
  it {is_expected.to respond_to :broken?}
  it 'bike is working' do
    bike = Bike.new
    expect(bike.working?).to eq true
  end
  it 'bike broken' do
      subject.broken_bike
      expect(subject).to be_broken
  end
end
