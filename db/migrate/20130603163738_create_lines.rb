class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.string :width
      t.string :height
      t.string :x
      t.string :y
      t.string :top
      t.string :left
      t.string :right
      t.string :bottom
      t.string :slide_id

      t.timestamps
    end
  end
end
