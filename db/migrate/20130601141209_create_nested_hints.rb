class CreateNestedHints < ActiveRecord::Migration
  def change
    create_table :nested_hints do |t|
      t.string :x
      t.string :y
      t.integer :hint_id

      t.timestamps
    end
  end
end
