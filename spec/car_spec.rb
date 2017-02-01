require 'spec_helper'

RSpec.describe Car do
  let(:car) { Car.new }

  describe '::new' do
    it 'sets the initial speed of a car to 0' do
      expect(car.speed).to eq 0
    end
  end

  describe '#speed' do
    it { is_expected.to respond_to :speed }
  end

  describe '#accelerate' do
    it 'increases the speed of car by a given amount' do
      car.accelerate(20)
      expect(car.speed).to eq 20
    end
  end

  describe '#brake' do
    it 'decreases the speed of a car by a given amount' do
      car.speed = 21
      car.brake(20)
      expect(car.speed).to eq 1
    end
    it 'does not set speed below 0' do
      car.speed = 19
      car.brake(20)
      expect(car.speed).to eq 0
    end
  end

end
