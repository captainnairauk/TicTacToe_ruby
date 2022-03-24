board = Array.new(9,"")

def display_board (array)
    puts " #{array[0]} | #{array[1]} | #{array[2]}"
    puts "---------"
    puts " #{array[3]} | #{array[4]} | #{array[5]}"
    puts "---------"
    puts " #{array[6]} | #{array[7]} | #{array[8]}"
end

def input_to_index(user_input)
    user_input.to_i-1
end

def move(board, index, player)
    board[index] = player
end

def position_taken?(board, index)
    if
        (board[index] == " ") || (board[index] == "") || (board[index] == nil)
        return false
    else
        return true
    end
end

def valid_move?(board, index)
    if
        index.between?(0,8) && !position_taken?(board,index)
        return true
    end
end

display_board(board)
valid_move?(board, index)
position_taken?(board, index)
input_to_index(user_input)
move(board, index, first_player = "X")
