json.array!(@sales) do |sale|
  json.extract! sale, :date, :subtotal, :tax, :total, :customer_id, :company_id
  json.url sale_url(sale, format: :json)
end
