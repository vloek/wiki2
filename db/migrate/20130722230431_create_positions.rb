class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :x
      t.string :y

      t.timestamps
    end
  end
end
