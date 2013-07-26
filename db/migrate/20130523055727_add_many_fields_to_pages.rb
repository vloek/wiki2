class AddManyFieldsToPages < ActiveRecord::Migration
  def change
    add_column :pages, :full_name, :text
    add_column :pages, :title_full_name, :string
    add_column :pages, :count_update, :text
    add_column :pages, :count_update_title, :string
    add_column :pages, :semantic_load, :text
    add_column :pages, :semantic_load_title, :string
    add_column :pages, :measure, :text
    add_column :pages, :measure_title, :string
    add_column :pages, :analitic_cuts, :text
    add_column :pages, :analitic_cuts_title, :string
    add_column :pages, :source_recived, :text
    add_column :pages, :source_recived_title, :string
    add_column :pages, :formula, :text
    add_column :pages, :formula_title, :string
  end
end
