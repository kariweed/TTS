json.array!(@guests) do |guest|
  json.extract! guest, :id, :f_name, :l_name, :table
  json.url guest_url(guest, format: :json)
end
