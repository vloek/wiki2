class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :page_id
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
