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

def valid_move?(board, move)
  if move.between?(0, 8) && !position_taken?(board, move)
    true
  else
    false
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def position_taken?(board, move)
 if board[move] == " " || board[move] == "" || board[move] == nil
   false
 else
   true
 end
end

def turn(board)
loop
puts "Please enter 1-9:"
input = gets.strip
index = input_to_index(input)
 if valid_move?(board, index)
   move(board, index)
   break
 end
 display_board(board)
 end
end
