json.array!(@genre_entities) do |genre_entity|
  json.extract! genre_entity, :id, :Name, :Description
  json.url genre_entity_url(genre_entity, format: :json)
end
