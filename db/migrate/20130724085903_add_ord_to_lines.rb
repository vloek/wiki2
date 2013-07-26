class AddOrdToLines < ActiveRecord::Migration
  def change
    add_column :lines, :x_full, :string
    add_column :lines, :y_full, :string
  end
end
