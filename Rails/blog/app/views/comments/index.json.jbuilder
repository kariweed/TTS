json.array!(@comments) do |comment|
  json.extract! comment, :id, :author, :entry
  json.url comment_url(comment, format: :json)
end
