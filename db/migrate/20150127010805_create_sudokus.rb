class CreateSudokus < ActiveRecord::Migration
  def change
    create_table :sudokus do |t|
      t.text :grid
      t.timestamps
    end
  end
end
