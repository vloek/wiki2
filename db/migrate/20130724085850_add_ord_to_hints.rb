class AddOrdToHints < ActiveRecord::Migration
  def change
    add_column :hints, :x_full, :string
    add_column :hints, :y_full, :string
  end
end
