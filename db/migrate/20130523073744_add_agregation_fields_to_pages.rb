class AddAgregationFieldsToPages < ActiveRecord::Migration
  def change
    add_column :pages, :city_agregation, :bool
    add_column :pages, :region, :bool
    add_column :pages, :cust, :bool
    add_column :pages, :filial, :bool
  end
end
