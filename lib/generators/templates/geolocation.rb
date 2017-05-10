class Geolocation < ActiveRecord::Migration
  def self.up
    create_table :geolocations do |t|
      t.inet :ip_address
      t.string :country_code
      t.string :country
      t.string :city
      t.float :latitude
      t.float :longitude
      t.integer :mystery_value, limit: 8
    end
    add_index :geolocations, :ip_address, unique: true

  end

  def self.down
    drop_table :geolocations
  end
end