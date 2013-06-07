class AddTwoColorToPages < ActiveRecord::Migration
  def change
    add_column :pages, :another_color, :string
  end
end
