module Geolocation

  class Location < ActiveRecord::Base
    require "resolv"

    validates :latitude, numericality: { greater_than_or_equal_to: -90,  \
  less_than_or_equal_to: 90 }
    validates :longitude, numericality: { greater_than_or_equal_to: -180,  \
  less_than_or_equal_to: 180 }

    validates :ip_address, :format => {
                     :with => Regexp.union(Resolv::IPv4::Regex, Resolv::IPv6::Regex)
                 }

    validates :ip_address, uniqueness: true  # already defined in database #
    validates :ip_address, :country, :country_code, :city, presence: true
    validates :latitude, :longitude, :mystery_value, presence: true


    # Returns a location record by IP_Address
    # Returns Nil if record not found
    def self.search(ip_address)
      begin
        return Location.find_by(ip_address: ip_address)
      rescue ActiveRecord::RecordNotFound => e
        return nil
      end
    end


  end


end

