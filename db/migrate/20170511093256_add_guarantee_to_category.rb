class AddGuaranteeToCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :guarantee, :integer
  end
end
