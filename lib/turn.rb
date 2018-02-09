##constants
WELCOME_MESSAGE = "Welcome to Tic Tac Toe!"
INPUT_PROMPT = "Please enter 1-9:"
INVALID_INPUT = "That is not a valid move."

##variables
<<<<<<< HEAD
=======
board = ["","","","","","","","",""]
>>>>>>> a392fe4d12caa90602b0a9e7dc5fd453d2168376

##board display methods

#define the moving parts of an expandable game board
#line break as function
def br
  print("\n")
end

#cells that display with a border to their right
def l_cell(arg = " ")
<<<<<<< HEAD
    if arg == nil
      arg = " "
    end
    if arg.strip == ""
      arg = " "
    end
=======
>>>>>>> a392fe4d12caa90602b0a9e7dc5fd453d2168376
    print(" #{arg} |")
end
#cells that display with no border to their right
def r_cell(arg = " ")
<<<<<<< HEAD
  if arg == nil
    arg = " "
  end
  if arg.strip == ""
    arg = " "
  end  
=======
>>>>>>> a392fe4d12caa90602b0a9e7dc5fd453d2168376
  print(" #{arg} ")
  br
end

#line separating border
def sep 
  11.times do 
    print "-" 
  end
  br
end

#define a row as 2 cells of left type, 1 cell of right type
def row(arg_x, arg_y, arg_z)
    l_cell(arg_x)
    l_cell(arg_y)
    r_cell(arg_z)
end

#represent board as series of rows and separators

def display_board(arg = [" "," "," "," "," "," "," "," "," "])
  row(arg[0], arg[1], arg[2])
  sep
  row(arg[3], arg[4], arg[5])
  sep
  row(arg[6], arg[7], arg[8])
end

##input processing

#convert input to array index
def input_to_index(move)
  #convert string input to integer and subtract 1
  index = move.to_i - 1
end

<<<<<<< HEAD
#transform board array at index with string value
def move(board, index, char = "X")
  board[index] = char
=======
#transform board array at index with string value, strip whitespace to protect ASCII board appearance
def move(board, index, char = "X")
  board[index] = char.strip
>>>>>>> a392fe4d12caa90602b0a9e7dc5fd453d2168376
end

##input validation

def valid_move?(board,index)
  
    # check if the specified position is on the board
  def move_on_board?(board, index)
    if index >= 0 && index <= 8
      true 
    else
      false
    end
  end 
  
  # check if the specified position is taken
  def position_taken?(board, index) 
    #affirm that nowhere isn't taken
    if board[index] == nil
        # return statement included to shield strip method from nil
        return false
<<<<<<< HEAD
=======
    #strip whitespace to 
>>>>>>> a392fe4d12caa90602b0a9e7dc5fd453d2168376
    elsif board[index].strip == ""
        false
    else
        true
    end
  end 
  
  # apply both tests and return the result
  if move_on_board?(board, index) && !position_taken?(board, index)
    true
  else
    false
  end
end

##program loop

def turn(board)
<<<<<<< HEAD
  puts INPUT_PROMPT
  choice = gets
=======
  puts "Please enter 1-9:"
  choice = gets
  choice = choice.strip
>>>>>>> a392fe4d12caa90602b0a9e7dc5fd453d2168376
  choice = input_to_index(choice)
  truthiness = valid_move?(board, choice)
  if truthiness == false
    puts INVALID_INPUT
    turn(board)
  else
    move(board, choice, char = "X")
    display_board(board)
<<<<<<< HEAD
  end  
end
=======
    turn(board)
  end  
end

##program

>>>>>>> a392fe4d12caa90602b0a9e7dc5fd453d2168376
