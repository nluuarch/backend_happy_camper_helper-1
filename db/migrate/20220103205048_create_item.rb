class CreateItem < ActiveRecord::Migration[6.1]
  def change
    create_table :item do |t|
      t.string :name
      t.string :description
      t.string :shopping_url
      t.integer :item_id
      t.references :weather
      t.references :cart
    end
  end
end
