class AddManyHeightToLines < ActiveRecord::Migration
  def change
    add_column :lines, :heights, :string
  end
end
