module Geolocation



  class IpValidator < ActiveModel::Validator
    def validate(record)
     # unless record.name.starts_with? 'X'
      #  record.errors[:ip_address] << 'Need a name starting with X please!'
      #end
    end
  end



  class Location < ActiveRecord::Base

    include ActiveModel::Validations
    validates_with IpValidator

    validates :latitude, numericality: { greater_than_or_equal_to: -90,  \
  less_than_or_equal_to: 90 }
    validates :longitude, numericality: { greater_than_or_equal_to: -180,  \
  less_than_or_equal_to: 180 }

    validates :ip_address, :country, presence: true
    validates :latitude, :longitude, :mystery_value, presence: true, allow_blank: true
    validates :country_code, format: { :with => /\A[A-Z][A-Z]\z/i, message: 'only allows two letters' }, allow_blank: true
    validates :city, uniqueness: {scope: [:country_code, :country]}, allow_blank: true

  end


  end

