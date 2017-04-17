Geocoder.configure(
  lookup: :bing,
  api_key: ENV['GEOCODER_API_KEY'],
)

Geocoder::Configuration.timeout = 15
