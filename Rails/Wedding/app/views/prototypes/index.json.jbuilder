json.array!(@prototypes) do |prototype|
  json.extract! prototype, :id, :index, :about
  json.url prototype_url(prototype, format: :json)
end
