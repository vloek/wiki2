class AddSliderToPages < ActiveRecord::Migration
  def change
    add_column :pages, :slider, :boolean
  end
end
