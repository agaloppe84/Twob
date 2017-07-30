class AddProductRefToQuotation < ActiveRecord::Migration[5.0]
  def change
    add_reference :quotations, :product, foreign_key: true
  end
end
