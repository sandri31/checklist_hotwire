class RecipeStepsController < ApplicationController
  before_action :setup_recipe

  def new; end

  def destroy
    @project = Project.new(tasks: [Task.new])
  end

  private

  def setup_recipe
    @recipe = Recipe.new(recipe_steps: [RecipeStep.new])
  end
end