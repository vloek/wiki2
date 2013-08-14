class AddManyWidthToLines < ActiveRecord::Migration
  def change
    add_column :lines, :widths, :string
  end
end
