class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :item
      t.string :description
      t.string :dinner
      t.float :price

      t.timestamps
    end
  end
end
