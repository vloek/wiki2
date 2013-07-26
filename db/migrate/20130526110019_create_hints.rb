class CreateHints < ActiveRecord::Migration
  def change
    create_table :hints do |t|
      t.string :x
      t.string :y
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
