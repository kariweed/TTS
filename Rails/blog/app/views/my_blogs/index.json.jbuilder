json.array!(@my_blogs) do |my_blog|
  json.extract! my_blog, :id, :title, :author, :post
  json.url my_blog_url(my_blog, format: :json)
end
