class AddOrdToNestedHints < ActiveRecord::Migration
  def change
    add_column :nested_hints, :x_full, :string
    add_column :nested_hints, :y_full, :string
  end
end
