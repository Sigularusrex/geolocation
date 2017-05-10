require 'spec_helper'
require 'rails_helper'


describe Geolocation::Location do

  before :context do
    @location = build(:location)
  end

  describe "validation error" do


    it "should validate a correct entry" do
      expect(@location.valid?).to be(true)
    end

    it "should invalidate incorrect IP Address" do
      @location.ip_address = "INVALID"
      expect(@location.valid?).to be(false)
    end

    it "should invalidate incorrect Latitude" do
      @location.latitude = 1234567
      expect(@location.valid?).to be(false)
    end

    it "should invalidate incorrect Longitude" do
      @location.longitude = 1234567
      expect(@location.valid?).to be(false)
    end


  end
end
