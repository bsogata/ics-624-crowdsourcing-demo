class SudokuController < ApplicationController
  #
  # Sends a value to the database.
  #
  # Parameters:
  #   x        The integer equal to the x coordinate to set the value at.
  #   y        The integer equal to the y coordinate to set the value at. 
  #   value    The integer equal to the value to assign.
  #
  
  def update
    puts "Set value at (#{params[:x]},#{params[:y]}) to #{params[:value]}"
    Sudoku.first.setCell(params[:x], params[:y], params[:value])
  end
end
