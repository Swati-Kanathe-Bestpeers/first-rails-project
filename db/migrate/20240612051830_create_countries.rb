class CreateCountries < ActiveRecord::Migration[7.1]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :capital_city
      t.integer :population

      t.timestamps
    end
  end
end
