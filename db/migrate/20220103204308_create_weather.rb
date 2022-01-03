class CreateWeather < ActiveRecord::Migration[6.1]
  def change
    create_table :weather do |t|
      t.string :season_name
      t.integer :degree
    end
  end
end
