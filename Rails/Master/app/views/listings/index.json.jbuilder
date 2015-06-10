json.array!(@listings) do |listing|
  json.extract! listing, :id, :account_owner, :account_title, :account_number, :account_balance, :web_address
  json.url listing_url(listing, format: :json)
end
