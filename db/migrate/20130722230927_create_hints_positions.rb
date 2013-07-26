class CreateHintsPositions < ActiveRecord::Migration
  def change
    create_table :hints_positions do |t|
      t.references :hint
      t.references :position

      t.timestamps
    end
    add_index :hints_positions, :hint_id
    add_index :hints_positions, :position_id
  end
end
