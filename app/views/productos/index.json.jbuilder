json.array!(@productos) do |producto|
  json.extract! producto, :id, :Precio, :Cantidad
  json.url producto_url(producto, format: :json)
end
