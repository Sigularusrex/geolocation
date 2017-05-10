module Geolocation

  class Location < ActiveRecord::Base


    validates :latitude, numericality: { greater_than_or_equal_to: -90,  \
  less_than_or_equal_to: 90 }
    validates :longitude, numericality: { greater_than_or_equal_to: -180,  \
  less_than_or_equal_to: 180 }

    validates :ip_address, :format => {
                     :with => Regexp.union(Resolv::IPv4::Regex, Resolv::IPv6::Regex)
                 }

    validates :ip_address, :country, presence: true
    validates :latitude, :longitude, :mystery_value, presence: true, allow_blank: true
    validates :country_code, format: { :with => /\A[A-Z][A-Z]\z/i, message: 'only allows two letters' }, allow_blank: true
    validates :city, uniqueness: {scope: [:country_code, :country]}, allow_blank: true

  end


end

