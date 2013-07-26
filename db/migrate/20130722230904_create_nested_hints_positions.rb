class CreateNestedHintsPositions < ActiveRecord::Migration
  def change
    create_table :nested_hints_positions do |t|
      t.references :nested_hint
      t.references :position

      t.timestamps
    end
    add_index :nested_hints_positions, :nested_hint_id
    add_index :nested_hints_positions, :position_id
  end
end
