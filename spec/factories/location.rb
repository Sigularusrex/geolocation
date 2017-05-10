FactoryGirl.define do

  factory :location, :class => Geolocation::Location do
    ip_address '200.106.141.15'
    country_code  "SI"
    country 'Nepal'
    city 'DuBuquemouth'
    latitude -84.87503094689836
    longitude 7.206435933364332
    mystery_value '7823011346'
  end

end