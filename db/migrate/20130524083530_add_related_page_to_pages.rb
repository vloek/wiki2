class AddRelatedPageToPages < ActiveRecord::Migration
  def change
    add_column :pages, :related_pages, :string
  end
end
