class AddFoodToRsvp < ActiveRecord::Migration
  def change
    change_table :guests do |t|
      t.string :food_choice
      t.string :allergies
    end
  end
end
