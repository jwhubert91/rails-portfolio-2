class AddPositionToWorks < ActiveRecord::Migration[5.2]
  def change
    add_column :works, :position, :integer
  end
end
