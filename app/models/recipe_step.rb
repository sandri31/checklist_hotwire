class RecipeStep < ApplicationRecord
  belongs_to :recipe, optional: true
  before_validation :set_step_number, on: :create

  def set_step_number
    self.step_number = recipe.recipe_steps.count + 1
  end
end
