def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, token = "X")
  board[index] = token
end

def valid_move?(board, index)
  (position_taken?(board, index) || !index.between?(0,8)) ? false : true
end

def position_taken?(board, index)
  (board[index] == "X" || board[index] == "O") ? true : false
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.chomp)
  valid_move?(board, index) ? move(board, index) : turn(board)
  display_board(board)
end