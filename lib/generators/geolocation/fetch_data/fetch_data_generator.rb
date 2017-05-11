require 'rails/generators/migration'

module Geolocation
  module Generators
    class FetchDataGenerator < ::Rails::Generators::Base
      desc "Populate the Locations Table"

      require 'csv'

      #Delete table before populating, for testing
      Geolocation::Location.delete_all

      # setup stats variables
      errors = []
      rejected = 0
      processed = 0
      start_time = Time.now

      begin
      file_name = Geolocation.configuration.file_name
      csv_text = File.read(file_name)
      csv = CSV.parse(csv_text, :headers => true)

      # Process CSV
      csv.each do |row|
        begin
          Geolocation::Location.create!(row.to_hash)
        rescue ActiveRecord::RecordInvalid => e
          rejected += 1
          errors.push({
                          messages: e.record.errors.messages
                      })
        end
          processed += 1
        if processed == Geolocation.configuration.limit then break end
      end

      rescue Errno::ENOENT
        puts "Error: CSV file not found or corrupted"
      end

      # Display Stats
      end_time = Time.now
      elapsed_time = (end_time - start_time)
      accepted = processed - rejected
      puts "Accepted Records #{accepted}"
      puts "Rejected Records #{rejected}"
      puts "Elapsed Time #{elapsed_time} Seconds"
    end
  end
end
