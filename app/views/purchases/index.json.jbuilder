json.array!(@purchases) do |purchase|
  json.extract! purchase, :date, :subtotal, :tax, :total, :customer_id, :company_id
  json.url purchase_url(purchase, format: :json)
end
