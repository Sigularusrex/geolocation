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

    it "should require an IP Address" do
      @location.ip_address = nil
      @location.should_not be_valid
    end

    it "should require an Country Code" do
      @location.country_code = nil
      @location.should_not be_valid
    end

    it "should require an Country" do
      @location.country = nil
      @location.should_not be_valid
    end

    it "should require an City" do
      @location.city = nil
      @location.should_not be_valid
    end

    it "should require an Latitude" do
      @location.latitude = nil
      @location.should_not be_valid
    end

    it "should require an Longitude" do
      @location.longitude = nil
      @location.should_not be_valid
    end

    it "should require a Mystery Value" do
      @location.mystery_value = nil
      @location.should_not be_valid
    end



  end
end
