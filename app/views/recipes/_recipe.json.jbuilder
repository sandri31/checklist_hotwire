json.extract! recipe, :id, :description, :name, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
