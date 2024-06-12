class Country < ApplicationRecord
  def change 
    create_tabel :country  do |c|
      c.string :name
      c.string :city
      c.integer :population

      c.timestamps
    end
  end
end
