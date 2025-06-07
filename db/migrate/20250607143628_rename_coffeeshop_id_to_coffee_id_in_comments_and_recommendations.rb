class RenameCoffeeshopIdToCoffeeIdInCommentsAndRecommendations < ActiveRecord::Migration[7.2]
  def change
    rename_column :comments, :coffeeshop_id, :coffee_id
    rename_column :recommendations, :coffeeshop_id, :coffee_id
  end
end
