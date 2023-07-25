class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :country
      t.string :zip
      t.timestamps
    end
  end
end
