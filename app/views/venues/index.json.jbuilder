json.array!(@venues) do |venue|
  json.extract! venue, :id, :venue_name, :venue_addr1, :venue_addr2, :venue_town, :venue_city, :venue_postcode, :venue_paypal_email
  json.url venue_url(venue, format: :json)
end
