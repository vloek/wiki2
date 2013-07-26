class AddWidthAndHeightToHints < ActiveRecord::Migration
  def change
    add_column :hints, :width, :string
    add_column :hints, :height, :string
  end
end
