class AddFiledsToNestedHints < ActiveRecord::Migration
  def change
    add_column :nested_hints, :width, :string
    add_column :nested_hints, :height, :string
  end
end
