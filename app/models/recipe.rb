class Recipe < ApplicationRecord
  has_many :recipe_steps, dependent: :destroy
  accepts_nested_attributes_for :recipe_steps,
                                reject_if: :all_blank, allow_destroy: true
end
