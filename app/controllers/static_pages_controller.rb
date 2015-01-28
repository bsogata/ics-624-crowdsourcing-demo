class StaticPagesController < ApplicationController
  #
  # Sends a value to the database.
  #
  # Parameters:
  #   x        The integer equal to the x coordinate to set the value at.
  #   y        The integer equal to the y coordinate to set the value at. 
  #   value    The integer equal to the value to assign.
  #
  
  def setValue(x, y, value)
    setCell(x, y, value)
  end
end
