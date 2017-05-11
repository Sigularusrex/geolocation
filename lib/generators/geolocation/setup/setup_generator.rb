module Geolocation
  module Generators
    class SetupGenerator < Rails::Generators::Base
      source_root File.join(File.dirname(__FILE__), 'templates')
      desc "This generator creates an initializer file at config/initializers"
      def create_initializer_file
        copy_file  "geolocation.rb", "config/initializers/geolocation.rb"
      end
    end
  end
end