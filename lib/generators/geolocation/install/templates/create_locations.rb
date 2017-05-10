class CreateLocations < ActiveRecord::Migration[5.1]
  def self.up
    create_table :locations do |t|
      t.inet :ip_address
      t.string :country_code
      t.string :country
      t.string :city
      t.float :latitude
      t.float :longitude
      t.integer :mystery_value, limit: 8
    end
    add_index :locations, :ip_address, unique: true

  end

  def self.down
    drop_table :locations
  end
end