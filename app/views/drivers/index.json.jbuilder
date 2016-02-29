json.array!(@drivers) do |driver|
  json.extract! driver, :id, :name, :cpf, :truck_type, :latitude, :longitude
  json.url driver_url(driver, format: :json)
end
