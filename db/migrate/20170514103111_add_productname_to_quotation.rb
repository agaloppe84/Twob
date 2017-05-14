class AddProductnameToQuotation < ActiveRecord::Migration[5.0]
  def change
    add_column :quotations, :product_name, :string
  end
end
