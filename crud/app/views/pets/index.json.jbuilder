json.array!(@pets) do |pet|
  json.extract! pet, :id, :nombre, :edad, :dueno
  json.url pet_url(pet, format: :json)
end
