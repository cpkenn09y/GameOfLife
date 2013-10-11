class Board
  attr_reader :life_board
  def initialize(string="000000000")
    @life_board = string
    @vertical_increment = find_vertical_increment
  end

  def make_alive(index)
    @life_board[index] = "1"
    @life_board
  end

  def kill(index)
    @life_board[index] = "0"
    @life_board
  end

  def cell_to(index, direction)
    case direction
      when 'W'
        @life_board[index-1]
      when 'E'
        @life_board[index+1]
      when 'N'
        @life_board[index-@vertical_increment]
      when 'S'
        @life_board[index+@vertical_increment]
      when 'NW'
        @life_board[index-@vertical_increment-1]
      when 'NE'
        @life_board[index-@vertical_increment+1]

    end
  end

  def find_vertical_increment
    Math.sqrt(@life_board.length)
  end
end