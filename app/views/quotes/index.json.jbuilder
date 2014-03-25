json.array!(@quotes) do |quote|
  json.extract! quote, :id, :body, :author
  json.url quote_url(quote, format: :json)
end
