class AddStepNumberToRecipeSteps < ActiveRecord::Migration[7.1]
  def change
    add_column :recipe_steps, :step_number, :integer
  end
end
