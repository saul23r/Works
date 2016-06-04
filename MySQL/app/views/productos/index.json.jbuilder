json.array!(@productos) do |producto|
  json.extract! producto, :id, :name, :descripcion
  json.url producto_url(producto, format: :json)
end
