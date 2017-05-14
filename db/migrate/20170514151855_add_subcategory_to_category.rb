class AddSubcategoryToCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :has_sub_category, :boolean, default: false
  end
end
