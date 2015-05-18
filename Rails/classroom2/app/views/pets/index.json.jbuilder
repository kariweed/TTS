json.array!(@pets) do |pet|
  json.extract! pet, :id, :animal, :favorite
  json.url pet_url(pet, format: :json)
end
