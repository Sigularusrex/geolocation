# Geolocation
This is my submission for the Geolocation Gem challenge with FindHotel

## Usage
Once installed, Geolocation can be run to find entries based on their corresponding IP Address. Simply fetch the data and in your controller add:
```ruby
location = Geolocation::Location.search("200.106.141.15")
location.inspect # returns #<Geolocation::Location:0x007fc0d5adf118> #<Geolocation::Location ip_address: #<IPAddr: IPv4:200.106.141.15/255.255.255.255>, country_code: "SI", country: "Nepal", city: "DuBuquemouth", latitude: -84.8750309468984, longitude: 7.20643593336433, mystery_value: 7823011346>
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'geolocation'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install geolocation
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
