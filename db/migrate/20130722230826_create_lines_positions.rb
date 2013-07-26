class CreateLinesPositions < ActiveRecord::Migration
  def change
    create_table :lines_positions do |t|
      t.references :line
      t.references :position

      t.timestamps
    end
    add_index :lines_positions, :line_id
    add_index :lines_positions, :position_id
  end
end
