json.array!(@products) do |product|
  json.extract! product, :id, :produkt_kod, :nazov, :farba, :velkost, :mnozstvo
  json.url product_url(product, format: :json)
end
