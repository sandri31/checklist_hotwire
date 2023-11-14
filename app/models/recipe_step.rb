class RecipeStep < ApplicationRecord
  belongs_to :recipe, optional: true
end
