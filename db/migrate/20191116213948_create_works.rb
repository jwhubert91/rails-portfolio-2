class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.text :main_img
      t.text :thumb_img

      t.timestamps
    end
  end
end
