class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.integer :page_id

      t.timestamps
    end
  end
end
