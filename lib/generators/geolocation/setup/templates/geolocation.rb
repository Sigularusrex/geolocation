Geolocation.configure do |config|

  # remove for unlimited row retrieval. Warning, this could take some time
  config.limit = 50
  config.file_name = "/Full/Path/To/data_dump.csv"
end
