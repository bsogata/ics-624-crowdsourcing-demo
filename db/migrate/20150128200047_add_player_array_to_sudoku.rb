class AddPlayerArrayToSudoku < ActiveRecord::Migration
  def change
    add_column :sudokus, :moves, :text
  end
end
