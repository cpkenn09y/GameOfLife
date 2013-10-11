require 'rspec'
require_relative 'game_of_life'

describe 'Board' do
  before :each do
    @string = '100100100'
    # 100
    # 100
    # 100
    @board = Board.new(@string)
  end
  it 'should be a string' do
    expect(@board.life_board.class).to eq(String)
  end

  it '#life_board should be a binary string' do
    expect(@board.life_board).to eq(@string)
  end

  it '#life_board ' do
    expect(@board.make_alive(2)).to eq('101100100')
  end

  it 'should be able to kill at specified index' do
    expect(@board.kill(3)).to eq('100000100')
  end

  it 'check left neighbor status' do
    expect(@board.cell_to(4, 'W')).to eq('1')
  end

  it 'check right neighbor status' do
    expect(@board.cell_to(4, 'E')).to eq('0')
  end

  it 'check neighbor directly above status' do
    expect(@board.cell_to(6, 'N')).to eq('1')
  end

  it 'check neighbor directly below status' do
    expect(@board.cell_to(0, 'S')).to eq('1')
  end

  it 'find the incrementor specific to the board' do
    expect(@board.find_vertical_increment).to eq(3)
  end

  it 'should check NW neighbor status' do
    expect(@board.cell_to(5,'NW')).to eq('0')
  end

  it 'should check NE neighbor status' do
    expect(@board.cell_to(4,'NE')).to eq('0')
  end

  it 'should check SE neighbor status' do
    expect(@board.cell_to(4,'SE')).to eq('0')
  end

  it 'should check SW neighbor status' do
    expect(@board.cell_to(4,'SW')).to eq('0')
  end

end