# == Schema Information
#
# Table name: sudokus
#
#  id         :integer          not null, primary key
#  grid       :text
#  created_at :datetime
#  updated_at :datetime
#  moves      :text
#

class Sudoku < ActiveRecord::Base
  
  #
  # Returns the value of the cell at the (x, y) coordinates given.
  #
  # Parameters:
  #   x    The int equal to the x-coordinate of the cell to get.
  #   y    The int equal to the y-coordinate of the cell to get.
  #
  # Return:
  #   The value of the cell if it exists,
  #   nil otherwise.
  #
  
  def cell(x, y)
    return (((0 <= x) && (x <= 8)) && ((0 <= y) && (y <= 8))) ? (grid[(y * 9) + x]) : (nil)
  end
  
  #
  # Sets the value of the cell at the (x, y) coordinates given.
  #
  # Parameters:
  #   x        The int equal to the x-coordinate of the cell to set.
  #   y        The int equal to the y-coordinate of the cell to set.
  #   value    The string equal to the value to assign to the cell.
  #
  # Return:
  #   true if the operation was successful;
  #   false otherwise.
  #
  
  def setCell(x, y, value)
    if ((0 <= x) && (x <= 8)) && ((0 <= y) && (y <= 8)) &&
       ((value == ' ') || (('1' .. '9').include?(value)) )
      grid[(y * 9) + x] = value
      return true
    else
      return false
    end
    
  end
end
