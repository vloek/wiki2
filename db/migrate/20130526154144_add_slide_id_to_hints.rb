class AddSlideIdToHints < ActiveRecord::Migration
  def change
    add_column :hints, :slide_id, :integer
  end
end
