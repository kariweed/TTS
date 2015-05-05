json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :plot, :rating, :complete
  json.url book_url(book, format: :json)
end
