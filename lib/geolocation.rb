require "geolocation/version"
require "models/location"

module Geolocation
  # Your code goes here...
  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield configuration
  end


  class Configuration
    include ActiveSupport::Configurable

    config_accessor(:limit) { 0 }
    config_accessor(:file_name) # no default (nil)
  end

end
