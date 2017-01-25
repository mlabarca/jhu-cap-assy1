class CreateApiCities < ActiveRecord::Migration
  def change
    create_table :api_cities do |t|

      t.timestamps null: false
      t.string :name
    end
  end
end
