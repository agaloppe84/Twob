class AddSubcategoryToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :sub_category, :integer
  end
end
