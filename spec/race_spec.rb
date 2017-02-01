require 'spec_helper'

RSpec.describe Race do
  describe '::new' do
    it 'instantiates two cars' do
      expect(race.cars.length).to eq 2
    end
    it 'accelerates the cars to random speeds'
  end
  describe '#winner' do
    it 'returns the winner'
    it 'is not the loser'
  end

  describe '#loser' do
    it 'returns the loser'
    it 'is not the winner'
  end
end
