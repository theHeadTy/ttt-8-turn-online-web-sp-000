# display board on CLI
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  
  puts "Please enter 1-9:"
  
  user_input = gets.strip
  
  input_to_index(user_input)
  
  if valid_move?(board, user_input)
    
  
    puts "#{user_input}"
    
  else
    turn(board)
  end

end

def input_to_index(user_input)

  user_input.to_i - 1

end

def valid_move?(board, index)
  
  if !index.is_a? Integer
    return false
  end
  
  #if index.between?(0, 9) && board.at(index) == " "
  if board.at(index) == " "
    return true
  else
    return false
  end
  
end

def move(board, index, value = "X")
  board[index] = value
end
