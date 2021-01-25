require 'rspec'
require 'game_of_life'

describe GameOfLife do
  it 'generates 1x1 grid' do
    expect(GameOfLife.new(1,1)).to be_truthy
  end

  context 'with 10x10 grid' do
    before(:example) do
      @game = GameOfLife.new(10,10)
    end

    it 'gets false, when not set' do
      expect(@game.get(5,6)).to eq(false)
    end

    it 'could populate a cell' do
      @game.set(5,6)
      expect(@game.get(5,6)).to eq(true)
    end
  end
end
