# Geolocation
This is my submission for the Geolocation Gem challenge with FindHotel.

## Usage
Once installed, Geolocation can be run to find entries based on their corresponding IP Address. Simply fetch the data and in your controller add:
```ruby
location = Geolocation::Location.search("200.106.141.15")
location.inspect # returns #<Geolocation::Location:0x007fc0d5adf118> #<Geolocation::Location ip_address: #<IPAddr: IPv4:200.106.141.15/255.255.255.255>, country_code: "SI", country: "Nepal", city: "DuBuquemouth", latitude: -84.8750309468984, longitude: 7.20643593336433, mystery_value: 7823011346>
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'geolocation', :git => 'https://github.com/Sigularusrex/geolocation'
```

And then execute:
```bash
$ bundle
```

To autogenerate the Geolocation Config file (recommended), run:
```bash
$ rails g geolocation:setup
```

Please ensure you add the full path to your CSV data in the config file
```ruby
  config.file_name = "/Full/Path/To/data_dump.csv"
```

Next add the table migration by running
```bash
$ rails g geolocation:install
$ rake db:migrate
```

Now that you're all set up you can fetch the data into your database:
```bash
$ rails g geolocation:fetch_data
```

If all has gone well, the terminal will output a report once the data download is finished. The report looks like this: (based on a retrieval of 50 rows)
```bash
$ MacBook-Pro-4:client David$ rails g geolocation:fetch_data
$ Accepted Records 45
$ Rejected Records 5
$ Elapsed Time 20.749836 Seconds
```



## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
