require 'rspec'
require 'game_of_life'

describe GameOfLife do
  it 'generates 1x1 grid' do
    expect(GameOfLife.new(1,1)).to be_truthy
  end
end
