def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = gets.strip
  index = input.to_i - 1
end

def position_taken?(board, index)
  if index.between?(0, 8) && (board[index] == "X" || board[index] == "O")
    return true
  else
    return false
  end
end

def valid_move?(board, index)
  if position_taken?(board, index) == true
    return false
  else
    return true
  end
end

def move(board, index, player = "X")
  board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  input_to_index
  if valid_move?(board, index) == true
    move(board, index, player = "X")
    display_board(board)
  else
    turn(board)
  end
end
