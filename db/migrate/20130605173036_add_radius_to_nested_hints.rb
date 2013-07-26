class AddRadiusToNestedHints < ActiveRecord::Migration
  def change
    add_column :nested_hints, :radius, :string
  end
end
