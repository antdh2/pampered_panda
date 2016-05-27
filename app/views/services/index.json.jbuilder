json.array!(@services) do |service|
  json.extract! service, :id, :service_name, :service_category, :service_duration
  json.url service_url(service, format: :json)
end
