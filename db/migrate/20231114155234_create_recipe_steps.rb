class CreateRecipeSteps < ActiveRecord::Migration[7.1]
  def change
    create_table :recipe_steps do |t|
      t.string :description
      t.belongs_to :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
