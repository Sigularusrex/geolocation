require 'spec_helper'
require 'rails_helper'


describe Geolocation::Location do
  
  before :context do
    @location = Geolocation::Location.create({
                                                 ip_address: '200.106.141.15',
                                                 country_code: 'SI',
                                                 country: 'Nepal',
                                                 city: 'DuBuquemouth',
                                                 latitude: -84.87503094689836,
                                                 longitude: 7.206435933364332,
                                                 mystery_value: '7823011346'
                                             })
  end

  describe "validation error" do


    it "should validate a correct entry" do
      expect(@location.valid?).to be(true)
    end

    it "should invalidate incorrect IP Address"
    it "should invalidate incorrect Latitude"
    it "should invalidate incorrect Longitude"

  end
end
