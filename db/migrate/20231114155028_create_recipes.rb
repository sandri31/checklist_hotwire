class CreateRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :recipes do |t|
      t.string :description
      t.string :name

      t.timestamps
    end
  end
end
